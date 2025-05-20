CLASS zcl_lab_22_student_noa DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_21_classroom_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      assign_student.
ENDCLASS.



CLASS ZCL_LAB_22_STUDENT_NOA IMPLEMENTATION.


  METHOD assign_student.
    DATA(lo_classroom) = NEW zcl_lab_21_classroom_noa( ).
  ENDMETHOD.
ENDCLASS.
