CLASS zcl_lab_01_ejec_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      process_person
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_flight_check
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_element_display
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      display_constants
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_student_birthdate
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_work_record

      ,

      process_account
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_noa IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    process_person( io_out = out ).
    process_flight_check( io_out = out ).
    process_element_display( io_out = out ).
    display_constants( io_out = out ).
    process_student_birthdate( io_out = out ).
    process_work_record( ).
    process_account( io_out = out ).
  ENDMETHOD.

  METHOD process_person.
    DATA(lo_person) = NEW zcl_lab_04_person( ).
    lo_person->set_age( im_age = 25 ).

    DATA(lv_age) = 0.
    lo_person->get_age( IMPORTING ex_age = lv_age ).

    io_out->write( |Edad de la persona: { lv_age }| ).
  ENDMETHOD.

  METHOD process_flight_check.
    DATA(lo_flight) = NEW zcl_lab_05_flight_noa( ).
    DATA(lv_result) = lo_flight->check_flight_exists(
                        iv_carrid = 'LH'
                        iv_connid = '0400' ).

    IF lv_result = abap_true.
      io_out->write( |El vuelo existe.| ).
    ELSE.
      io_out->write( |El vuelo no existe.| ).
    ENDIF.
  ENDMETHOD.

  METHOD process_element_display.
    DATA(lo_elements) = NEW zcl_lab_06_elements_noa( ).

    DATA(ls_object) = VALUE zcl_lab_06_elements_noa=>ty_elem_objects(
                        class    = 'ZCL_LAB_06_ELEMENTS_NOA'
                        instance = 'LO_ELEMENTS'
                        reference = 'MS_OBJECT' ).

    lo_elements->set_object( is_object = ls_object ).

    io_out->write( |Clase: { ls_object-class }| ).
    io_out->write( |Instancia: { ls_object-instance }| ).
    io_out->write( |Referencia: { ls_object-reference }| ).
  ENDMETHOD.

  METHOD display_constants.
    io_out->write( |Constante 1: { zcl_lab_06_elements_noa=>c_type_aircraft }| ).
    io_out->write( |Constante 2: { zcl_lab_06_elements_noa=>c_type_passenger }| ).
    io_out->write( |Constante 3: { zcl_lab_06_elements_noa=>c_type_flight }| ).
    io_out->write( |Constante 4: { zcl_lab_06_elements_noa=>c_type_gate }| ).
  ENDMETHOD.

  METHOD process_student_birthdate.
    DATA(lo_student) = NEW zcl_lab_07_student_noa( ).

    lo_student->set_birth_date( iv_birth_date = '20000101' ).

    io_out->write( |Fecha de nacimiento: { lo_student->birth_date }| ).

    " Intento de escritura directa (comentado, provocaría error)
    " lo_student->birth_date = '19991231'. " ❌ READ-ONLY
  ENDMETHOD.

  METHOD process_work_record.
    zcl_lab_08_work_record_noa=>open_new_record(
          iv_date       = '20250101'
          iv_first_name = 'Carla'
          iv_last_name  = 'Martínez'
          iv_surname    = 'Sosa' ).
  ENDMETHOD.

  METHOD process_account.
    DATA(lo_account) = NEW zcl_lab_09_account_noa( ).

    " Establecer IBAN
    lo_account->set_iban( iban = 'DE44500105175407324931' ).

    " Obtener IBAN
    DATA lv_iban TYPE string.
    lo_account->get_iban( IMPORTING iban = lv_iban ).

    io_out->write( |IBAN almacenado: { lv_iban }| ).
  ENDMETHOD.

ENDCLASS.
