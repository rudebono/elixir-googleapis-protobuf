defmodule Google.Ads.Googleads.V5.Errors.AssetErrorEnum.AssetError do
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

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CUSTOMER_NOT_ON_ALLOWLIST_FOR_ASSET_TYPE, 13

  field :DUPLICATE_ASSET, 3

  field :DUPLICATE_ASSET_NAME, 4

  field :ASSET_DATA_IS_MISSING, 5

  field :CANNOT_MODIFY_ASSET_NAME, 6
end

defmodule Google.Ads.Googleads.V5.Errors.AssetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
