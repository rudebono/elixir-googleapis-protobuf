defmodule Google.Ads.Googleads.V4.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          point_list: {atom, any},
          resource_name: String.t(),
          campaign_id: Google.Protobuf.Int64Value.t() | nil,
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.SimulationTypeEnum.SimulationType.t(),
          modification_method:
            Google.Ads.Googleads.V4.Enums.SimulationModificationMethodEnum.SimulationModificationMethod.t(),
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :point_list,
    :resource_name,
    :campaign_id,
    :criterion_id,
    :type,
    :modification_method,
    :start_date,
    :end_date
  ]

  oneof :point_list, 0
  field :resource_name, 1, type: :string
  field :campaign_id, 2, type: Google.Protobuf.Int64Value
  field :criterion_id, 3, type: Google.Protobuf.Int64Value

  field :type, 4,
    type: Google.Ads.Googleads.V4.Enums.SimulationTypeEnum.SimulationType,
    enum: true

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V4.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
    enum: true

  field :start_date, 6, type: Google.Protobuf.StringValue
  field :end_date, 7, type: Google.Protobuf.StringValue

  field :bid_modifier_point_list, 8,
    type: Google.Ads.Googleads.V4.Common.BidModifierSimulationPointList,
    oneof: 0
end
