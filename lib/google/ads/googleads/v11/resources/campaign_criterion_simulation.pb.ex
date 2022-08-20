defmodule Google.Ads.Googleads.V11.Resources.CampaignCriterionSimulation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :point_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_id, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "campaignId",
    deprecated: false

  field :criterion_id, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V11.Enums.SimulationTypeEnum.SimulationType,
    enum: true,
    deprecated: false

  field :modification_method, 5,
    type:
      Google.Ads.Googleads.V11.Enums.SimulationModificationMethodEnum.SimulationModificationMethod,
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

  field :bid_modifier_point_list, 8,
    type: Google.Ads.Googleads.V11.Common.BidModifierSimulationPointList,
    json_name: "bidModifierPointList",
    oneof: 0,
    deprecated: false
end