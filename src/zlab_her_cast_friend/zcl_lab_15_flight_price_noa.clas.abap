CLASS zcl_lab_15_flight_price_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: mt_flights TYPE STANDARD TABLE OF /dmo/flight WITH DEFAULT KEY.

    METHODS:
      add_price
        IMPORTING
          is_flight TYPE /dmo/flight.
ENDCLASS.



CLASS ZCL_LAB_15_FLIGHT_PRICE_NOA IMPLEMENTATION.


  METHOD add_price.
    APPEND is_flight TO mt_flights.
  ENDMETHOD.
ENDCLASS.
