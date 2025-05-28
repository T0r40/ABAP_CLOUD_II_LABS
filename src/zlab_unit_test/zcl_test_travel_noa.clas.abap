CLASS zcl_test_travel_noa DEFINITION PUBLIC
  FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS test_get_travel FOR TESTING.

ENDCLASS.

CLASS zcl_test_travel_noa IMPLEMENTATION.

  METHOD test_get_travel.

    DATA(lo_travel) = NEW zcl_lab_61_travel_noa( ).
    DATA(lv_result) = lo_travel->get_travel( iv_carrier_id = '042' ).

    cl_abap_unit_assert=>assert_equals(
      act = lv_result-price
      exp = 1
      msg = 'Se esperaba precio alterado = 1 para el ID 00000042'
    ).

  ENDMETHOD.
ENDCLASS.

