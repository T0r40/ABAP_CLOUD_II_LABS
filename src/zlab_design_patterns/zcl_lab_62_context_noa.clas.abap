CLASS zcl_lab_62_context_noa DEFINITION
    PUBLIC
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS get_instance
      RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_62_context_noa.

    METHODS display_context
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.

  PRIVATE SECTION.
    CLASS-DATA mo_instance TYPE REF TO zcl_lab_62_context_noa.
    DATA mv_info TYPE string VALUE 'Singleton activo'.
ENDCLASS.



CLASS zcl_lab_62_context_noa IMPLEMENTATION.

  METHOD get_instance.
    IF mo_instance IS INITIAL.
      mo_instance = NEW zcl_lab_62_context_noa( ).
    ENDIF.
    ro_instance = mo_instance.
  ENDMETHOD.

  METHOD display_context.
    io_out->write( |Contexto: { mv_info }| ).
  ENDMETHOD.

ENDCLASS.
