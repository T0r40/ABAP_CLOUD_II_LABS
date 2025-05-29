CLASS zcl_lab_73_model_noa DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS get_flights_by_carrier
      IMPORTING iv_carrier_id     TYPE /dmo/flight-carrier_id
      RETURNING VALUE(rt_flights) TYPE /dmo/t_flight.
ENDCLASS.



CLASS zcl_lab_73_model_noa IMPLEMENTATION.

  METHOD get_flights_by_carrier.
    SELECT * FROM /dmo/flight
      WHERE carrier_id = @iv_carrier_id
      INTO TABLE @rt_flights.
  ENDMETHOD.

ENDCLASS.
