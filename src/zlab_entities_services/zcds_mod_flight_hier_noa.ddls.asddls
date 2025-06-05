@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Simulación jerárquica de agency-customer'
define view entity ZCDS_MOD_FLIGHT_HIER_NOA
  as select from /dmo/travel as travel
    association [0..1] to /dmo/travel as _Parent
      on travel.agency_id = _Parent.agency_id
         and travel.customer_id <> _Parent.customer_id
{
  key travel.agency_id   as AgencyId,
      travel.customer_id as CustomerId,
      _Parent.customer_id as ParentCustomerId
}



