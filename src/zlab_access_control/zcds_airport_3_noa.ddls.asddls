@AbapCatalog.sqlViewName: 'ZCDS_AIRPORT_3'
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airport MUC with inherited restrictions'
define view ZCDS_AIRPORT_3_NOA
  as select from /dmo/airport
{
  key airport_id,
      name,
      country
}
where airport_id = 'MUC'
