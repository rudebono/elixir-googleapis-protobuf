defmodule Google.Ads.Googleads.V12.Resources.ExpandedLandingPageView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :expanded_final_url, 3,
    proto3_optional: true,
    type: :string,
    json_name: "expandedFinalUrl",
    deprecated: false
end