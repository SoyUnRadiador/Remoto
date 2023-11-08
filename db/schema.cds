namespace RiskManagement;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

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

entity Risks : managed
{
    key ID : UUID;
    Title : String(100);
    Prio : String(5);
    Descr : String(100);
    Impact : Integer;
    Criticaly : Integer;
    mitigations : Association to one Mitigations;
    Supplier : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Mitigations : managed
{
    key ID : UUID;
    Description : String(100);
    Owner : String(100);
    TimeLine : String(100);
    risks : Association to many Risks on risks.mitigations = $self;
}
