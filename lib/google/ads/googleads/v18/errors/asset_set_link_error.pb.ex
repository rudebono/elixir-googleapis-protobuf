defmodule Google.Ads.Googleads.V18.Errors.AssetSetLinkErrorEnum.AssetSetLinkError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INCOMPATIBLE_ADVERTISING_CHANNEL_TYPE, 2
  field :DUPLICATE_FEED_LINK, 3
  field :INCOMPATIBLE_ASSET_SET_TYPE_WITH_CAMPAIGN_TYPE, 4
  field :DUPLICATE_ASSET_SET_LINK, 5
  field :ASSET_SET_LINK_CANNOT_BE_REMOVED, 6
end

defmodule Google.Ads.Googleads.V18.Errors.AssetSetLinkErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end