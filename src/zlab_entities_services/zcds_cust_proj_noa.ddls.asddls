@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección de Customer Root'
@Metadata.allowExtensions: true
define root view entity ZCDS_CUST_PROJ_NOA
  as projection on ZCDS_CUSTOMER_ROOT_NOA
{
  key CustomerId,
      FirstName,
      LastName,
      City,
      _Bookings,
      _Airports
}
