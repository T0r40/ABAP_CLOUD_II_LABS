CLASS zcl_lab_49_employee_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA: history TYPE string.

    METHODS:
      on_payroll_paid
        FOR EVENT payroll_paid OF zcl_lab_48_admin_dep_noa
        IMPORTING ev_id.
ENDCLASS.



CLASS zcl_lab_49_employee_noa IMPLEMENTATION.

  METHOD on_payroll_paid.
    history = history && |[Pago recibido] Empleado: { ev_id }\n|.
  ENDMETHOD.

ENDCLASS.
