CLASS zcl_lab_30_org_germany_noa DEFINITION
 PUBLIC
  INHERITING FROM zcl_lab_29_organization_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_location REDEFINITION.
ENDCLASS.



CLASS zcl_lab_30_org_germany_noa IMPLEMENTATION.

  METHOD get_location.
    rv_location = 'Germany Headquarters'.
  ENDMETHOD.

ENDCLASS.
