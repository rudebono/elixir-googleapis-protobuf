defmodule Google.Ads.Googleads.V18.Resources.CurrencyConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :code, 6, proto3_optional: true, type: :string, deprecated: false
  field :name, 7, proto3_optional: true, type: :string, deprecated: false
  field :symbol, 8, proto3_optional: true, type: :string, deprecated: false

  field :billable_unit_micros, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "billableUnitMicros",
    deprecated: false
end
