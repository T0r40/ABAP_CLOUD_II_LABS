@AbapCatalog.sqlViewName: 'ZVCITYVHUSER'
@EndUserText.label: 'Ayuda de búsqueda para ciudad con textos'
@Search.searchable: true
@ObjectModel.dataCategory: #VALUE_HELP

define view zcds_city_vh_user
  as select from zcds_city_assoc_user
{
  key city,

  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  city as Ciudad,

  @Search.fuzzinessThreshold: 0.8
  @Search.defaultSearchElement: true
  _CityTextAssoc.CityText as CityText
}
