CLASS zcl_lab_04_person_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_age IMPORTING iv_age TYPE i,
      get_age EXPORTING ev_age TYPE i.

  PRIVATE SECTION.
    DATA: age TYPE i.
ENDCLASS.

CLASS zcl_lab_04_person_noa IMPLEMENTATION.

  METHOD set_age.
    age = iv_age.
  ENDMETHOD.

  METHOD get_age.
    ev_age = age.
  ENDMETHOD.

ENDCLASS.

