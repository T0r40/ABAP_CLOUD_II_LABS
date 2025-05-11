CLASS zcl_lab_06_elements_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    CONSTANTS:
      c_type_aircraft  TYPE string VALUE 'AIRCRAFT',
      c_type_passenger TYPE string VALUE 'PASSENGER',
      c_type_flight    TYPE string VALUE 'FLIGHT',
      c_type_gate      TYPE string VALUE 'GATE'.

    METHODS:
      set_object
        IMPORTING
          is_object TYPE ty_elem_objects.

  PRIVATE SECTION.
    DATA: ms_object TYPE ty_elem_objects.
ENDCLASS.

CLASS zcl_lab_06_elements_noa IMPLEMENTATION.

  METHOD set_object.
    ms_object = is_object.
  ENDMETHOD.

ENDCLASS.

