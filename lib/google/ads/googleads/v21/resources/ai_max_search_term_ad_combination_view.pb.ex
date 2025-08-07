defmodule Google.Ads.Googleads.V21.Resources.AiMaxSearchTermAdCombinationView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group, 2,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :search_term, 3,
    proto3_optional: true,
    type: :string,
    json_name: "searchTerm",
    deprecated: false

  field :landing_page, 4,
    proto3_optional: true,
    type: :string,
    json_name: "landingPage",
    deprecated: false

  field :headline, 5, proto3_optional: true, type: :string, deprecated: false
end
