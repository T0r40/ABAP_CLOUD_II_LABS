CLASS zcl_lab_05_flight_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      check_flight_exists
        IMPORTING
          iv_carrid        TYPE /dmo/flight-carrier_id
          iv_connid        TYPE /dmo/flight-connection_id
        RETURNING
          VALUE(rv_exists) TYPE abap_bool.
ENDCLASS.

CLASS zcl_lab_05_flight_noa IMPLEMENTATION.

  METHOD check_flight_exists.
    SELECT SINGLE carrier_id FROM /dmo/flight
      WHERE carrier_id = @iv_carrid
        AND connection_id = @iv_connid
        INTO @DATA(lv_carrid).

    IF sy-subrc = 0.
      rv_exists = abap_true.
    ELSE.
      rv_exists = abap_false.
    ENDIF.
  ENDMETHOD.

ENDCLASS.

