@AbapCatalog.sqlViewName: 'ZVRTAIRPUSER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista raíz de aeropuertos con texto de ciudad'

define root view zcds_root_airpot_noa
  as select from /dmo/airport as airport
    association [1..1] to zcds_city_assoc_user as _CityAssoc
     on airport.city   = _CityAssoc.city
{
  key airport.airport_id,
      airport.name,
      airport.city,
      airport.country,
      _CityAssoc
}
