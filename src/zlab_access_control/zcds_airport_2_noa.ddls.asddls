@AbapCatalog.sqlViewName: 'ZCDS_AIRPORT_2'
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airports in DE'
define view ZCDS_AIRPORT_2_NOA
  as select from /dmo/airport
{
  key airport_id,
      name,
      country
}
