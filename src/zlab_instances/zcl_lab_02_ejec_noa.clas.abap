CLASS zcl_lab_02_ejec_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    METHODS:
      process_constructors
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_02_ejec_noa IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    process_constructors( io_out = out ).
  ENDMETHOD.

  METHOD process_constructors.
    DATA(lo_obj) = NEW zcl_lab_10_constructor_noa( ).
    io_out->write( zcl_lab_10_constructor_noa=>log ).
  ENDMETHOD.

ENDCLASS.
