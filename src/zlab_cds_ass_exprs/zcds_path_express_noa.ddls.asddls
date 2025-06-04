@AbapCatalog.sqlViewName: 'ZCDS_PATH_EXPRE'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociación filtrada por connection_id = 0001'
define view ZCDS_PATH_EXPRESS_NOA
  as select from /dmo/booking as booking
    association [0..*] to /dmo/flight as _Flight
      on booking.carrier_id = _Flight.carrier_id
{
  key booking.booking_id     as BookingID,
  key booking.travel_id      as TravelID,

  // Path expression con filtro: accede solo a vuelos con connection_id = '0001'
  _Flight[connection_id = '0001'].seats_occupied as SeatsOccupied
}
