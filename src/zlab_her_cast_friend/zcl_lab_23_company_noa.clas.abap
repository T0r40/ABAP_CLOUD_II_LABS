CLASS zcl_lab_23_company_noa DEFINITION
  PUBLIC
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_24_partner_noa.

  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING iv_capital TYPE i.

  PRIVATE SECTION.
    DATA: capital TYPE i.
ENDCLASS.



CLASS zcl_lab_23_company_noa IMPLEMENTATION.

  METHOD constructor.
    me->capital = iv_capital.
  ENDMETHOD.

ENDCLASS.
