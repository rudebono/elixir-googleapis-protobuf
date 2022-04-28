defmodule Google.Ads.Googleads.V10.Resources.AssetGroupProductGroupView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group: String.t(),
          asset_group_listing_group_filter: String.t()
        }

  defstruct resource_name: "",
            asset_group: "",
            asset_group_listing_group_filter: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false

  field :asset_group_listing_group_filter, 4,
    type: :string,
    json_name: "assetGroupListingGroupFilter",
    deprecated: false
end
