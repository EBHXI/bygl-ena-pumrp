using bygl.ena.pumrpSrv as service from '../../srv/service';
annotate service.pumrphead with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Value Stream',
                Value : VS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Master Role',
                Value : MAR,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Master Role Description',
                Value : MARDesc,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Roles',
            Label : 'Roles',
            Target : 'roles/@UI.LineItem'
        }

    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'L4 Process',
            Value : L4Process,
        },
        {
            $Type : 'UI.DataField',
            Label : 'L4 Description',
            Value : L4Desc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Value Stream',
            Value : VS,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Master Role',
            Value : MAR,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Master Role Description',
            Value : MARDesc,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : MAR,
        },
        TypeName : '',
        Description : {
            $Type : 'UI.DataField',
            Value : MARDesc,
        },
    },
    UI.DataPoint #MAR : {
        $Type : 'UI.DataPointType',
        Value : MAR,
        Title : 'MAR',
    },
    UI.DataPoint #MARDesc : {
        $Type : 'UI.DataPointType',
        Value : MARDesc,
        Title : 'MARDesc',
    },
    UI.DataPoint #VS : {
        $Type : 'UI.DataPointType',
        Value : VS,
        Title : 'VS',
    },
    UI.HeaderFacets : [
        
    ]
);

annotate service.ErCntryCWIDs with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : ER,
        },
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CWID',
            Value : CWID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : Country,
        },
        ],
);

annotate service.pumrpline with @(
     UI.Facets : [
         {
            $Type : 'UI.ReferenceFacet',
            ID : 'Users',
            Label : 'Users',
            Target : 'users/@UI.LineItem'
        }
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Deriver role',
            Value : DAR,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Deriver role Description',
            Value : DARDesc,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Org Set',
            Value : OrgSet,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Enterprise Role',
            Value : ER,
        }
        ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : ER,
        }
    },
);