@AbapCatalog.entityBuffer.definitionAllowed: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista CDS con Buffer sobre /dmo/customer'

define view entity ZCDS_CUSTOMER_buffer_noa
  as select from /dmo/customer
{
  key customer_id,
      first_name,
      last_name,
      city,
      country_code,
      email_address
}
