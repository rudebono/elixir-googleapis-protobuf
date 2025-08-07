defmodule Google.Ads.Googleads.V21.Resources.CampaignSearchTermView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :search_term, 2,
    proto3_optional: true,
    type: :string,
    json_name: "searchTerm",
    deprecated: false

  field :campaign, 3, proto3_optional: true, type: :string, deprecated: false
end
