defmodule Google.Ads.Googleads.V9.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :placeholder_type, 2,
    type: Google.Ads.Googleads.V9.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true,
    deprecated: false
end