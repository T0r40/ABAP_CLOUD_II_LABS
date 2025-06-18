@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View with Virtual Discount'
@Metadata.allowExtensions: true
define root view entity zcds_proj_virtual_disc_noa
  as projection on zcds_virtual_discount_noa
{
  key carrier_id,
  key connection_id,
  key flight_date,
  price,
  currency_code,
  RealPrice
}
