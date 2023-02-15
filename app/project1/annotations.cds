using TrackLearningService as service from '../../srv/service';

annotate service.epic with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'epic_id',
            Value : epic_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'epic_nm',
            Value : epic_nm,
        },
    ]
);
annotate service.epic with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'epic_id',
                Value : epic_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'epic_nm',
                Value : epic_nm,
            },
            {
                $Type : 'UI.DataField',
                Value : epic_abbr,
                Label : 'epic_abbr',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'List of Stories',
            ID : 'ListofStories',
            Target : 'stories/@UI.LineItem#ListofStories',
        },
    ]
);
annotate service.stories with @(
    UI.LineItem #ListofStories : [
        {
            $Type : 'UI.DataField',
            Value : story_id,
            Label : 'story_id',
        },{
            $Type : 'UI.DataField',
            Value : story_nm,
            Label : 'story_nm',
        },]
);
annotate service.epic with {
    epic_id @Common.Text : epic_short_nm
};
