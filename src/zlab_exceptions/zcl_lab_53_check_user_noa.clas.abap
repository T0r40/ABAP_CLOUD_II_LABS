CLASS zcl_lab_53_check_user_noa DEFINITION
PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS check_user
      IMPORTING iv_syuname TYPE sy-uname.

ENDCLASS.



CLASS zcl_lab_53_check_user_noa IMPLEMENTATION.
  METHOD check_user.
 IF iv_syuname = sy-uname.

    DATA lo_ex TYPE REF TO zcx_lab_52_operations_noa.


    RAISE EXCEPTION TYPE zcx_lab_52_operations_noa
      EXPORTING
        iv_textid   = lo_ex->no_access
        iv_username = iv_syuname.

  ENDIF.

  ENDMETHOD.

ENDCLASS.
