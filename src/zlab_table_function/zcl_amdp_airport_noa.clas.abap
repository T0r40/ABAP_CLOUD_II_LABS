CLASS zcl_amdp_airport_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_amdp_marker_hdb.

    CLASS-METHODS:

      get_airport_data
        FOR TABLE FUNCTION ztf_airports_noa,

      get_top_airports
        FOR TABLE FUNCTION ztf_top_airports_noa.
ENDCLASS.

CLASS zcl_amdp_airport_noa IMPLEMENTATION.

  METHOD get_airport_data
    BY DATABASE FUNCTION FOR HDB
    LANGUAGE SQLSCRIPT
    OPTIONS READ-ONLY
    USING /dmo/airport.

    RETURN
      select
        a.client,
        a.airport_id,
        a.name,
        a.city,
        a.country
      from "/DMO/AIRPORT" AS a
      where a.client = :pClient
        AND a.city   = :pCity
      ORDER BY a.city desc;

  endmethod.

  METHOD get_top_airports
    BY DATABASE FUNCTION FOR HDB
    LANGUAGE SQLSCRIPT
    OPTIONS READ-ONLY
    USING /dmo/airport.

    RETURN
      select
        a.client,
        a.airport_id,
        a.name,
        a.city,
        a.country
      from "/DMO/AIRPORT" AS a
      order by a.city asc
      limit 10;

  endmethod.


ENDCLASS.

