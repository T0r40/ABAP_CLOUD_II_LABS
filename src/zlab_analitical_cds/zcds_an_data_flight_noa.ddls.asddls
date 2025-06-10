@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Analytics Cube for Flight User Data'

@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE

define view entity ZCDS_AN_DATA_FLIGHT_NOA
  as select from /dmo/booking
  association [0..*] to ZCDS_VDM_FLIGHT_NOA as _Flight on $projection.carrier_id = _Flight.carrier_id
{
      // Todas las columnas de la tabla booking
  key booking_id,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,

      // Agregación sobre el precio del vuelo desde la vista asociada
      @DefaultAggregation: #SUM
      _Flight.price as flight_price,

      // Otras columnas opcionales de la vista asociada (puedes extender)
      _Flight.currency_code
}
