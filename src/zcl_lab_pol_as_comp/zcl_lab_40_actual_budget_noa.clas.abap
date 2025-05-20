CLASS zcl_lab_40_actual_budget_noa DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_39_budget_noa
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      get_budget REDEFINITION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget_noa IMPLEMENTATION.

  METHOD get_budget.
    rv_budget = 'Presupuesto 2025 aprobado'.
  ENDMETHOD.

ENDCLASS.
