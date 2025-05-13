CLASS zcl_lab_26_flights_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES:
      zif_lab_01_flight_noa,
      zif_lab_02_customer_noa.

ALIASES:
      set_connection_id FOR zif_lab_01_flight_noa~set_conn_id,
      get_connection_id FOR zif_lab_01_flight_noa~get_conn_id,
      get_customer_data FOR zif_lab_02_customer_noa~get_customer,
      get_airport_data FOR zif_lab_03_airports_noa~get_airports.

ENDCLASS.



CLASS zcl_lab_26_flights_noa IMPLEMENTATION.


  METHOD zif_lab_01_flight_noa~set_conn_id.
    zif_lab_01_flight_noa~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD zif_lab_01_flight_noa~get_conn_id.
    rv_conn_id = zif_lab_01_flight_noa~conn_id.
  ENDMETHOD.

  METHOD zif_lab_02_customer_noa~get_customer.

    CLEAR rs_customer.

    SELECT SINGLE first_name, last_name
      FROM /dmo/customer
      WHERE customer_id = @iv_customer_id
      INTO (@rs_customer-first_name, @rs_customer-last_name).
  ENDMETHOD.

  METHOD zif_lab_03_airports_noa~get_airports.
    SELECT SINGLE *
      FROM /dmo/airport
      WHERE airport_id = @iv_airport_id
      INTO @rs_airport.
  ENDMETHOD.

ENDCLASS.
