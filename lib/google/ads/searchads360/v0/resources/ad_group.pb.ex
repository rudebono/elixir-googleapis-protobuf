defmodule Google.Ads.Searchads360.V0.Resources.AdGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 34, proto3_optional: true, type: :int64, deprecated: false
  field :name, 35, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true,
    deprecated: false

  field :ad_rotation_mode, 22,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    json_name: "adRotationMode",
    enum: true

  field :cpc_bid_micros, 39, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
end