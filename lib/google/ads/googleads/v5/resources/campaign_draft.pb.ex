defmodule Google.Ads.Googleads.V5.Resources.CampaignDraft do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          draft_id: Google.Protobuf.Int64Value.t() | nil,
          base_campaign: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          draft_campaign: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V5.Enums.CampaignDraftStatusEnum.CampaignDraftStatus.t(),
          has_experiment_running: Google.Protobuf.BoolValue.t() | nil,
          long_running_operation: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :draft_id,
    :base_campaign,
    :name,
    :draft_campaign,
    :status,
    :has_experiment_running,
    :long_running_operation
  ]

  field :resource_name, 1, type: :string
  field :draft_id, 2, type: Google.Protobuf.Int64Value
  field :base_campaign, 3, type: Google.Protobuf.StringValue
  field :name, 4, type: Google.Protobuf.StringValue
  field :draft_campaign, 5, type: Google.Protobuf.StringValue

  field :status, 6,
    type: Google.Ads.Googleads.V5.Enums.CampaignDraftStatusEnum.CampaignDraftStatus,
    enum: true

  field :has_experiment_running, 7, type: Google.Protobuf.BoolValue
  field :long_running_operation, 8, type: Google.Protobuf.StringValue
end
