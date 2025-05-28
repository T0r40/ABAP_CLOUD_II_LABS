CLASS zcl_lab_61_travel_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_travel
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id
      RETURNING
        VALUE(rv_flight) TYPE /dmo/flight.



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel_noa IMPLEMENTATION.
  METHOD get_travel.

    SELECT SINGLE * FROM /dmo/flight
      WHERE carrier_id = @iv_carrier_id
            INTO @rv_flight.

    TEST-SEAM alter_flight.
      IF iv_carrier_id = '00000042'.
        rv_flight-price = 1.
        rv_flight-currency_code = 'EUR'.
      ENDIF.
    END-TEST-SEAM.

  ENDMETHOD.

ENDCLASS.
