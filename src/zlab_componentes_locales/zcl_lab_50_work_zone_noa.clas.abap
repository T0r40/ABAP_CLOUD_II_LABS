CLASS zcl_lab_50_work_zone_noa DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

  PRIVATE SECTION.

    TYPES: BEGIN OF ty_work_zone,
             launchpad TYPE string,
             dashboard TYPE string,
             spaces    TYPE string,
           END OF ty_work_zone.

    DATA: ms_work_zone TYPE ty_work_zone.

    METHODS:
      set_work_zone.
ENDCLASS.



CLASS zcl_lab_50_work_zone_noa IMPLEMENTATION.

  METHOD set_work_zone.
    ms_work_zone-launchpad = 'SAP Launchpad Service'.
    ms_work_zone-dashboard = 'Business Dashboard'.
    ms_work_zone-spaces    = 'Work Zone Spaces'.
  ENDMETHOD.

ENDCLASS.
