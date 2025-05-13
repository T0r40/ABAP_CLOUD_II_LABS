INTERFACE zif_lab_02_customer_noa
  PUBLIC .

  TYPES: BEGIN OF ty_cust_address,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_cust_address.


  METHODS:
    get_customer
      IMPORTING iv_customer_id     TYPE string
      RETURNING VALUE(rs_customer) TYPE ty_cust_address.

ENDINTERFACE.
