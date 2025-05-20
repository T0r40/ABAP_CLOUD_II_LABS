CLASS zcl_lab_03_ejec_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    METHODS:
      process_inheritance
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_view_grid
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_flight_prices
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_animal
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      test_classroom_creation
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_company_capital
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      obtener_capital_empresa
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_03_EJEC_NOA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    process_inheritance( io_out = out ).
    process_view_grid( io_out = out ).
    process_flight_prices( io_out = out ).
    process_animal( io_out = out ).
    test_classroom_creation( io_out = out ).
    process_company_capital( io_out = out ).
    obtener_capital_empresa( io_out = out ).
  ENDMETHOD.


  METHOD obtener_capital_empresa.
    DATA(lo_company) = NEW zcl_lab_23_company_noa( iv_capital = 500000 ).
    DATA(lo_collab) = NEW zcl_lab_25_collaborator_noa( ).
    DATA(lv_capital) = lo_collab->get_capital( io_company = lo_company ).
    io_out->write( |Capital obtenido desde el colaborador: { lv_capital }| ).
  ENDMETHOD.


  METHOD process_animal.
    DATA lo_animal TYPE REF TO zcl_lab_18_animal_noa.
    lo_animal = NEW zcl_lab_19_lion( ).

    DATA(lv_text) = lo_animal->walk( ).

    io_out->write( |¿Quién anda? { lv_text }| ).
  ENDMETHOD.


  METHOD process_company_capital.
    DATA(lo_company) = NEW zcl_lab_23_company_noa( iv_capital = 1000000 ).
    DATA(lo_partner) = NEW zcl_lab_24_partner_noa( ).
    DATA(lv_capital) = lo_partner->get_company_capital( io_company = lo_company ).
    io_out->write( |Capital de la empresa: { lv_capital }| ).
  ENDMETHOD.


  METHOD process_flight_prices.

    DATA ls_flight TYPE /dmo/flight.

    SELECT SINGLE * FROM /dmo/flight
    WHERE carrier_id = 'LH' AND connection_id = '0400'
    INTO @ls_flight.

    IF sy-subrc <> 0.
      io_out->write( 'No se encontró el vuelo de ejemplo.' ).
      RETURN.
    ENDIF.

    DATA(lo_base) = NEW zcl_lab_15_flight_price_noa( ).
    DATA(lo_disc) = NEW zcl_lab_16_price_discount_noa( ).
    DATA(lo_super) = NEW zcl_lab_17_super_discount_noa( ).

    lo_base->add_price( is_flight = ls_flight ).
    lo_disc->add_price( is_flight = ls_flight ).
    lo_super->add_price( is_flight = ls_flight ).

    io_out->write( |Precio original: { lo_base->mt_flights[ 1 ]-price }| ).
    io_out->write( |Precio con 10% descuento: { lo_disc->mt_flights[ 1 ]-price }| ).
    io_out->write( |Precio con 20% descuento: { lo_super->mt_flights[ 1 ]-price }| ).
  ENDMETHOD.


  METHOD process_inheritance.
    DATA(lo_system) = NEW zcl_lab_12_linux_noa( ).
    lo_system->get_architecture( IMPORTING ev_architecture = DATA(lv_architecture) ).
    io_out->write( |Arquitectura detectada: { lv_architecture }| ).
  ENDMETHOD.


  METHOD process_view_grid.
    DATA(lo_grid) = NEW zcl_lab_14_grid_noa(
                      iv_view_type = 'FULLSCREEN'
                      iv_box       = 'BOX_A' ).

    io_out->write( |Tipo de vista: { lo_grid->get_view_type( ) }| ).
    io_out->write( |Nombre de caja: { lo_grid->get_box( ) }| ).
  ENDMETHOD.


  METHOD test_classroom_creation.
    " ❌ Esto no compilará: CREATE PROTECTED impide crear instancias aquí
*   DATA(lo_room) = NEW zcl_lab_21_classroom_noa( ). " Error de compilación

    " ✅ Esto sí funciona: instanciamos una subclase
    DATA(lo_student) = NEW zcl_lab_22_student_noa( ).
    lo_student->assign_student( ).

    io_out->write( 'Instancia válida desde clase hija realizada.' ).
  ENDMETHOD.
ENDCLASS.
