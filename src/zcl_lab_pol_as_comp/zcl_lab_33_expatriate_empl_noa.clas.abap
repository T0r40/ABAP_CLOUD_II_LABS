CLASS zcl_lab_33_expatriate_empl_noa DEFINITION
    PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: zif_lab_04_employee_noa.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl_noa IMPLEMENTATION.


  METHOD zif_lab_04_employee_noa~get_employees_count.
    rv_count = 25.
  ENDMETHOD.

ENDCLASS.
