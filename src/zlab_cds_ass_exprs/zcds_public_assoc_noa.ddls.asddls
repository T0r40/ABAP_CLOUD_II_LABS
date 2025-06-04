@AbapCatalog.sqlViewName: 'ZCDS_PUBLIC_ASS'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista con asociación publicada a ZCDS_AGENCY_MAX'
define view ZCDS_PUBLIC_ASSOC_NOA
  as select from /dmo/travel as travel
    association [1..1] to zcds_agency as _AGENCY
      on travel.agency_id = _AGENCY.AgencyId
{
  key travel.travel_id as TravelID,
      travel.agency_id as AgencyID,
      _AGENCY.Name as AgencyName
}
