defmodule Google.Ads.Googleads.V8.Resources.SmartCampaignSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          campaign: String.t()
        }

  defstruct [:resource_name, :search_term, :campaign]

  field :resource_name, 1, type: :string
  field :search_term, 2, type: :string
  field :campaign, 3, type: :string
end
