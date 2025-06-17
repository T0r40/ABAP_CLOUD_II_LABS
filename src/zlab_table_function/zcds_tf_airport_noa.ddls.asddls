@AbapCatalog.sqlViewName: 'ZVTFARUSER'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista CDS que consume Table Function de aeropuertos'

define view zcds_tf_airport_noa
  with parameters
    @Environment.systemField: #CLIENT
    pClient : abap.clnt,
    pCity   : /dmo/city
  as select from ZTF_AIRPORTS_NOA( pClient: $parameters.pClient, pCity: $parameters.pCity ) as tf
  inner join /dmo/customer as cust
    on tf.city = cust.city
{
  key tf.airport_id,
      tf.name,
      tf.city,
      tf.country,
      cust.first_name
}
