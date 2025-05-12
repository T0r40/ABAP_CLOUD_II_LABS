CLASS zcl_lab_19_lion DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_18_animal_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      walk REDEFINITION.
ENDCLASS.



CLASS zcl_lab_19_lion IMPLEMENTATION.

  METHOD walk.
    rv_text = 'The lion walks'.
  ENDMETHOD.

ENDCLASS.
