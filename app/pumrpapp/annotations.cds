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
    UI.SelectionFields : [
        L4Process,
        VS,
        MAR,
        MARDesc,
        roles.ER,
        roles.DAR,
        roles.DARDesc,
        roles.OrgSet,
        roles.Persona,
    ],
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
annotate service.pumrphead with {
    VS @Common.Label : 'Value Stream'
};

annotate service.pumrphead with {
    L4Process @Common.Label : 'L4 Process ID'
};

annotate service.pumrphead with {
    MAR @Common.Label : 'Master Role'
};

annotate service.pumrpline with {
    ER @Common.Label : 'Enterprise Role'
};

annotate service.pumrpline with {
    OrgSet @Common.Label : 'Org Set'
};

annotate service.pumrphead with {
    MARDesc @Common.Label : 'Master Role Description'
};

annotate service.pumrpline with {
    DARDesc @(
        Common.Label : 'Derived Role',
        Common.ExternalID : DAR,
    )
};

annotate service.pumrpline with {
    DAR @(
        Common.Text : DARDesc,
        Common.Label : 'Derived Role ID',
    )
};

annotate service.pumrpline with {
    Persona @Common.Label : 'Persona'
};

    annotate service.pumrphead with @(Capabilities.DeleteRestrictions: 
    { $Type: 'Capabilities.DeleteRestrictionsType', Deletable: false });

    annotate service.pumrpline with @(Capabilities.DeleteRestrictions: 
    { $Type: 'Capabilities.DeleteRestrictionsType', Deletable: false });
