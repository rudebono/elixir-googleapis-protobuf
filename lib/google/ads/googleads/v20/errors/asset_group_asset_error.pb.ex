defmodule Google.Ads.Googleads.V20.Errors.AssetGroupAssetErrorEnum.AssetGroupAssetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_RESOURCE, 2
  field :EXPANDABLE_TAGS_NOT_ALLOWED_IN_DESCRIPTION, 3
  field :AD_CUSTOMIZER_NOT_SUPPORTED, 4
  field :HOTEL_PROPERTY_ASSET_NOT_LINKED_TO_CAMPAIGN, 5
end

defmodule Google.Ads.Googleads.V20.Errors.AssetGroupAssetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
