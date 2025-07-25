defmodule Google.Ads.Googleads.V20.Resources.LandingPageView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :unexpanded_final_url, 3,
    proto3_optional: true,
    type: :string,
    json_name: "unexpandedFinalUrl",
    deprecated: false
end
