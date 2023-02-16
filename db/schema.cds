namespace TrackLearning;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}   
from '@sap/cds/common';

entity epics
{
    key epic_id : Integer;
    epic_nm : String(100);
    epic_short_nm : String(40);
    epic_abbr : String(20);
    epic_id_txt : String(15);
    stories : Composition of many stories on stories.epics = $self;
}

entity stories
{
    key story_id : Integer;
    story_nm : String(100);
    epics : Association to one epics;
    use_cases : Composition of many use_cases on use_cases.stories = $self;
}

entity use_cases
{
    key use_case_id : Integer;
    use_case_nm : String(150);
    stories : Association to one stories;
    learning_assignments : Association to many learning_assignments on learning_assignments.use_cases = $self;
}

entity developers
{
    key developer_id : Integer;
    developer_nm : String(100);
    developer_psw : String(100);
    developer_email_addr : String(100);
    learning_assignments : Association to many learning_assignments on learning_assignments.developers = $self;
}

entity learning_assignments
{
    key assignment_id : Integer;
    assignment_nm : String(100);
    assignment_start_dt : Date;
    assignment_end_dt : Date;
    assignment_status : assignment_status not null default #not_started
        @Core.Description : 'Defines the status of a learning assignment';
    use_cases : Association to one use_cases;
    developers : Association to one developers;
}

type assignment_status : Integer enum
{
    not_started = 0;
    planned = 1;
    ongoing = 2;
    completed = 3;
    terminated = 4;
}
