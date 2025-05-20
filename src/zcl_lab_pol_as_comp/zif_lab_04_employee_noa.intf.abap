INTERFACE zif_lab_04_employee_noa PUBLIC.
  METHODS:
    get_employees_count
      RETURNING VALUE(rv_count) TYPE i.
ENDINTERFACE.
