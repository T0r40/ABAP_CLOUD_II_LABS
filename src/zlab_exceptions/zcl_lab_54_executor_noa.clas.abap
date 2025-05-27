CLASS zcl_lab_54_executor_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.

    METHODS:
      simulate_check_user
        IMPORTING
          out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_retry_control
        IMPORTING out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_cleanup_control
        IMPORTING out TYPE REF TO if_oo_adt_classrun_out

        ,

      simulate_resumable_exception
        IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zcl_lab_54_executor_noa IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    simulate_check_user( out ).
    simulate_retry_control( out ).
    simulate_cleanup_control( out ).
    simulate_resumable_exception( out ).
  ENDMETHOD.

  METHOD simulate_check_user.

    DATA(lo_checker) = NEW zcl_lab_53_check_user_noa( ).

    TRY.
        lo_checker->check_user( iv_syuname = sy-uname ).

      CATCH zcx_lab_52_operations_noa INTO DATA(lx_check).
        out->write( lx_check->get_text( ) ).
    ENDTRY.

  ENDMETHOD.

  METHOD simulate_retry_control.

    DATA: lv_result   TYPE i,
          lv_dividend TYPE i VALUE 10,
          lv_divisor  TYPE i VALUE 0.

    TRY.
        lv_result = lv_dividend / lv_divisor.
        out->write( |Resultado: { lv_result }| ).

      CATCH cx_sy_zerodivide.

        out->write( '¡División por cero detectada!' ).

        lv_divisor = 2.
        out->write( 'Corrigiendo divisor a 2 y reintentando...' ).

        RETRY.

    ENDTRY.
  ENDMETHOD.

  METHOD simulate_cleanup_control.
    DATA lo_operations TYPE REF TO zcx_lab_52_operations_noa.
    TRY.
        RAISE EXCEPTION TYPE zcx_lab_52_operations_noa
          EXPORTING
            iv_textid   = lo_operations->no_access
            iv_username = sy-uname.

      CLEANUP INTO DATA(lx_ops).
        out->write( |[CLEANUP] Se ha producido una excepción: { lx_ops->get_text( ) }| ).

    ENDTRY.
  ENDMETHOD.

  METHOD simulate_resumable_exception.

    DATA(lo_bank) = NEW zcl_lab_54_bank_noa( ).

    TRY.
        lo_bank->transfer( iv_iban = 'ES95 4329 8765 4321' ).
        out->write( 'Transferencia exitosa.' ).

      CATCH zcx_lab_55_auth_iban_noa INTO DATA(lx_iban).
        out->write( '⚠️ Excepción reanudable capturada: ' && lx_iban->get_text( ) ).

    ENDTRY.

  ENDMETHOD.

ENDCLASS.
