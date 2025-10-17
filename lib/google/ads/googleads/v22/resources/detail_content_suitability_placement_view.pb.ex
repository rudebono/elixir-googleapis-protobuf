defmodule Google.Ads.Googleads.V22.Resources.DetailContentSuitabilityPlacementView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :placement, 3, type: :string, deprecated: false

  field :placement_type, 4,
    type: Google.Ads.Googleads.V22.Enums.PlacementTypeEnum.PlacementType,
    json_name: "placementType",
    enum: true,
    deprecated: false

  field :target_url, 5, type: :string, json_name: "targetUrl", deprecated: false
end
