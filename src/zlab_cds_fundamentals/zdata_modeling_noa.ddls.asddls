@AbapCatalog.sqlViewName: 'ZDATA_MODELING'
@EndUserText.label: 'Vista de clientes con nombre y apellido'
define view ZDATA_MODELING_NOA
  as select from /dmo/customer
{
  key customer_id                      as CustomerID,
      first_name                       as FirstName,
      last_name                        as LastName,
      country_code                     as Country,
      $session.system_date             as SystemDate,
      $session.client                  as Client,
      cast( customer_id as abap.int8 ) as CustomerID_User,

      case country_code
        when 'US' then 'United States'
        when 'DE' then 'Germany'
        else 'Other Country'
      end                              as CountryName
}
