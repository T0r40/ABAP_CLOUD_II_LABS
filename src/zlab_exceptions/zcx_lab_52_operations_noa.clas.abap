CLASS zcx_lab_52_operations_noa DEFINITION
 PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES: if_t100_message, if_t100_dyn_msg.

    DATA:
      username   TYPE string,
      no_execute TYPE scx_t100key READ-ONLY,
      no_access  TYPE scx_t100key READ-ONLY.

    METHODS:
      constructor
        IMPORTING
          !iv_textid   TYPE scx_t100key
          !iv_username TYPE sy-uname.

ENDCLASS.

CLASS zcx_lab_52_operations_noa IMPLEMENTATION.

  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( ).

    no_execute-msgid = 'ZMSG'.
    no_execute-msgno = '001'.
    no_execute-attr1 = 'USERNAME'.

    no_access-msgid = 'ZMSG'.
    no_access-msgno = '002'.
    no_access-attr1 = 'USERNAME'.

    me->username = iv_username.

    me->if_t100_message~t100key = iv_textid.

    me->if_t100_dyn_msg~msgv1 = iv_username.
  ENDMETHOD.

ENDCLASS.
