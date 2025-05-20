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



CLASS ZCL_LAB_10_CONSTRUCTOR_NOA IMPLEMENTATION.


  METHOD class_constructor.
    log = |[STATIC] Constructor de clase ejecutado.\n|.
  ENDMETHOD.


  METHOD constructor.
    log = log && |[INSTANCE] Constructor de instancia ejecutado.\n|.
  ENDMETHOD.
ENDCLASS.
