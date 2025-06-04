@AbapCatalog.sqlViewName: 'ZCDS_PARAM_ASSO'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociación con parámetro a carrier'
define view ZCDS_PARAM_ASSOC_NOA
  with parameters
    p_carrier_id : /dmo/carrier_id
  as select from /dmo/flight as flight
    association [0..1] to /dmo/carrier as _Carrier
      on  flight.carrier_id = _Carrier.carrier_id
      and _Carrier.carrier_id = $parameters.p_carrier_id
{
  key flight.carrier_id    as CarrierID,
  key flight.connection_id as ConnectionID,
  key flight.flight_date   as FlightDate,
      _Carrier.name        as CarrierName
}
