CLASS zcl_lab_20_person_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_name
        IMPORTING
          iv_name TYPE string.

  PROTECTED SECTION.
    DATA: name TYPE string.
ENDCLASS.



CLASS ZCL_LAB_20_PERSON_NOA IMPLEMENTATION.


  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.
ENDCLASS.
