defmodule Google.Ads.Googleads.V9.Resources.AdGroupFeed do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 7, proto3_optional: true, type: :string, deprecated: false

  field :ad_group, 8,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V9.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderTypes",
    enum: true

  field :matching_function, 5,
    type: Google.Ads.Googleads.V9.Common.MatchingFunction,
    json_name: "matchingFunction"

  field :status, 6,
    type: Google.Ads.Googleads.V9.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true,
    deprecated: false
end