defmodule Google.Ads.Googleads.V10.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 13, proto3_optional: true, type: :int64, deprecated: false

  field :campaign_draft, 14,
    proto3_optional: true,
    type: :string,
    json_name: "campaignDraft",
    deprecated: false

  field :name, 15, proto3_optional: true, type: :string
  field :description, 16, proto3_optional: true, type: :string

  field :traffic_split_percent, 17,
    proto3_optional: true,
    type: :int64,
    json_name: "trafficSplitPercent",
    deprecated: false

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V10.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    json_name: "trafficSplitType",
    enum: true,
    deprecated: false

  field :experiment_campaign, 18,
    proto3_optional: true,
    type: :string,
    json_name: "experimentCampaign",
    deprecated: false

  field :status, 9,
    type: Google.Ads.Googleads.V10.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true,
    deprecated: false

  field :long_running_operation, 19,
    proto3_optional: true,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false

  field :start_date, 20, proto3_optional: true, type: :string, json_name: "startDate"
  field :end_date, 21, proto3_optional: true, type: :string, json_name: "endDate"
end