@AbapCatalog.sqlViewName: 'ZCDS_AIRPORT_4'
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airport View with Flight Type'
define view ZCDS_AIRPORT_4_NOA
  as select from /dmo/airport
{
  key airport_id,
      name,
      country,

  cast( '01' as zde_flight_type_noa ) as FlightType
}
