@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'VDM for Flight User'

@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
@Search.searchable: true

define view entity ZCDS_VDM_FLIGHT_NOA
  as select from /dmo/flight
  association [0..*] to /dmo/carrier as _Carrier on $projection.carrier_id = _Carrier.carrier_id
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @Search.ranking: #MEDIUM
  key carrier_id,

      connection_id,
      flight_date,
      price,
      currency_code,
      plane_type_id,
      seats_max,
      seats_occupied,

      _Carrier
}
