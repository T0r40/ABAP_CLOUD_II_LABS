@AbapCatalog.sqlViewName: 'ZVCTXTUSER'
@EndUserText.label: 'Vista de textos de ciudades'
define view zcds_city_text_noa
  as select from zcity_texts_noa
{
  key client,
  key airport_id,
      city as CityText
}
