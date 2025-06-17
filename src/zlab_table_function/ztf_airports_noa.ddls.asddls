@EndUserText.label: 'Table Function de aeropuertos con mandante y ciudad'
define table function ZTF_AIRPORTS_NOA
with parameters
@Environment.systemField: #CLIENT
    pClient : abap.clnt,
    pCity   : /dmo/city
returns {
    client     : abap.clnt;
    airport_id : /dmo/airport_id;
    name       : /dmo/airport_name;
    city       : /dmo/city;
    country    : land1;
}
implemented by method zcl_amdp_airport_noa=>get_airport_data;
