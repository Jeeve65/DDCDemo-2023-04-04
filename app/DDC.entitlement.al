entitlement "DDCFull"
{
    Type = PerUserOfferPlan;
    Id = 'MyId';

    ObjectEntitlements = DDCFull;
}

entitlement "DDCUnlicensed"
{
    Type = Unlicensed;
    ObjectEntitlements = DDCFull;
}