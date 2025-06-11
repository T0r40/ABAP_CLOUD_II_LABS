@AbapCatalog.sqlViewName: 'ZCUSMETUSER'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista CDS para Customer con metadatos y filtro por ciudad'
@Metadata.allowExtensions: true

define view zcds_customer_meta_noa
  with parameters
    pCity: abap.char(40)
  as select from /dmo/customer
{
  key customer_id,
  first_name,
  last_name,
  city,
  country_code,
  email_address
}
where city = :pCity
