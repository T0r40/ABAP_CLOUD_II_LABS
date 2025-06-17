@EndUserText.label: 'Table Function para top 10 aeropuertos'
define table function ztf_top_airports_noa
returns {
  client     : abap.clnt;
  airport_id : /dmo/airport_id;
  name       : /dmo/airport_name;
  city       : /dmo/city;
  country    : land1;
}
implemented by method zcl_amdp_airport_noa=>get_top_airports;
