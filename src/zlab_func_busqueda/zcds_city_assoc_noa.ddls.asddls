@AbapCatalog.sqlViewName: 'ZVCASSOCUSER'
@EndUserText.label: 'Vista CDS de clientes con ciudad asociada'

define view zcds_city_assoc_user
  as select from /dmo/customer as cust
  association [1..1] to zcds_city_text_noa as _CityTextAssoc on  cust.city   = _CityTextAssoc.CityText
{
  key cust.customer_id,
      cust.first_name,
      cust.city,
      _CityTextAssoc
}
