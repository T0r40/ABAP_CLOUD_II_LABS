CLASS zcl_lab_67_package_a_noa DEFINITION PUBLIC CREATE PUBLIC INHERITING FROM zcl_lab_66_travel_noa.
  PROTECTED SECTION.
    METHODS:
      transport_oneway  REDEFINITION,
      day_one           REDEFINITION,
      day_two           REDEFINITION,
      day_three         REDEFINITION,
      transport_return  REDEFINITION.
ENDCLASS.



CLASS zcl_lab_67_package_a_noa IMPLEMENTATION.

  METHOD transport_oneway.
    io_out->write( 'PACKAGE A - Transporte de ida: Bus' ).
  ENDMETHOD.
  METHOD day_one.
    io_out->write( 'PACKAGE A - Día 1: City Tour' ).
  ENDMETHOD.
  METHOD day_two.
    io_out->write( 'PACKAGE A - Día 2: Museo y comida local' ).
  ENDMETHOD.
  METHOD day_three.
    io_out->write( 'PACKAGE A - Día 3: Compras' ).
  ENDMETHOD.
  METHOD transport_return.
    io_out->write( 'PACKAGE A - Transporte de vuelta: Bus' ).
  ENDMETHOD.

ENDCLASS.
