@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Virtual Discount CDS Root View'
define root view entity zcds_virtual_discount_noa
  as select from /dmo/flight
{
  key carrier_id,
  key connection_id,
  key flight_date,
  price,
  currency_code,
  // Campo virtual
  @ObjectModel.virtualElementCalculatedBy: 'ZCL_VIRTUAL_DISCOUNT_NOA'
  cast( '0.00' as abap.dec(16,2) ) as RealPrice
}
