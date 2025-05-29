CLASS zcl_lab_65_factory_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS create_file
      IMPORTING iv_type        TYPE string
      RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file.
ENDCLASS.



CLASS zcl_lab_65_factory_noa IMPLEMENTATION.

  METHOD create_file.
    CASE iv_type.
      WHEN 'WORK'.
        ro_file = NEW zcl_lab_63_work_file_noa( ).
      WHEN 'SUPPLY'.
        ro_file = NEW zcl_lab_64_supply_file_noa( ).
      WHEN OTHERS.
        ro_file = NEW zcl_lab_63_work_file_noa( ). " Default
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
