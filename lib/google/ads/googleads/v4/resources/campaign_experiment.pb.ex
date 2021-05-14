defmodule Google.Ads.Googleads.V4.Resources.CampaignExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          campaign_draft: Google.Protobuf.StringValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          traffic_split_percent: Google.Protobuf.Int64Value.t() | nil,
          traffic_split_type:
            Google.Ads.Googleads.V4.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType.t(),
          experiment_campaign: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V4.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus.t(),
          long_running_operation: Google.Protobuf.StringValue.t() | nil,
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :id,
    :campaign_draft,
    :name,
    :description,
    :traffic_split_percent,
    :traffic_split_type,
    :experiment_campaign,
    :status,
    :long_running_operation,
    :start_date,
    :end_date
  ]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :campaign_draft, 3, type: Google.Protobuf.StringValue
  field :name, 4, type: Google.Protobuf.StringValue
  field :description, 5, type: Google.Protobuf.StringValue
  field :traffic_split_percent, 6, type: Google.Protobuf.Int64Value

  field :traffic_split_type, 7,
    type:
      Google.Ads.Googleads.V4.Enums.CampaignExperimentTrafficSplitTypeEnum.CampaignExperimentTrafficSplitType,
    enum: true

  field :experiment_campaign, 8, type: Google.Protobuf.StringValue

  field :status, 9,
    type: Google.Ads.Googleads.V4.Enums.CampaignExperimentStatusEnum.CampaignExperimentStatus,
    enum: true

  field :long_running_operation, 10, type: Google.Protobuf.StringValue
  field :start_date, 11, type: Google.Protobuf.StringValue
  field :end_date, 12, type: Google.Protobuf.StringValue
end
