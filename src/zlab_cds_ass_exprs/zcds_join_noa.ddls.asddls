@AbapCatalog.sqlViewName: 'ZCDS_JOIN'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join entre booking y flight'
define view ZCDS_JOIN_NOA
  as select from /dmo/booking as booking
    inner join /dmo/flight as flight
      on booking.carrier_id = flight.carrier_id
{
  key booking.booking_id     as BookingID,
      flight.flight_date     as FlightDate,
      flight.price           as Price,
      flight.currency_code   as CurrencyCode
}
