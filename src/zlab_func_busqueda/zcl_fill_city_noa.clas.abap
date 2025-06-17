CLASS zcl_fill_city_noa DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS fill_data.
ENDCLASS.

CLASS zcl_fill_city_noa IMPLEMENTATION.

  METHOD fill_data.
    DATA lt_airports TYPE TABLE OF /dmo/airport.
    SELECT * FROM /dmo/airport INTO TABLE @lt_airports.

    DATA ls_text TYPE zcity_texts_noa.

    LOOP AT lt_airports ASSIGNING FIELD-SYMBOL(<fs>).
      ls_text-client     = sy-mandt.
      ls_text-airport_id = <fs>-airport_id.
      ls_text-city       = <fs>-city.

      INSERT zcity_texts_noa FROM @ls_text.
    ENDLOOP.


  ENDMETHOD.
ENDCLASS.

