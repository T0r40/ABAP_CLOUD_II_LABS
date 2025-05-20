CLASS zcl_lab_02_product_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_product
        IMPORTING
          i_product TYPE matnr,
      set_creationdate
        IMPORTING
          i_creation_date TYPE zdate.

  PRIVATE SECTION.
    DATA:
      product        TYPE matnr,
      creation_date  TYPE zdate.
ENDCLASS.



CLASS ZCL_LAB_02_PRODUCT_NOA IMPLEMENTATION.


  METHOD set_creationdate.
    creation_date = i_creation_date.
  ENDMETHOD.


  METHOD set_product.
    product = i_product.
  ENDMETHOD.
ENDCLASS.
