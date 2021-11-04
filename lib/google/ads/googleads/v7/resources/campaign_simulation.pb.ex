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

  defstruct [
    :point_list,
    :resource_name,
    :campaign_id,
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :campaign_id, 2, type: :int64, json_name: "campaignId"

  field :type, 3,
    type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true,
    json_name: "modificationMethod"

  field :start_date, 5, type: :string, json_name: "startDate"
  field :end_date, 6, type: :string, json_name: "endDate"

  field :cpc_bid_point_list, 7,
    type: Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList,
    json_name: "cpcBidPointList",
    oneof: 0

  field :target_cpa_point_list, 8,
    type: Google.Ads.Googleads.V7.Common.TargetCpaSimulationPointList,
    json_name: "targetCpaPointList",
    oneof: 0

  field :target_roas_point_list, 9,
    type: Google.Ads.Googleads.V7.Common.TargetRoasSimulationPointList,
    json_name: "targetRoasPointList",
    oneof: 0

  field :target_impression_share_point_list, 10,
    type: Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPointList,
    json_name: "targetImpressionSharePointList",
    oneof: 0

  field :budget_point_list, 11,
    type: Google.Ads.Googleads.V7.Common.BudgetSimulationPointList,
    json_name: "budgetPointList",
    oneof: 0

  def transform_module(), do: nil
end
