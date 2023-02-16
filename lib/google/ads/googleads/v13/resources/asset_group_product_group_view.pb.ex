defmodule Google.Ads.Googleads.V13.Resources.AssetGroupProductGroupView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false

  field :asset_group_listing_group_filter, 4,
    type: :string,
    json_name: "assetGroupListingGroupFilter",
    deprecated: false
end