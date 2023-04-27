defmodule Google.Ads.Googleads.V12.Resources.CarrierConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, proto3_optional: true, type: :int64, deprecated: false
  field :name, 6, proto3_optional: true, type: :string, deprecated: false

  field :country_code, 7,
    proto3_optional: true,
    type: :string,
    json_name: "countryCode",
    deprecated: false
end