CLASS zcl_lab_29_organization_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_location
        RETURNING VALUE(rv_location) TYPE string.
ENDCLASS.



CLASS zcl_lab_29_organization_noa IMPLEMENTATION.

  METHOD get_location.
    rv_location = 'Generic Organization'.
  ENDMETHOD.

ENDCLASS.
