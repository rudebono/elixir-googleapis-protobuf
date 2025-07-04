defmodule Google.Ads.Googleads.V20.Resources.AdGroupSimulation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_id, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "adGroupId",
    deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V20.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V20.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 13,
    proto3_optional: true,
    type: :string,
    json_name: "startDate",
    deprecated: false

  field :end_date, 14,
    proto3_optional: true,
    type: :string,
    json_name: "endDate",
    deprecated: false

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V20.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :cpv_bid_point_list, 10,
    type: Google.Ads.Googleads.V20.Common.CpvBidSimulationPointList,
    json_name: "cpvBidPointList",
    oneof: 0,
    deprecated: false

  field :target_cpa_point_list, 9,
    type: Google.Ads.Googleads.V20.Common.TargetCpaSimulationPointList,
    json_name: "targetCpaPointList",
    oneof: 0,
    deprecated: false

  field :target_roas_point_list, 11,
    type: Google.Ads.Googleads.V20.Common.TargetRoasSimulationPointList,
    json_name: "targetRoasPointList",
    oneof: 0,
    deprecated: false
end
