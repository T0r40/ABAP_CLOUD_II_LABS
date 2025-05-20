CLASS zcl_lab_36_phone_noa DEFINITION
 PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_noa,
      get_screen_type RETURNING VALUE(rv_type) TYPE string.

  PRIVATE SECTION.
    DATA: screen TYPE REF TO zcl_lab_37_screen_noa.
ENDCLASS.



CLASS zcl_lab_36_phone_noa IMPLEMENTATION.

  METHOD constructor.
    screen = io_screen.
  ENDMETHOD.

  METHOD get_screen_type.
    rv_type = screen->get_screen_type( ).
  ENDMETHOD.

ENDCLASS.
