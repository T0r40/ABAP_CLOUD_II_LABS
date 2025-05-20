CLASS zcl_lab_32_internal_empl_noa DEFINITION
PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: zif_lab_04_employee_noa.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_noa IMPLEMENTATION.

  METHOD zif_lab_04_employee_noa~get_employees_count.
    rv_count = 120. "
  ENDMETHOD.

ENDCLASS.
