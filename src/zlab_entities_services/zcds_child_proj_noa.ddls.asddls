@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección de Bookings del cliente'
define view entity ZCDS_CHILD_PROJ_NOA
  as projection on ZCDS_CUST_BOOK_NOA
{
  key CustomerId,
  key TravelId,
  key BookingId,
      _Customer
}
