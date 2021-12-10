defmodule Google.Ads.Googleads.V7.Resources.CampaignSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list:
            {:cpc_bid_point_list,
             Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList.t() | nil}
            | {:target_cpa_point_list,
               Google.Ads.Googleads.V7.Common.TargetCpaSimulationPointList.t() | nil}
            | {:target_roas_point_list,
               Google.Ads.Googleads.V7.Common.TargetRoasSimulationPointList.t() | nil}
            | {:target_impression_share_point_list,
               Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPointList.t() | nil}
            | {:budget_point_list,
               Google.Ads.Googleads.V7.Common.BudgetSimulationPointList.t() | nil},
          resource_name: String.t(),
          campaign_id: integer,
          type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: String.t(),
          end_date: String.t()
        }

  defstruct point_list: nil,
            resource_name: "",
            campaign_id: 0,
            type: :UNSPECIFIED,
            modification_method: :UNSPECIFIED,
            start_date: "",
            end_date: ""

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign_id, 2, type: :int64, json_name: "campaignId", deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    json_name: "modificationMethod",
    enum: true,
    deprecated: false

  field :start_date, 5, type: :string, json_name: "startDate", deprecated: false
  field :end_date, 6, type: :string, json_name: "endDate", deprecated: false

  field :cpc_bid_point_list, 7,
    type: Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0,
    deprecated: false

  field :target_cpa_point_list, 8,
    type: Google.Ads.Googleads.V7.Common.TargetCpaSimulationPointList,
    json_name: "targetCpaPointList",
    oneof: 0,
    deprecated: false

  field :target_roas_point_list, 9,
    type: Google.Ads.Googleads.V7.Common.TargetRoasSimulationPointList,
    json_name: "targetRoasPointList",
    oneof: 0,
    deprecated: false

  field :target_impression_share_point_list, 10,
    type: Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPointList,
    json_name: "targetImpressionSharePointList",
    oneof: 0,
    deprecated: false

  field :budget_point_list, 11,
    type: Google.Ads.Googleads.V7.Common.BudgetSimulationPointList,
    json_name: "budgetPointList",
    oneof: 0,
    deprecated: false
end
