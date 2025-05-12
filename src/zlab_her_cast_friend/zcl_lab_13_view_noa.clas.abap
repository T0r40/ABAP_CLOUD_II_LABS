CLASS zcl_lab_13_view_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string.

  PROTECTED SECTION.
    DATA:
      view_type TYPE string,
      box       TYPE string.
ENDCLASS.



CLASS zcl_lab_13_view_noa IMPLEMENTATION.

  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.

ENDCLASS.
