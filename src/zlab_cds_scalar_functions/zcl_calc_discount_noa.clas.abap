CLASS zcl_calc_discount_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS get_discount
      IMPORTING VALUE(pClientCucky) TYPE /dmo/price
                VALUE(pDiscount)    TYPE /dmo/price
      RETURNING VALUE(rv_result)    TYPE /dmo/price.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_calc_discount_noa IMPLEMENTATION.
  METHOD get_discount
   BY DATABASE FUNCTION FOR HDB
    LANGUAGE SQLSCRIPT
    OPTIONS READ-ONLY.

    IF :pClientCucky = 'EUR' THEN
      rv_result = :pDiscount * 0.9;
    else
      rv_result = :pDiscount * 0.95;
    end if;

  endmethod.

ENDCLASS.
