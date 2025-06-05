@EndUserText.label: 'Entidad personalizada de detalles de cliente'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CUSTOM_DETAIL_NOA'
define custom entity ZCDS_CUSTOM_DETAIL_NOA
{
  key customer_id   : /dmo/customer_id;
      phone_number  : /dmo/phone_number;
      email_address : /dmo/email_address;
}
