CLASS zcl_lab_14_grid_noa DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_13_view_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string
          iv_box       TYPE string

        ,

      get_view_type
        RETURNING VALUE(rv_view_type) TYPE string

        ,

      get_box
        RETURNING VALUE(rv_box) TYPE string.

ENDCLASS.



CLASS ZCL_LAB_14_GRID_NOA IMPLEMENTATION.


  METHOD constructor.
    super->constructor( iv_view_type = iv_view_type ).
    me->box = iv_box.
  ENDMETHOD.


  METHOD get_box.
    rv_box = me->box.
  ENDMETHOD.


  METHOD get_view_type.
    rv_view_type = me->view_type.
  ENDMETHOD.
ENDCLASS.
