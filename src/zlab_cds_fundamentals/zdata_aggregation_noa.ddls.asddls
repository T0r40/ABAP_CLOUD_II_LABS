@AbapCatalog.sqlViewName: 'ZDATA_AGGREGATI'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agregación de precios de vuelos por moneda'
define view ZDATA_AGGREGATION_NOA
  as select from /dmo/booking
{
  key currency_code       as CurrencyCode,
      sum( flight_price ) as FlightPrice
}
group by
  currency_code
