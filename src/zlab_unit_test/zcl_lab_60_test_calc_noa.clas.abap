CLASS zcl_lab_60_test_calc_noa DEFINITION
  PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS test_sum_up FOR TESTING. " Testea ZCL_LAB_59_CALCULATOR~SUM_UP

ENDCLASS.

CLASS zcl_lab_60_test_calc_noa IMPLEMENTATION.

  METHOD test_sum_up.
    DATA(lo_calc) = NEW zcl_lab_59_calculator_noa( ).
    DATA(lv_result) = lo_calc->sum_up( iv_a = 3 iv_b = 7 ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 10
      msg = 'Error en la suma de 3 + 7' ).
  ENDMETHOD.

ENDCLASS.

