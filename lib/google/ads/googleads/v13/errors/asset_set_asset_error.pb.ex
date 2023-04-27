defmodule Google.Ads.Googleads.V13.Errors.AssetSetAssetErrorEnum.AssetSetAssetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_ASSET_TYPE, 2
  field :INVALID_ASSET_SET_TYPE, 3
  field :DUPLICATE_EXTERNAL_KEY, 4
  field :PARENT_LINKAGE_DOES_NOT_EXIST, 5
end

defmodule Google.Ads.Googleads.V13.Errors.AssetSetAssetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end