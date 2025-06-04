@AbapCatalog.sqlViewName: 'ZCDS_EXPLICIT_J'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista con join explícito entre customer y booking'
define view ZCDS_EXPLICIT_JOIN_NOA
  as select from /dmo/customer as customer
    inner join /dmo/booking as booking
      on customer.customer_id = booking.customer_id
{
  key customer.customer_id as CustomerID,
      customer.first_name  as FirstName,
      customer.last_name   as LastName,
      booking.booking_date as BookingDate
}
