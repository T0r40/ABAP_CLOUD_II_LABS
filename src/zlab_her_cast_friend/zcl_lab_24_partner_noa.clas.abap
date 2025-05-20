CLASS zcl_lab_24_partner_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_company_capital
        IMPORTING
                  io_company        TYPE REF TO zcl_lab_23_company_noa
        RETURNING VALUE(rv_capital) TYPE i.
ENDCLASS.



CLASS ZCL_LAB_24_PARTNER_NOA IMPLEMENTATION.


  METHOD get_company_capital.
    rv_capital = io_company->capital.
  ENDMETHOD.
ENDCLASS.
