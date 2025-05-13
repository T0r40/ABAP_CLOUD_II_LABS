CLASS zcl_lab_28_logistics_noa DEFINITION
 PUBLIC
  INHERITING FROM zcl_lab_27_factory_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      production_line REDEFINITION,
      input_products  REDEFINITION.
ENDCLASS.



CLASS zcl_lab_28_logistics_noa IMPLEMENTATION.

  METHOD production_line.
    rv_production = 'production_line'.
  ENDMETHOD.

  METHOD input_products.
    rv_input = 'input_products'.
  ENDMETHOD.

ENDCLASS.
