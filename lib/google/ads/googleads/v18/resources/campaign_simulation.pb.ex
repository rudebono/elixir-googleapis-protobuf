defmodule Google.Ads.Googleads.V18.Resources.CampaignSimulation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign_id, 2, type: :int64, json_name: "campaignId", deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V18.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V18.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 5, type: :string, json_name: "startDate", deprecated: false
  field :end_date, 6, type: :string, json_name: "endDate", deprecated: false

  field :cpc_bid_point_list, 7,
    type: Google.Ads.Googleads.V18.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :target_cpa_point_list, 8,
    type: Google.Ads.Googleads.V18.Common.TargetCpaSimulationPointList,
    json_name: "targetCpaPointList",
    oneof: 0,
    deprecated: false

  field :target_roas_point_list, 9,
    type: Google.Ads.Googleads.V18.Common.TargetRoasSimulationPointList,
    json_name: "targetRoasPointList",
    oneof: 0,
    deprecated: false

  field :target_impression_share_point_list, 10,
    type: Google.Ads.Googleads.V18.Common.TargetImpressionShareSimulationPointList,
    json_name: "targetImpressionSharePointList",
    oneof: 0,
    deprecated: false

  field :budget_point_list, 11,
    type: Google.Ads.Googleads.V18.Common.BudgetSimulationPointList,
    json_name: "budgetPointList",
    oneof: 0,
    deprecated: false
end