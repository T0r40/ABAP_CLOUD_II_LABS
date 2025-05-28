CLASS zcl_lab_59_calculator_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS sum_up
      IMPORTING iv_a             TYPE i
                iv_b             TYPE i
      RETURNING VALUE(rv_result) TYPE i.
ENDCLASS.

CLASS zcl_lab_59_calculator_noa IMPLEMENTATION.

  METHOD sum_up.
    rv_result = iv_a + iv_b.
  ENDMETHOD.

ENDCLASS.

