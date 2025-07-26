defmodule Google.Ads.Admanager.V1.Placement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :placement_id, 2, type: :int64, json_name: "placementId", deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :description, 4, proto3_optional: true, type: :string, deprecated: false

  field :placement_code, 5,
    proto3_optional: true,
    type: :string,
    json_name: "placementCode",
    deprecated: false

  field :status, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.PlacementStatusEnum.PlacementStatus,
    enum: true,
    deprecated: false

  field :targeted_ad_units, 7,
    repeated: true,
    type: :string,
    json_name: "targetedAdUnits",
    deprecated: false

  field :update_time, 9,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
