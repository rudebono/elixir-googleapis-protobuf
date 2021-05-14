defmodule Google.Ads.Googleads.V7.Resources.CampaignSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
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
  field :resource_name, 1, type: :string
  field :campaign_id, 2, type: :int64

  field :type, 3,
    type: Google.Ads.Googleads.V7.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 4,
    type:
      Google.Ads.Googleads.V7.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 5, type: :string
  field :end_date, 6, type: :string

  field :cpc_bid_point_list, 7,
    type: Google.Ads.Googleads.V7.Common.CpcBidSimulationPointList,
    oneof: 0

  field :target_cpa_point_list, 8,
    type: Google.Ads.Googleads.V7.Common.TargetCpaSimulationPointList,
    oneof: 0

  field :target_roas_point_list, 9,
    type: Google.Ads.Googleads.V7.Common.TargetRoasSimulationPointList,
    oneof: 0

  field :target_impression_share_point_list, 10,
    type: Google.Ads.Googleads.V7.Common.TargetImpressionShareSimulationPointList,
    oneof: 0

  field :budget_point_list, 11,
    type: Google.Ads.Googleads.V7.Common.BudgetSimulationPointList,
    oneof: 0
end
