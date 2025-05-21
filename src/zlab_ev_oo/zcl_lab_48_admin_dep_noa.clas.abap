CLASS zcl_lab_48_admin_dep_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    EVENTS:
      payroll_paid EXPORTING VALUE(ev_id) TYPE string.

    METHODS:
      constructor IMPORTING iv_id TYPE string,
      notify_employee,
      get_log RETURNING VALUE(rv_log) TYPE string.

  PRIVATE SECTION.
    DATA:
      id  TYPE string,
      log TYPE string.
ENDCLASS.



CLASS zcl_lab_48_admin_dep_noa IMPLEMENTATION.

  METHOD constructor.
    id = iv_id.
  ENDMETHOD.

  METHOD notify_employee.
    RAISE EVENT payroll_paid EXPORTING ev_id = id.
    log = |Nómina pagada al empleado: { id }|.
  ENDMETHOD.

  METHOD get_log.
    rv_log = log.
  ENDMETHOD.


ENDCLASS.
