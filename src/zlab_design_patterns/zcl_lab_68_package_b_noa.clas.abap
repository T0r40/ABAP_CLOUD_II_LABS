CLASS zcl_lab_68_package_b_noa DEFINITION PUBLIC CREATE PUBLIC INHERITING FROM zcl_lab_66_travel_noa.
  PROTECTED SECTION.
    METHODS:
      transport_oneway  REDEFINITION,
      day_one           REDEFINITION,
      day_two           REDEFINITION,
      day_three         REDEFINITION,
      transport_return  REDEFINITION.
ENDCLASS.



CLASS zcl_lab_68_package_b_noa IMPLEMENTATION.

  METHOD transport_oneway.
    io_out->write( 'PACKAGE B - Transporte de ida: Avión' ).
  ENDMETHOD.
  METHOD day_one.
    io_out->write( 'PACKAGE B - Día 1: Check-in y spa' ).
  ENDMETHOD.
  METHOD day_two.
    io_out->write( 'PACKAGE B - Día 2: Excursión guiada' ).
  ENDMETHOD.
  METHOD day_three.
    io_out->write( 'PACKAGE B - Día 3: Relax en la playa' ).
  ENDMETHOD.
  METHOD transport_return.
    io_out->write( 'PACKAGE B - Transporte de vuelta: Avión' ).
  ENDMETHOD.

ENDCLASS.
