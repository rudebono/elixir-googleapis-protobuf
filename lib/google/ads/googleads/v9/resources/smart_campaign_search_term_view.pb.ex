defmodule Google.Ads.Googleads.V9.Resources.SmartCampaignSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: String.t(),
          campaign: String.t()
        }

  defstruct resource_name: "",
            search_term: "",
            campaign: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 2, type: :string, json_name: "searchTerm", deprecated: false
  field :campaign, 3, type: :string, deprecated: false
end
