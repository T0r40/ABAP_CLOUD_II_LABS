@AbapCatalog.sqlViewName: 'ZCDS_AIRPORT_1'
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airports in US'
define view ZCDS_AIRPORT_1_NOA
  as select from /dmo/airport
{
  key airport_id,
      name,
      country
}
