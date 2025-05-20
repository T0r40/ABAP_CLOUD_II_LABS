CLASS zcl_lab_25_collaborator_noa DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_24_partner_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_capital
        IMPORTING
                  io_company        TYPE REF TO zcl_lab_23_company_noa
        RETURNING VALUE(rv_capital) TYPE i.
ENDCLASS.



CLASS ZCL_LAB_25_COLLABORATOR_NOA IMPLEMENTATION.


  METHOD get_capital.
    rv_capital = io_company->capital.
  ENDMETHOD.
ENDCLASS.
