defmodule Google.Ads.Googleads.V10.Errors.AssetSetLinkErrorEnum.AssetSetLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INCOMPATIBLE_ADVERTISING_CHANNEL_TYPE
          | :DUPLICATE_FEED_LINK
          | :INCOMPATIBLE_ASSET_SET_TYPE_WITH_CAMPAIGN_TYPE
          | :DUPLICATE_ASSET_SET_LINK
          | :ASSET_SET_LINK_CANNOT_BE_REMOVED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INCOMPATIBLE_ADVERTISING_CHANNEL_TYPE, 2
  field :DUPLICATE_FEED_LINK, 3
  field :INCOMPATIBLE_ASSET_SET_TYPE_WITH_CAMPAIGN_TYPE, 4
  field :DUPLICATE_ASSET_SET_LINK, 5
  field :ASSET_SET_LINK_CANNOT_BE_REMOVED, 6
end
defmodule Google.Ads.Googleads.V10.Errors.AssetSetLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
