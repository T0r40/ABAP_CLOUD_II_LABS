CLASS zcl_lab_10_constructor_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.
ENDCLASS.



CLASS zcl_lab_10_constructor_noa IMPLEMENTATION.

  METHOD class_constructor.
    log = |[STATIC] Constructor de clase ejecutado.\n|.
  ENDMETHOD.

  METHOD constructor.
    log = log && |[INSTANCE] Constructor de instancia ejecutado.\n|.
  ENDMETHOD.

ENDCLASS.
