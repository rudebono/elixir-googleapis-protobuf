defmodule Google.Ads.Googleads.V4.Resources.CampaignLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          label: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :campaign, :label]

  field :resource_name, 1, type: :string
  field :campaign, 2, type: Google.Protobuf.StringValue
  field :label, 3, type: Google.Protobuf.StringValue
end
