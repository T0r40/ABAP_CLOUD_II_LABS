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



CLASS zcl_lab_11_system_noa IMPLEMENTATION.

  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
