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
        {
            $Type : 'UI.DataField',
            Label : 'epic_short_nm',
            Value : epic_short_nm,
        },
        {
            $Type : 'UI.DataField',
            Label : 'epic_abbr',
            Value : epic_abbr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'epic_id_txt',
            Value : epic_id_txt,
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
                Label : 'epic_short_nm',
                Value : epic_short_nm,
            },
            {
                $Type : 'UI.DataField',
                Label : 'epic_abbr',
                Value : epic_abbr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'epic_id_txt',
                Value : epic_id_txt,
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
    ]
);
