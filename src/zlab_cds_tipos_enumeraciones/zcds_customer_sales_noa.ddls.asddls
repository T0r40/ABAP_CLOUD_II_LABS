@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Sales con tipos definidos por usuario'
define view entity zcds_customer_sales_noa
  as select from /dmo/customer
{
  key customer_id,
      last_name,
      first_name,

      // Campo tipo enum, fijo en '04' (Delivered)
      cast( '04' as zty_enum_st_order_noa ) as StatusSale,

      // Campo tipo char(10) desde first_name
      cast( first_name as zty_cds_st_order_noa ) as SaleName
}
