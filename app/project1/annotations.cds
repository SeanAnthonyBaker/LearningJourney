using TrackLearningService as service from '../../srv/service';

annotate service.epic with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : epic_nm,
            Label : '{i18n>Stories}',
        },]
);
annotate service.epic with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ListofStories',
            Target : 'stories/@UI.LineItem#ListofStories',
        },
    ]
);
annotate service.stories with @(
    UI.LineItem #ListofStories : [
        {
            $Type : 'UI.DataField',
            Value : story_nm,
            Label : '{i18n>Stories}',
        },]
);
annotate service.epic with @(
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.stories with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>LearningRequirements}',
        TypeNamePlural : '',
    }
);
annotate service.stories with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'UseCases',
            Target : 'use_cases/@UI.LineItem#UseCases',
        },
    ]
);
annotate service.use_cases with @(
    UI.LineItem #UseCases : [
        {
            $Type : 'UI.DataField',
            Value : stories.use_cases.use_case_nm,
            Label : '{i18n>Usecasetitle}',
        },]
);

annotate service.epic with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'LearningJourney',
            ID : 'LearningJourney',
            Target : '@UI.FieldGroup#LearningJourney',
        },
    ],
    UI.FieldGroup #LearningJourney : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : epic_short_nm,
                Label : 'Short Name',
            },],
    }
);
annotate service.stories with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Tasks for ',
            ID : 'Tasksfor',
            Target : '@UI.FieldGroup#Tasksfor',
        },
    ],
    UI.FieldGroup #Tasksfor : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : epics.stories.story_nm,
            },],
    }
);
