CLASS zcl_lab_43_navigation_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: log TYPE string.

    METHODS:
      on_touch_screen
        FOR EVENT touch_screen OF zcl_lab_42_screen_noa
        IMPORTING
          horizontal
          vertical
          sender.
ENDCLASS.



CLASS zcl_lab_43_navigation_noa IMPLEMENTATION.

  METHOD on_touch_screen.
    DATA(lo_screen) = CAST zcl_lab_42_screen_noa( sender ).
    log = |Pantalla tocada ({ lo_screen->screen_type }) en X={ horizontal }, Y={ vertical }|.
  ENDMETHOD.

ENDCLASS.
