defmodule Google.Ads.Googleads.V16.Common.Money do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :currency_code, 3, proto3_optional: true, type: :string, json_name: "currencyCode"
  field :amount_micros, 4, proto3_optional: true, type: :int64, json_name: "amountMicros"
end