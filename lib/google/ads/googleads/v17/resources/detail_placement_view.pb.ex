defmodule Google.Ads.Googleads.V17.Resources.DetailPlacementView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :placement, 7, proto3_optional: true, type: :string, deprecated: false

  field :display_name, 8,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :group_placement_target_url, 9,
    proto3_optional: true,
    type: :string,
    json_name: "groupPlacementTargetUrl",
    deprecated: false

  field :target_url, 10,
    proto3_optional: true,
    type: :string,
    json_name: "targetUrl",
    deprecated: false

  field :placement_type, 6,
    type: Google.Ads.Googleads.V17.Enums.PlacementTypeEnum.PlacementType,
    json_name: "placementType",
    enum: true,
    deprecated: false
end
