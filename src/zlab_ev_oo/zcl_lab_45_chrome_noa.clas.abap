CLASS zcl_lab_45_chrome_noa DEFINITION
 PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: log TYPE string.

    METHODS:
      on_close_window
        FOR EVENT close_window OF zif_lab_05_browser.
ENDCLASS.



CLASS zcl_lab_45_chrome_noa IMPLEMENTATION.

  METHOD on_close_window.
    log = 'Evento CLOSE_WINDOW capturado por Chrome.'.
  ENDMETHOD.

ENDCLASS.
