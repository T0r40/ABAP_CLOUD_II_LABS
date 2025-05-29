CLASS zcl_lab_69_blog_noa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      attach IMPORTING io_observer TYPE REF TO zcl_lab_70_observer_noa,
      publish_article IMPORTING iv_title TYPE string.

  PRIVATE SECTION.
    DATA: mt_observers TYPE STANDARD TABLE OF REF TO zcl_lab_70_observer_noa WITH DEFAULT KEY.
ENDCLASS.



CLASS zcl_lab_69_blog_noa IMPLEMENTATION.

  METHOD attach.
    APPEND io_observer TO mt_observers.
  ENDMETHOD.

  METHOD publish_article.
    DATA lo_observer TYPE REF TO zcl_lab_70_observer_noa.

    LOOP AT mt_observers INTO lo_observer.
      lo_observer->update( iv_article_title = iv_title ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
