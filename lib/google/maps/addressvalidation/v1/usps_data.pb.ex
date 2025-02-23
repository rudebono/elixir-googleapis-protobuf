defmodule Google.Maps.Addressvalidation.V1.UspsAddress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :first_address_line, 1, type: :string, json_name: "firstAddressLine"
  field :firm, 2, type: :string
  field :second_address_line, 3, type: :string, json_name: "secondAddressLine"
  field :urbanization, 4, type: :string
  field :city_state_zip_address_line, 5, type: :string, json_name: "cityStateZipAddressLine"
  field :city, 6, type: :string
  field :state, 7, type: :string
  field :zip_code, 8, type: :string, json_name: "zipCode"
  field :zip_code_extension, 9, type: :string, json_name: "zipCodeExtension"
end

defmodule Google.Maps.Addressvalidation.V1.UspsData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :standardized_address, 1,
    type: Google.Maps.Addressvalidation.V1.UspsAddress,
    json_name: "standardizedAddress"

  field :delivery_point_code, 2, type: :string, json_name: "deliveryPointCode"
  field :delivery_point_check_digit, 3, type: :string, json_name: "deliveryPointCheckDigit"
  field :dpv_confirmation, 4, type: :string, json_name: "dpvConfirmation"
  field :dpv_footnote, 5, type: :string, json_name: "dpvFootnote"
  field :dpv_cmra, 6, type: :string, json_name: "dpvCmra"
  field :dpv_vacant, 7, type: :string, json_name: "dpvVacant"
  field :dpv_no_stat, 8, type: :string, json_name: "dpvNoStat"
  field :dpv_no_stat_reason_code, 29, type: :int32, json_name: "dpvNoStatReasonCode"
  field :dpv_drop, 30, type: :string, json_name: "dpvDrop"
  field :dpv_throwback, 31, type: :string, json_name: "dpvThrowback"
  field :dpv_non_delivery_days, 32, type: :string, json_name: "dpvNonDeliveryDays"
  field :dpv_non_delivery_days_values, 33, type: :int32, json_name: "dpvNonDeliveryDaysValues"
  field :dpv_no_secure_location, 34, type: :string, json_name: "dpvNoSecureLocation"
  field :dpv_pbsa, 35, type: :string, json_name: "dpvPbsa"
  field :dpv_door_not_accessible, 36, type: :string, json_name: "dpvDoorNotAccessible"
  field :dpv_enhanced_delivery_code, 37, type: :string, json_name: "dpvEnhancedDeliveryCode"
  field :carrier_route, 9, type: :string, json_name: "carrierRoute"
  field :carrier_route_indicator, 10, type: :string, json_name: "carrierRouteIndicator"
  field :ews_no_match, 11, type: :bool, json_name: "ewsNoMatch"
  field :post_office_city, 12, type: :string, json_name: "postOfficeCity"
  field :post_office_state, 13, type: :string, json_name: "postOfficeState"
  field :abbreviated_city, 14, type: :string, json_name: "abbreviatedCity"
  field :fips_county_code, 15, type: :string, json_name: "fipsCountyCode"
  field :county, 16, type: :string
  field :elot_number, 17, type: :string, json_name: "elotNumber"
  field :elot_flag, 18, type: :string, json_name: "elotFlag"
  field :lacs_link_return_code, 19, type: :string, json_name: "lacsLinkReturnCode"
  field :lacs_link_indicator, 20, type: :string, json_name: "lacsLinkIndicator"
  field :po_box_only_postal_code, 21, type: :bool, json_name: "poBoxOnlyPostalCode"
  field :suitelink_footnote, 22, type: :string, json_name: "suitelinkFootnote"
  field :pmb_designator, 23, type: :string, json_name: "pmbDesignator"
  field :pmb_number, 24, type: :string, json_name: "pmbNumber"
  field :address_record_type, 25, type: :string, json_name: "addressRecordType"
  field :default_address, 26, type: :bool, json_name: "defaultAddress"
  field :error_message, 27, type: :string, json_name: "errorMessage"
  field :cass_processed, 28, type: :bool, json_name: "cassProcessed"
end
