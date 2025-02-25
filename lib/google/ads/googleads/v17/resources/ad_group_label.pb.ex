defmodule Google.Ads.Googleads.V17.Resources.AdGroupLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group, 4,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :label, 5, proto3_optional: true, type: :string, deprecated: false
end
