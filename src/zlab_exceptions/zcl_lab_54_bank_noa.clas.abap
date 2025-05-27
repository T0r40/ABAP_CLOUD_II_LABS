CLASS zcl_lab_54_bank_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS transfer
      IMPORTING iv_iban TYPE string
      RAISING   zcx_lab_55_auth_iban_noa.
ENDCLASS.



CLASS zcl_lab_54_bank_noa IMPLEMENTATION.
  METHOD transfer.

    IF iv_iban = 'ES95 4329 8765 4321'.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_noa.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
