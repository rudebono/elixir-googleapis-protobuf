defmodule Google.Ads.Googleads.V11.Resources.PaidOrganicSearchTermView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :search_term, 3,
    proto3_optional: true,
    type: :string,
    json_name: "searchTerm",
    deprecated: false
end