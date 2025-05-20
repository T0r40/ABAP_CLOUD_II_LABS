CLASS zcl_lab_11_system_noa DEFINITION
 PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: architecture TYPE string VALUE '64BITS'.

    METHODS:
      get_architecture
        EXPORTING
          ev_architecture TYPE string.
ENDCLASS.



CLASS ZCL_LAB_11_SYSTEM_NOA IMPLEMENTATION.


  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.
ENDCLASS.
