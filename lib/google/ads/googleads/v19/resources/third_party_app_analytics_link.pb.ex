defmodule Google.Ads.Googleads.V19.Resources.ThirdPartyAppAnalyticsLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :shareable_link_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "shareableLinkId",
    deprecated: false
end
