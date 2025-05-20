CLASS zcl_lab_41_organization_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_headquarters IMPORTING iv_hq TYPE string,
      get_headquarters RETURNING VALUE(rv_hq) TYPE string.

  PRIVATE SECTION.
    DATA: headquarters TYPE string.
ENDCLASS.



CLASS zcl_lab_41_organization_noa IMPLEMENTATION.

  METHOD set_headquarters.
    me->headquarters = iv_hq.
  ENDMETHOD.

  METHOD get_headquarters.
    rv_hq = me->headquarters.
  ENDMETHOD.

ENDCLASS.
