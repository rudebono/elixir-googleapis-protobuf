defmodule Google.Ads.Googleads.V10.Errors.AssetLinkErrorEnum.AssetLinkError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PINNING_UNSUPPORTED, 2
  field :UNSUPPORTED_FIELD_TYPE, 3
  field :FIELD_TYPE_INCOMPATIBLE_WITH_ASSET_TYPE, 4
  field :FIELD_TYPE_INCOMPATIBLE_WITH_CAMPAIGN_TYPE, 5
  field :INCOMPATIBLE_ADVERTISING_CHANNEL_TYPE, 6
  field :IMAGE_NOT_WITHIN_SPECIFIED_DIMENSION_RANGE, 7
  field :INVALID_PINNED_FIELD, 8
  field :MEDIA_BUNDLE_ASSET_FILE_SIZE_TOO_LARGE, 9
  field :NOT_ENOUGH_AVAILABLE_ASSET_LINKS_FOR_VALID_COMBINATION, 10
  field :NOT_ENOUGH_AVAILABLE_ASSET_LINKS_WITH_FALLBACK, 11
  field :NOT_ENOUGH_AVAILABLE_ASSET_LINKS_WITH_FALLBACK_FOR_VALID_COMBINATION, 12
  field :YOUTUBE_VIDEO_REMOVED, 13
  field :YOUTUBE_VIDEO_TOO_LONG, 14
  field :YOUTUBE_VIDEO_TOO_SHORT, 15
  field :INVALID_STATUS, 17
  field :YOUTUBE_VIDEO_DURATION_NOT_DEFINED, 18
end
defmodule Google.Ads.Googleads.V10.Errors.AssetLinkErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
