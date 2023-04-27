defmodule Google.Ads.Googleads.V13.Errors.AssetErrorEnum.AssetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER_NOT_ON_ALLOWLIST_FOR_ASSET_TYPE, 13
  field :DUPLICATE_ASSET, 3
  field :DUPLICATE_ASSET_NAME, 4
  field :ASSET_DATA_IS_MISSING, 5
  field :CANNOT_MODIFY_ASSET_NAME, 6
  field :FIELD_INCOMPATIBLE_WITH_ASSET_TYPE, 7
  field :INVALID_CALL_TO_ACTION_TEXT, 8
  field :LEAD_FORM_INVALID_FIELDS_COMBINATION, 9
  field :LEAD_FORM_MISSING_AGREEMENT, 10
  field :INVALID_ASSET_STATUS, 11
  field :FIELD_CANNOT_BE_MODIFIED_FOR_ASSET_TYPE, 12
  field :SCHEDULES_CANNOT_OVERLAP, 14
  field :PROMOTION_CANNOT_SET_PERCENT_OFF_AND_MONEY_AMOUNT_OFF, 15
  field :PROMOTION_CANNOT_SET_PROMOTION_CODE_AND_ORDERS_OVER_AMOUNT, 16
  field :TOO_MANY_DECIMAL_PLACES_SPECIFIED, 17
  field :DUPLICATE_ASSETS_WITH_DIFFERENT_FIELD_VALUE, 18
  field :CALL_CARRIER_SPECIFIC_SHORT_NUMBER_NOT_ALLOWED, 19
  field :CALL_CUSTOMER_CONSENT_FOR_CALL_RECORDING_REQUIRED, 20
  field :CALL_DISALLOWED_NUMBER_TYPE, 21
  field :CALL_INVALID_CONVERSION_ACTION, 22
  field :CALL_INVALID_COUNTRY_CODE, 23
  field :CALL_INVALID_DOMESTIC_PHONE_NUMBER_FORMAT, 24
  field :CALL_INVALID_PHONE_NUMBER, 25
  field :CALL_PHONE_NUMBER_NOT_SUPPORTED_FOR_COUNTRY, 26
  field :CALL_PREMIUM_RATE_NUMBER_NOT_ALLOWED, 27
  field :CALL_VANITY_PHONE_NUMBER_NOT_ALLOWED, 28
  field :PRICE_HEADER_SAME_AS_DESCRIPTION, 29
  field :MOBILE_APP_INVALID_APP_ID, 30
  field :MOBILE_APP_INVALID_FINAL_URL_FOR_APP_DOWNLOAD_URL, 31
  field :NAME_REQUIRED_FOR_ASSET_TYPE, 32
  field :LEAD_FORM_LEGACY_QUALIFYING_QUESTIONS_DISALLOWED, 33
  field :NAME_CONFLICT_FOR_ASSET_TYPE, 34
  field :CANNOT_MODIFY_ASSET_SOURCE, 35
  field :CANNOT_MODIFY_AUTOMATICALLY_CREATED_ASSET, 36
  field :LEAD_FORM_LOCATION_ANSWER_TYPE_DISALLOWED, 37
end

defmodule Google.Ads.Googleads.V13.Errors.AssetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end