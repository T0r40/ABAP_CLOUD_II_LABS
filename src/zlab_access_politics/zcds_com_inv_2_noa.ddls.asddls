@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vista sin auditoría para control por usuario'
@Metadata.allowExtensions: true
define view entity zcds_com_inv_2_noa
  as select from zdt_com_inv_noa
{
  key invoice_id,
      customer_name,
      inv_amount,
      currency,
      department,
      created_by,
      create_date
}
