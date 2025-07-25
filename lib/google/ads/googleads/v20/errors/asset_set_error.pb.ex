defmodule Google.Ads.Googleads.V20.Errors.AssetSetErrorEnum.AssetSetError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_ASSET_SET_NAME, 2
  field :INVALID_PARENT_ASSET_SET_TYPE, 3
  field :ASSET_SET_SOURCE_INCOMPATIBLE_WITH_PARENT_ASSET_SET, 4
  field :ASSET_SET_TYPE_CANNOT_BE_LINKED_TO_CUSTOMER, 5
  field :INVALID_CHAIN_IDS, 6
  field :LOCATION_SYNC_ASSET_SET_DOES_NOT_SUPPORT_RELATIONSHIP_TYPE, 7
  field :NOT_UNIQUE_ENABLED_LOCATION_SYNC_TYPED_ASSET_SET, 8
  field :INVALID_PLACE_IDS, 9
  field :OAUTH_INFO_INVALID, 11
  field :OAUTH_INFO_MISSING, 12
  field :CANNOT_DELETE_AS_ENABLED_LINKAGES_EXIST, 10
end

defmodule Google.Ads.Googleads.V20.Errors.AssetSetErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
