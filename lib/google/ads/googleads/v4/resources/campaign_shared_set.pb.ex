defmodule Google.Ads.Googleads.V4.Resources.CampaignSharedSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          shared_set: Google.Protobuf.StringValue.t() | nil,
          status:
            Google.Ads.Googleads.V4.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus.t()
        }

  defstruct [:resource_name, :campaign, :shared_set, :status]

  field :resource_name, 1, type: :string
  field :campaign, 3, type: Google.Protobuf.StringValue
  field :shared_set, 4, type: Google.Protobuf.StringValue

  field :status, 2,
    type: Google.Ads.Googleads.V4.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true
end
