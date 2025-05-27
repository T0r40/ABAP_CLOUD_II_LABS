CLASS zcl_lab_58_date_analyzer_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS analyze_date
      IMPORTING iv_date TYPE string
      RAISING   zcx_lab_56_no_date_noa.

    METHODS analyze_format
      IMPORTING iv_date TYPE string
      RAISING   zcx_lab_57_format_unknown_noa.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_noa IMPLEMENTATION.


  METHOD analyze_date.
    IF iv_date IS INITIAL.
      RAISE EXCEPTION TYPE zcx_lab_56_no_date_noa
        EXPORTING
          previous = NEW zcx_lab_57_format_unknown_noa( ).
    ENDIF.
  ENDMETHOD.

  METHOD analyze_format.
    IF iv_date CA 'abcdefghijklmnopqrstuvwxyz'.
      RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_noa.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
