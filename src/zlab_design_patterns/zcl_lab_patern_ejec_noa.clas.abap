CLASS zcl_lab_patern_ejec_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    METHODS:
      singleton
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      factory
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      template
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      observer
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out

        ,

      mvc
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_patern_ejec_noa IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    singleton( out ).
    factory( out ).
    template( out ).
    observer( out ).
    mvc( out ).
  ENDMETHOD.
  METHOD singleton.
    DATA(lo_context1) = zcl_lab_62_context_noa=>get_instance( ).
    DATA(lo_context2) = zcl_lab_62_context_noa=>get_instance( ).

    lo_context1->display_context( io_out ).
    lo_context2->display_context( io_out ).

    IF lo_context1 = lo_context2.
      io_out->write( 'Ambas referencias apuntan al mismo objeto (Singleton).' ).
    ELSE.
      io_out->write( 'Las referencias NO apuntan al mismo objeto.' ).
    ENDIF.
  ENDMETHOD.

  METHOD factory.
    DATA(lo_file) = zcl_lab_65_factory_noa=>create_file( iv_type = 'SUPPLY' ).
    DATA(lv_type) = lo_file->get_file_type( ).
    io_out->write( |Tipo de expediente: { lv_type }| ).
  ENDMETHOD.

  METHOD template.
    DATA(lo_travel_a) = NEW zcl_lab_67_package_a_noa( ).
    lo_travel_a->travel( io_out ).

    io_out->write( '---' ).

    DATA(lo_travel_b) = NEW zcl_lab_68_package_b_noa( ).
    lo_travel_b->travel( io_out ).
  ENDMETHOD.

  METHOD observer.
    DATA: lo_blog  TYPE REF TO zcl_lab_69_blog_noa,
          lo_admin TYPE REF TO zcl_lab_71_administrator_noa,
          lo_user  TYPE REF TO zcl_lab_72_users_noa.

    CREATE OBJECT lo_blog.
    CREATE OBJECT lo_admin.
    CREATE OBJECT lo_user.

    lo_blog->attach( lo_admin ).
    lo_blog->attach( lo_user ).

    lo_blog->publish_article( iv_title = 'Artículo ABAP Cloud #1' ).
    lo_blog->publish_article( iv_title = 'Artículo ABAP Cloud #2' ).

    DATA(admin_notes) = lo_admin->gt_notifications.
    DATA(user_notes)  = lo_user->gt_notifications.

    LOOP AT admin_notes ASSIGNING FIELD-SYMBOL(<fs_admin>).
      io_out->write( |{ <fs_admin> }| ).
    ENDLOOP.
    LOOP AT user_notes ASSIGNING FIELD-SYMBOL(<fs_user>).
      io_out->write( |{ <fs_user> }| ).
    ENDLOOP.
  ENDMETHOD.

  METHOD mvc.
    zcl_lab_75_controller_noa=>run(
      iv_carrier_id = 'LH'
      io_out        = io_out ).
  ENDMETHOD.

ENDCLASS.
