CLASS zcl_lab_07_student_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: birth_date TYPE zdate READ-ONLY.

    METHODS:
      set_birth_date
        IMPORTING
          iv_birth_date TYPE zdate.

ENDCLASS.

CLASS zcl_lab_07_student_noa IMPLEMENTATION.

  METHOD set_birth_date.
    birth_date = iv_birth_date.
  ENDMETHOD.

ENDCLASS.

