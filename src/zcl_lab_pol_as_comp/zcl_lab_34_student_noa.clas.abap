CLASS zcl_lab_34_student_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_name
        IMPORTING iv_name TYPE string,
      get_name
        RETURNING VALUE(rv_name) TYPE string.

  PRIVATE SECTION.
    DATA: name TYPE string.
ENDCLASS.



CLASS zcl_lab_34_student_noa IMPLEMENTATION.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.

ENDCLASS.
