CLASS zcl_lab_27_factory_noa DEFINITION
PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      merchandise_output
        RETURNING VALUE(rv_merchendise) TYPE string.

    METHODS:
      production_line
        ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products
        ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.
ENDCLASS.



CLASS ZCL_LAB_27_FACTORY_NOA IMPLEMENTATION.


  METHOD merchandise_output.
    rv_merchendise = 'merchandise_output'.
  ENDMETHOD.
ENDCLASS.
