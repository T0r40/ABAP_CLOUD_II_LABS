@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad hija: bookings de un cliente'
@Metadata.allowExtensions: true
define view entity ZCDS_CUST_BOOK_NOA
  as select from /dmo/booking
    association to parent ZCDS_CUSTOMER_ROOT_NOA as _Customer
      on $projection.CustomerId = _Customer.CustomerId
{
  key customer_id as CustomerId,
  key travel_id   as TravelId,
  key booking_id  as BookingId,
      _Customer
}
