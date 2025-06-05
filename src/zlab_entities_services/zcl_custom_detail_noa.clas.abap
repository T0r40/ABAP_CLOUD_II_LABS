CLASS zcl_custom_detail_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_custom_detail_noa IMPLEMENTATION.

  METHOD if_rap_query_provider~select.

    " Obtener valores de paginación si están presentes
    DATA(offset) = io_request->get_paging( )->get_offset( ).
    DATA(page_size) = io_request->get_paging( )->get_page_size( ).

    " Consulta mock (puedes reemplazarla por lectura real de BD/tablas)
    SELECT customer_id,
           phone_number,
           email_address
      FROM /dmo/customer
      INTO TABLE @DATA(lt_result)
      UP TO @page_size ROWS.

    " Entregar los resultados
    io_response->set_data( lt_result ).

  ENDMETHOD.

ENDCLASS.
