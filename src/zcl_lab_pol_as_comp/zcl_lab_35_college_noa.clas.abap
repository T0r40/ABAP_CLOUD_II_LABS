CLASS zcl_lab_35_college_noa DEFINITION
 PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      enroll_student
        IMPORTING io_student TYPE REF TO zcl_lab_34_student_noa.

    DATA:
      student TYPE REF TO zcl_lab_34_student_noa.
ENDCLASS.



CLASS zcl_lab_35_college_noa IMPLEMENTATION.

  METHOD enroll_student.
    me->student = io_student.
  ENDMETHOD.

ENDCLASS.
