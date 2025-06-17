@AbapCatalog.sqlViewName: 'ZCDS_PROJ_AIRPO'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de proyección de aeropuertos con ayuda de búsqueda'
@Search.searchable: true

define view zcds_proj_airpot_noa
  as select from zcds_root_airpot_noa
{
  key airport_id,

  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  city,

  @ObjectModel.text.association: '_CityAssoc'
  _CityAssoc
}
