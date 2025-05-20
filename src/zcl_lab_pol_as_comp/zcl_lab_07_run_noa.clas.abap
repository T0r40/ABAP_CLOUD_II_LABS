CLASS zcl_lab_07_run_noa DEFINITION
PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
    METHODS:
      process_polymorphic_org
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_employee_counts
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_enrollment
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_composition
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_shared_references
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_budget_info
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      process_generic_object
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zcl_lab_07_run_noa IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    process_polymorphic_org( io_out = out ).
    process_employee_counts( io_out = out ).
    process_enrollment( io_out = out ).
    process_composition( io_out = out ).
    process_shared_references( io_out = out ).
    process_budget_info( io_out = out ).
    process_generic_object( io_out = out ).
  ENDMETHOD.

  METHOD process_polymorphic_org.
    DATA lt_orgs TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_noa WITH EMPTY KEY.

    APPEND NEW zcl_lab_30_org_germany_noa( ) TO lt_orgs.
    APPEND NEW zcl_lab_31_org_france_noa( ) TO lt_orgs.

    LOOP AT lt_orgs INTO DATA(lo_org).
      io_out->write( lo_org->get_location( ) ).
    ENDLOOP.
  ENDMETHOD.

  METHOD process_employee_counts.
    DATA lt_employees TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_noa WITH EMPTY KEY.

    APPEND NEW zcl_lab_32_internal_empl_noa( ) TO lt_employees.
    APPEND NEW zcl_lab_33_expatriate_empl_noa( ) TO lt_employees.

    LOOP AT lt_employees INTO DATA(lo_employee).
      DATA(lv_count) = lo_employee->get_employees_count( ).
      io_out->write( |Empleados contados: { lv_count }| ).
    ENDLOOP.
  ENDMETHOD.
  METHOD process_enrollment.
    DATA(lo_student) = NEW zcl_lab_34_student_noa( ).
    lo_student->set_name( iv_name = 'Lucía Torres' ).

    DATA(lo_college) = NEW zcl_lab_35_college_noa( ).
    lo_college->enroll_student( io_student = lo_student ).

    DATA(lv_name) = lo_college->student->get_name( ).
    io_out->write( |Estudiante inscrito: { lv_name }| ).
  ENDMETHOD.

  METHOD process_composition.
    DATA(lo_screen) = NEW zcl_lab_37_screen_noa( ).
    lo_screen->set_screen_type( iv_type = 'OLED' ).

    DATA(lo_phone) = NEW zcl_lab_36_phone_noa( io_screen = lo_screen ).

    DATA(lv_type) = lo_phone->get_screen_type( ).
    io_out->write( |Tipo de pantalla: { lv_type }| ).
  ENDMETHOD.

  METHOD process_shared_references.
    DATA(lo_price1) = NEW zcl_lab_38_prod_price_noa( ).
    lo_price1->price = 100.

    DATA lo_price2 TYPE REF TO zcl_lab_38_prod_price_noa.
    lo_price2 = lo_price1. "

    lo_price2->price = 250.

    io_out->write( |Precio desde la primera referencia: { lo_price1->price }| ).
  ENDMETHOD.

  METHOD process_budget_info.
    DATA lo_budget TYPE REF TO zcl_lab_39_budget_noa.

    lo_budget = NEW zcl_lab_40_actual_budget_noa( ).

    DATA(lv_budget) = lo_budget->get_budget( ).

    io_out->write( |Resultado presupuestario: { lv_budget }| ).
  ENDMETHOD.

  METHOD process_generic_object.
    DATA lo_object  TYPE REF TO object.

    lo_object = NEW zcl_lab_41_organization_noa( ).

    CALL METHOD lo_object->('SET_HEADQUARTERS')
      EXPORTING
        iv_hq = 'Buenos Aires'.

    DATA lv_result TYPE string.
    CALL METHOD lo_object->('GET_HEADQUARTERS')
      RECEIVING
        rv_hq = lv_result.

    io_out->write( |Sede establecida dinámicamente: { lv_result }| ).
  ENDMETHOD.

ENDCLASS.
