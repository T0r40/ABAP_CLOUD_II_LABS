@AbapCatalog.sqlViewName: 'ZSALES_CONVERTE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversión de precios a moneda destino'
define view ZSALES_CONVERTED_NOA
  with parameters
    p_target_currency    : abap.cuky,
    p_exchange_rate_date : abap.dats
  as select from /dmo/booking
{
  key currency_code as CurrencyCode,

      currency_conversion(
        amount              => flight_price,
        source_currency     => currency_code,
        target_currency     => $parameters.p_target_currency,
        exchange_rate_type  => 'M',
        exchange_rate_date  => $parameters.p_exchange_rate_date,
        error_handling      => 'SET_TO_NULL'
      )             as FlightPrice_Converted
}
