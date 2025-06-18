CLASS zcl_virtual_discount_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_sadl_exit_calc_element_read.

ENDCLASS.

CLASS zcl_virtual_discount_noa IMPLEMENTATION.

  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA: lv_price    TYPE d16n,
          lv_currency TYPE /dmo/flight-currency_code,
          lv_discount TYPE d16n.

    LOOP AT it_original_data ASSIGNING FIELD-SYMBOL(<ls_input>).
      lv_price = <ls_input>.
      lv_currency = <ls_input>.

      IF lv_currency = 'EUR'.
        lv_discount = '0.10'.
      ELSE.
        lv_discount = '0.05'.
      ENDIF.

      <ls_input> = lv_price * ( 1 - lv_discount ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.


