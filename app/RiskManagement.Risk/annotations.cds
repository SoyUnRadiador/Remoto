using RiskManagementService as service from '../../srv/service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Prio',
            Value : Prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Descr',
            Value : Descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : Impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Criticaly',
            Value : Criticaly,
        },
        {
            $Type : 'UI.DataField',
            Value : Supplier_BusinessPartner,
            Label : 'Supplier_BusinessPartner',
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Prio',
                Value : Prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Descr',
                Value : Descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : Impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Criticaly',
                Value : Criticaly,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier_BusinessPartner',
                Value : Supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : mitigations_ID,
                Label : 'mitigations_ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier.BusinessPartnerIsBlocked,
                Label : 'BusinessPartnerIsBlocked',
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
annotate service.Risks with {
    Supplier @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_BusinessPartner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Supplier_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerIsBlocked',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
