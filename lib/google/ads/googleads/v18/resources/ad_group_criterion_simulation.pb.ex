defmodule Google.Ads.Googleads.V18.Resources.AdGroupCriterionSimulation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_id, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "adGroupId",
    deprecated: false

  field :criterion_id, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V18.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V18.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 11,
    proto3_optional: true,
    type: :string,
    json_name: "startDate",
    deprecated: false

  field :end_date, 12,
    proto3_optional: true,
    type: :string,
    json_name: "endDate",
    deprecated: false

  field :cpc_bid_point_list, 8,
    type: Google.Ads.Googleads.V18.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :percent_cpc_bid_point_list, 13,
    type: Google.Ads.Googleads.V18.Common.PercentCpcBidSimulationPointList,
    json_name: "percentCpcBidPointList",
    oneof: 0,
    deprecated: false
end
