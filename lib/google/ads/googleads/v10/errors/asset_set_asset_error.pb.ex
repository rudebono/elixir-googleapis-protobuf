defmodule Google.Ads.Googleads.V10.Errors.AssetSetAssetErrorEnum.AssetSetAssetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_ASSET_TYPE
          | :INVALID_ASSET_SET_TYPE
          | :DUPLICATE_EXTERNAL_KEY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_ASSET_TYPE, 2
  field :INVALID_ASSET_SET_TYPE, 3
  field :DUPLICATE_EXTERNAL_KEY, 4
end
defmodule Google.Ads.Googleads.V10.Errors.AssetSetAssetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
