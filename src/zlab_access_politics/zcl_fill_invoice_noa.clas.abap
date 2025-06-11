CLASS zcl_fill_invoice_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_invoice_noa IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_data    TYPE STANDARD TABLE OF zdt_com_inv_noa,
          lv_user    TYPE syuname,
          lv_client  TYPE sy-mandt,
          lv_date    TYPE sy-datum,
          lv_amount  TYPE zde_currency VALUE '100.00',
          lv_counter TYPE i.

    lv_user = cl_abap_context_info=>get_user_alias( ).
    lv_client = cl_abap_context_info=>get_system_url( ).
    lv_date = cl_abap_context_info=>get_system_date( ).
    " 5 registros con usuario actual
    DO 5 TIMES.
      APPEND VALUE #( client        = lv_client
                      invoice_id    = |INV-{ sy-index }|
                      customer_name = |Cliente-{ sy-index }|
                      inv_amount    = lv_amount
                      currency      = 'USD'
                      department    = '1000'
                      created_by    = lv_user
                      create_date   = lv_date ) TO lt_data.
    ENDDO.

    " 5 registros con usuario ficticio
    DO 5 TIMES.
      lv_counter = sy-index + 5.
      APPEND VALUE #( client        = lv_client
                      invoice_id    = |INV-{ lv_counter }|
                      customer_name = |Cliente-{ lv_counter }|
                      inv_amount    = lv_amount
                      currency      = 'EUR'
                      department    = '2000'
                      created_by    = 'TESTUSER'
                      create_date   = lv_date ) TO lt_data.
    ENDDO.

    " Insertar en base de datos
    TRY.
        INSERT zdt_com_inv_noa FROM TABLE @lt_data.
        out->write( |{ lines( lt_data ) } registros insertados correctamente en ZDT_COM_INV_NOA.| ).
      CATCH cx_root INTO DATA(lx).
        out->write( |Error al insertar registros: { lx->get_text( ) }| ).
    ENDTRY.

  ENDMETHOD.

ENDCLASS.
