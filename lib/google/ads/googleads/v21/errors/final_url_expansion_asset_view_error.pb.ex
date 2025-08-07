defmodule Google.Ads.Googleads.V21.Errors.FinalUrlExpansionAssetViewErrorEnum.FinalUrlExpansionAssetViewError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MISSING_REQUIRED_FILTER, 2
  field :REQUIRES_ADVERTISING_CHANNEL_TYPE_FILTER, 3
  field :INVALID_ADVERTISING_CHANNEL_TYPE_IN_FILTER, 4
  field :CANNOT_SELECT_ASSET_GROUP, 5
  field :CANNOT_SELECT_AD_GROUP, 6
  field :REQUIRES_FILTER_BY_SINGLE_RESOURCE, 7
  field :CANNOT_SELECT_BOTH_AD_GROUP_AND_ASSET_GROUP, 8
  field :CANNOT_FILTER_BY_BOTH_AD_GROUP_AND_ASSET_GROUP, 9
end

defmodule Google.Ads.Googleads.V21.Errors.FinalUrlExpansionAssetViewErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
