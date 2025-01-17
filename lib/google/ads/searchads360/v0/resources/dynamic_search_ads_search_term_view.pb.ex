defmodule Google.Ads.Searchads360.V0.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :landing_page, 11,
    proto3_optional: true,
    type: :string,
    json_name: "landingPage",
    deprecated: false
end
