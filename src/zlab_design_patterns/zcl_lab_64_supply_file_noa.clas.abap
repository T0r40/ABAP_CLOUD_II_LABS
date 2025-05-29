CLASS zcl_lab_64_supply_file_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_06_file.
ENDCLASS.



CLASS zcl_lab_64_supply_file_noa IMPLEMENTATION.

  METHOD zif_lab_06_file~get_file_type.
    rv_type = 'SUPPLY'.
  ENDMETHOD.

ENDCLASS.
