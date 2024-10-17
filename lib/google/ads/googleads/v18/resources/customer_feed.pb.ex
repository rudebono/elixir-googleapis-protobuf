defmodule Google.Ads.Googleads.V18.Resources.CustomerFeed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 6, proto3_optional: true, type: :string, deprecated: false

  field :placeholder_types, 3,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderTypes",
    enum: true

  field :matching_function, 4,
    type: Google.Ads.Googleads.V18.Common.MatchingFunction,
    json_name: "matchingFunction"

  field :status, 5,
    type: Google.Ads.Googleads.V18.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true,
    deprecated: false
end