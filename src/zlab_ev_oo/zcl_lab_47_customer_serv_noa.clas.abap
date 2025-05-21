CLASS zcl_lab_47_customer_serv_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.

    CLASS-METHODS:
      on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator_noa
        IMPORTING ev_phone_number.
ENDCLASS.



CLASS zcl_lab_47_customer_serv_noa IMPLEMENTATION.

  METHOD on_new_call.
    log = |Nueva llamada entrante desde: { ev_phone_number }|.
  ENDMETHOD.

ENDCLASS.
