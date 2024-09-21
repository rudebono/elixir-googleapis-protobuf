defmodule Google.Ads.Googleads.V16.Resources.CampaignDraft do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :draft_id, 9, proto3_optional: true, type: :int64, json_name: "draftId", deprecated: false

  field :base_campaign, 10,
    proto3_optional: true,
    type: :string,
    json_name: "baseCampaign",
    deprecated: false

  field :name, 11, proto3_optional: true, type: :string

  field :draft_campaign, 12,
    proto3_optional: true,
    type: :string,
    json_name: "draftCampaign",
    deprecated: false

  field :status, 6,
    type: Google.Ads.Googleads.V16.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true,
    deprecated: false

  field :has_experiment_running, 13,
    proto3_optional: true,
    type: :bool,
    json_name: "hasExperimentRunning",
    deprecated: false

  field :long_running_operation, 14,
    proto3_optional: true,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false
end