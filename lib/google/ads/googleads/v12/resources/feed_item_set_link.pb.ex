defmodule Google.Ads.Googleads.V12.Resources.FeedItemSetLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed_item, 2, type: :string, json_name: "feedItem", deprecated: false
  field :feed_item_set, 3, type: :string, json_name: "feedItemSet", deprecated: false
end