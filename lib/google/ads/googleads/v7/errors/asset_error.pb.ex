defmodule Google.Ads.Googleads.V7.Errors.AssetErrorEnum.AssetError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
defmodule Google.Ads.Googleads.V7.Errors.AssetErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
