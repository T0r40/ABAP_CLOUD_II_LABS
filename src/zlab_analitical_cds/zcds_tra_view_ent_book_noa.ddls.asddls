@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Transient View for Book User'
@Analytics.query: true
define view entity ZCDS_TRA_VIEW_ENT_BOOK_NOA
  as select from ZCDS_AN_DATA_FLIGHT_NOA
{
      @AnalyticsDetails.query.axis: #FREE
  key carrier_id  as TravelId,

      @AnalyticsDetails.query.axis: #ROWS
  key booking_id  as BookingId,

      @AnalyticsDetails.query.axis: #COLUMNS
      customer_id as CustomerId
}
