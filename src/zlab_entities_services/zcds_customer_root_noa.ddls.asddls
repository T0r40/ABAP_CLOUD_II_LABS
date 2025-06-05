@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad raíz extendida: clientes y reservas'
@Metadata.allowExtensions: true
define root view entity ZCDS_CUSTOMER_ROOT_NOA
  as select from /dmo/customer
    composition [*] of ZCDS_CUST_BOOK_NOA as _Bookings
    association [1..*] to /dmo/airport        as _Airports
      on /dmo/customer.city = _Airports.city
{
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      city        as City,

      _Bookings,
      _Airports
}

