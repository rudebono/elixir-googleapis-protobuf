defmodule Google.Ads.Googleads.V9.Resources.SmartCampaignSearchTermView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :search_term, 2, type: :string, json_name: "searchTerm", deprecated: false
  field :campaign, 3, type: :string, deprecated: false
end