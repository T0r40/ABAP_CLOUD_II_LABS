CLASS zcl_lab_08_run DEFINITION
 PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

    METHODS:
      simulate_touch_event
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_typed_touch_event
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_browser_event
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,


      test_handler_activation
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_static_event
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      trigger_payroll_events
        IMPORTING io_out TYPE REF TO if_oo_adt_classrun_out.


ENDCLASS.



CLASS zcl_lab_08_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    simulate_touch_event( io_out = out ).
    simulate_typed_touch_event( io_out = out ).
    simulate_browser_event( io_out = out ).
    test_handler_activation( io_out = out ).
    simulate_static_event( io_out = out ).
    trigger_payroll_events( io_out = out ).
  ENDMETHOD.

  METHOD simulate_touch_event.
    DATA(lo_screen)    = NEW zcl_lab_42_screen_noa( iv_screen_type = 'OLED').
    DATA(lo_navigation) = NEW zcl_lab_43_navigation_noa( ).

    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.

    lo_screen->element_selected(
      iv_horizontal = 150
      iv_vertical   = 300 ).

    io_out->write( lo_navigation->log ).
  ENDMETHOD.

  METHOD simulate_typed_touch_event.
    DATA(lo_screen) = NEW zcl_lab_42_screen_noa( iv_screen_type = 'AMOLED' ).
    DATA(lo_navigation) = NEW zcl_lab_43_navigation_noa( ).

    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.

    lo_screen->element_selected( iv_horizontal = 100 iv_vertical = 250 ).

    io_out->write( lo_navigation->log ).
  ENDMETHOD.

  METHOD simulate_browser_event.
    DATA(lo_os)     = NEW zcl_lab_44_operating_syst_noa( ).
    DATA(lo_chrome) = NEW zcl_lab_45_chrome_noa( ).

    SET HANDLER lo_chrome->on_close_window FOR lo_os.

    lo_os->mouse_movement( ).

    io_out->write( lo_chrome->log ).
  ENDMETHOD.

  METHOD test_handler_activation.

    DATA(lo_os)     = NEW zcl_lab_44_operating_syst_noa( ).
    DATA(lo_chrome) = NEW zcl_lab_45_chrome_noa( ).

    SET HANDLER lo_chrome->on_close_window FOR lo_os.

    lo_os->mouse_movement( ).
    io_out->write( |Log (con handler activo): { lo_chrome->log }| ).

    lo_chrome->log = ''.

    SET HANDLER lo_chrome->on_close_window FOR lo_os ACTIVATION 'FALSE'.

    lo_os->mouse_movement( ).
    io_out->write( |Log (con handler desactivado): { lo_chrome->log }| ).

  ENDMETHOD.

  METHOD simulate_static_event.
    SET HANDLER zcl_lab_47_customer_serv_noa=>on_new_call.

    zcl_lab_46_mobile_operator_noa=>assign_call( iv_phone_number = '555-123456' ).

    io_out->write( zcl_lab_47_customer_serv_noa=>log ).
  ENDMETHOD.

  METHOD trigger_payroll_events.

    DATA(lo_employee) = NEW zcl_lab_49_employee_noa( ).

    DATA(lo_dep1) = NEW zcl_lab_48_admin_dep_noa( iv_id = 'EMP001' ).
    DATA(lo_dep2) = NEW zcl_lab_48_admin_dep_noa( iv_id = 'EMP002' ).
    DATA(lo_dep3) = NEW zcl_lab_48_admin_dep_noa( iv_id = 'EMP003' ).

    SET HANDLER lo_employee->on_payroll_paid FOR lo_dep1.
    SET HANDLER lo_employee->on_payroll_paid FOR lo_dep2.
    SET HANDLER lo_employee->on_payroll_paid FOR lo_dep3.

    lo_dep1->notify_employee( ).
    lo_dep2->notify_employee( ).
    lo_dep3->notify_employee( ).

    io_out->write( lo_employee->history ).

  ENDMETHOD.

ENDCLASS.
