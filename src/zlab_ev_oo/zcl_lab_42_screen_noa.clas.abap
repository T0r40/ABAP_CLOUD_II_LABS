CLASS zcl_lab_42_screen_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    EVENTS: touch_screen
      EXPORTING
        VALUE(horizontal) TYPE i
        VALUE(vertical)   TYPE i.

    METHODS:
      constructor
        IMPORTING iv_screen_type TYPE string,

      element_selected
        IMPORTING
          iv_horizontal TYPE i
          iv_vertical   TYPE i.

    DATA: screen_type TYPE string.

ENDCLASS.



CLASS zcl_lab_42_screen_noa IMPLEMENTATION.

  METHOD constructor.
    screen_type = iv_screen_type.
  ENDMETHOD.

  METHOD element_selected.
    RAISE EVENT touch_screen
      EXPORTING
        horizontal = iv_horizontal
        vertical   = iv_vertical.
  ENDMETHOD.

ENDCLASS.
