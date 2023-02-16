defmodule Google.Ads.Googleads.V13.Resources.GroupPlacementView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :placement, 6, proto3_optional: true, type: :string, deprecated: false

  field :display_name, 7,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :target_url, 8,
    proto3_optional: true,
    type: :string,
    json_name: "targetUrl",
    deprecated: false

  field :placement_type, 5,
    type: Google.Ads.Googleads.V13.Enums.PlacementTypeEnum.PlacementType,
    json_name: "placementType",
    enum: true,
    deprecated: false
end