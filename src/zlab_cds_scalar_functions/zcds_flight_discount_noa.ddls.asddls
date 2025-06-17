@AbapCatalog.sqlViewName: 'ZVCFLGTDISCUSR'
@EndUserText.label: 'Vista con cálculo de descuento en vuelos'

define view zcds_flight_discount_user
  as select from /dmo/flight as flight
{
  key flight.carrier_id,
      flight.currency_code,
      flight.price
}
