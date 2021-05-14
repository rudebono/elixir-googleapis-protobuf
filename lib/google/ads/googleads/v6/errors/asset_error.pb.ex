defmodule Google.Ads.Googleads.V6.Errors.AssetErrorEnum.AssetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CUSTOMER_NOT_ON_ALLOWLIST_FOR_ASSET_TYPE
          | :DUPLICATE_ASSET
          | :DUPLICATE_ASSET_NAME
          | :ASSET_DATA_IS_MISSING
          | :CANNOT_MODIFY_ASSET_NAME
          | :FIELD_INCOMPATIBLE_WITH_ASSET_TYPE
          | :INVALID_CALL_TO_ACTION_TEXT
          | :LEAD_FORM_INVALID_FIELDS_COMBINATION
          | :LEAD_FORM_MISSING_AGREEMENT
          | :INVALID_ASSET_STATUS
          | :FIELD_CANNOT_BE_MODIFIED_FOR_ASSET_TYPE

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
end

defmodule Google.Ads.Googleads.V6.Errors.AssetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
