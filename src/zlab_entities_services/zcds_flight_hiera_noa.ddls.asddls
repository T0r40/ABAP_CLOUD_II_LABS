@AbapCatalog.sqlViewName: 'ZCDS_FLIGHT_HIE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo jerárquico base agency-customer'
define view ZCDS_FLIGHT_HIERA_NOA
  as select from /dmo/travel as travel
    association [1..1] to /dmo/travel as _Agency
      on travel.agency_id = _Agency.agency_id
{
  key travel.agency_id   as AgencyId,
      travel.customer_id as CustomerId,
      _Agency
}
