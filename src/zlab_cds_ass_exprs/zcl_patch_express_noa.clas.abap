CLASS zcl_patch_express_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_patch_express_noa IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_public_assoc_noa AS travel
      FIELDS
        AgencyID,
        TravelID,
        AgencyName
      WHERE AgencyID = '070032'
      INTO TABLE @DATA(result)
      UP TO 10 ROWS.

    LOOP AT result INTO DATA(row).
      out->write( |Agency ID: { row-agencyid }, Travel ID: { row-travelid } Agency Name: { row-AgencyName } | ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
