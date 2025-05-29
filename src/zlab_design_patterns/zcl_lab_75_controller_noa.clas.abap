CLASS zcl_lab_75_controller_noa DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run
      IMPORTING
        VALUE(iv_carrier_id) TYPE /dmo/flight-carrier_id
        VALUE(io_out)        TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS zcl_lab_75_controller_noa IMPLEMENTATION.

  METHOD run.
    DATA lo_model TYPE REF TO zcl_lab_73_model_noa.
    DATA lo_view  TYPE REF TO zcl_lab_74_view_noa.
    DATA lt_flights TYPE /dmo/t_flight.

    CREATE OBJECT lo_model.
    CREATE OBJECT lo_view.

    lt_flights = lo_model->get_flights_by_carrier( iv_carrier_id ).
    lo_view->display_flights( it_flights = lt_flights io_out = io_out ).
  ENDMETHOD.

ENDCLASS.
