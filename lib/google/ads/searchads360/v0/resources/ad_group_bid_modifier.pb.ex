defmodule Google.Ads.Searchads360.V0.Resources.AdGroupBidModifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :bid_modifier, 15, proto3_optional: true, type: :double, json_name: "bidModifier"
end