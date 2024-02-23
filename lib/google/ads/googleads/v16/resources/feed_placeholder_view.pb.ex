defmodule Google.Ads.Googleads.V16.Resources.FeedPlaceholderView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :placeholder_type, 2,
    type: Google.Ads.Googleads.V16.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true,
    deprecated: false
end