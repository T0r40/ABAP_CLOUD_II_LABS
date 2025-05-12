CLASS zcl_lab_17_super_discount_noa DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_16_price_discount_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      add_price
        REDEFINITION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_noa IMPLEMENTATION.

  METHOD add_price.
    DATA(ls_flight) = is_flight.
    ls_flight-price = ls_flight-price * '0.80'. " 20% descuento
    APPEND ls_flight TO mt_flights.
  ENDMETHOD.

ENDCLASS.
