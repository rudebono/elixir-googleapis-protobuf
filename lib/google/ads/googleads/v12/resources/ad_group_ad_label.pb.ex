defmodule Google.Ads.Googleads.V12.Resources.AdGroupAdLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_ad, 4,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupAd",
    deprecated: false

  field :label, 5, proto3_optional: true, type: :string, deprecated: false
end