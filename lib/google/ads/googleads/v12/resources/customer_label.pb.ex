defmodule Google.Ads.Googleads.V12.Resources.CustomerLabel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :customer, 4, proto3_optional: true, type: :string, deprecated: false
  field :label, 5, proto3_optional: true, type: :string, deprecated: false
end