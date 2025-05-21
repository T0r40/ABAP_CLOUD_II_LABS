CLASS zcl_lab_44_operating_syst_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: zif_lab_05_browser.

    METHODS:
      mouse_movement.
ENDCLASS.



CLASS zcl_lab_44_operating_syst_noa IMPLEMENTATION.

  METHOD mouse_movement.
    RAISE EVENT zif_lab_05_browser~close_window.
  ENDMETHOD.

ENDCLASS.
