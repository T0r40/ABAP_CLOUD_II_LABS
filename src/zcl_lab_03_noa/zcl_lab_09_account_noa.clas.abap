CLASS zcl_lab_09_account_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS:
      set_iban
        IMPORTING
          iban TYPE string,
      get_iban
        EXPORTING
          iban TYPE string.

  PRIVATE SECTION.
    DATA: iban TYPE string.
ENDCLASS.



CLASS zcl_lab_09_account_noa IMPLEMENTATION.

  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.

  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.

ENDCLASS.
