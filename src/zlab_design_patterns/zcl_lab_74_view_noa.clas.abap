CLASS zcl_lab_74_view_noa DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS display_flights
      IMPORTING
        it_flights TYPE /dmo/t_flight
        io_out     TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS zcl_lab_74_view_noa IMPLEMENTATION.

  METHOD display_flights.
    DATA lv_line TYPE string.

    LOOP AT it_flights INTO DATA(ls_flight).
      lv_line = |{ ls_flight-carrier_id } - { ls_flight-connection_id } - { ls_flight-flight_date }|.
      io_out->write( lv_line ).
    ENDLOOP.

    IF it_flights IS INITIAL.
      io_out->write( 'No flights found for the given CARRIER_ID.' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
