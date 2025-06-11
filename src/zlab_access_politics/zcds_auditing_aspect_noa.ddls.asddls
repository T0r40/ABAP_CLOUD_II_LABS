@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Vista CDS con auditoría para ZDT_COM_INV_NOA'
@Metadata.allowExtensions: true
define view entity zcds_auditing_aspect_noa
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
