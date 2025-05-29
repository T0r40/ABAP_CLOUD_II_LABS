CLASS zcl_lab_72_users_noa DEFINITION INHERITING FROM zcl_lab_70_observer_noa PUBLIC.
  PUBLIC SECTION.
    DATA: gt_notifications TYPE STANDARD TABLE OF string WITH DEFAULT KEY.
    METHODS: update REDEFINITION.
ENDCLASS.



CLASS zcl_lab_72_users_noa IMPLEMENTATION.

  METHOD update.
    APPEND iv_article_title TO gt_notifications.
  ENDMETHOD.

ENDCLASS.
