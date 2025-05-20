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



CLASS ZCL_LAB_09_ACCOUNT_NOA IMPLEMENTATION.


  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.


  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.
ENDCLASS.
