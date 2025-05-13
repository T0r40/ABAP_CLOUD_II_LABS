CLASS zcl_lab_04_ejec_noa DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

    METHODS:
      process_flight_interface
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_customer_lookup
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_airport_lookup
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_factory_demo
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zcl_lab_04_ejec_noa IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    process_flight_interface( io_out = out ).
    process_customer_lookup( io_out = out ).
    process_airport_lookup( io_out = out ).
    process_factory_demo( io_out = out ).
  ENDMETHOD.

  METHOD process_flight_interface.
    DATA(lo_flight) = NEW zcl_lab_26_flights_noa( ).
    lo_flight->set_connection_id( iv_conn_id = '0400' ).

    DATA(lv_conn_id) = lo_flight->get_connection_id( ).

    io_out->write( |Conexión: { lv_conn_id }| ).

  ENDMETHOD.

  METHOD process_customer_lookup.

    DATA(lo_flights) = NEW zcl_lab_26_flights_noa( ).

    DATA(ls_customer) = lo_flights->get_customer_data(
                          iv_customer_id = '00000001' ).

    io_out->write( |Nombre: { ls_customer-first_name }, Apellido: { ls_customer-last_name }| ).
  ENDMETHOD.

  METHOD process_airport_lookup.
    DATA(lo_flights) = NEW zcl_lab_26_flights_noa( ).

    DATA(ls_airport) = lo_flights->get_airport_data(
                         iv_airport_id = 'FRA' ).

    io_out->write( |Aeropuerto: { ls_airport-name } ({ ls_airport-city })| ).
  ENDMETHOD.

  METHOD process_factory_demo.

    DATA lo_factory TYPE REF TO zcl_lab_27_factory_noa.
    lo_factory = NEW zcl_lab_28_logistics_noa( ).


    DATA(lv_out)   = lo_factory->merchandise_output( ).
    DATA(lv_prod)  = lo_factory->production_line( ).
    DATA(lv_input) = lo_factory->input_products( ).

    io_out->write( |Salida: { lv_out }| ).
    io_out->write( |Producción: { lv_prod }| ).
    io_out->write( |Entrada: { lv_input }| ).
  ENDMETHOD.

ENDCLASS.
