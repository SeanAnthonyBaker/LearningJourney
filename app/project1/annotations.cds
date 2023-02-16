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
            Value : story_nm,
            Label : 'story_nm',
        },]
);
annotate service.epic with {
    epic_id @Common.Text : epic_short_nm
};
annotate service.epic with @(
    UI.HeaderInfo : {
        TypeName : 'Story',
        TypeNamePlural : 'Stories',
        Title : {
            $Type : 'UI.DataField',
            Value : epic_short_nm,
        },
    }
);
annotate service.stories with @(
    UI.HeaderInfo : {
        TypeName : 'Learning Requirements',
        TypeNamePlural : 'use_cases',
    }
);
annotate service.stories with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'UseCases',
            ID : 'UseCases',
            Target : 'use_cases/@UI.LineItem#UseCases',
        },
    ]
);
annotate service.use_cases with @(
    UI.LineItem #UseCases : [
        {
            $Type : 'UI.DataField',
            Value : stories.use_cases.use_case_id,
            Label : 'use_case_id',
        },{
            $Type : 'UI.DataField',
            Value : stories.use_cases.use_case_nm,
            Label : 'use_case_nm',
        },]
);
