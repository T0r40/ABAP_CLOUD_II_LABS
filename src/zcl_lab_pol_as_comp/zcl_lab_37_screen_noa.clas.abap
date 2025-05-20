CLASS zcl_lab_37_screen_noa DEFINITION
 PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_screen_type IMPORTING iv_type TYPE string,
      get_screen_type RETURNING VALUE(rv_type) TYPE string.

  PRIVATE SECTION.
    DATA: screen_type TYPE string.
ENDCLASS.



CLASS zcl_lab_37_screen_noa IMPLEMENTATION.

  METHOD set_screen_type.
    screen_type = iv_type.
  ENDMETHOD.

  METHOD get_screen_type.
    rv_type = screen_type.
  ENDMETHOD.

ENDCLASS.
