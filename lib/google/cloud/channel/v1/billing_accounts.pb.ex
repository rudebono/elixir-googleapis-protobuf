defmodule Google.Cloud.Channel.V1.BillingAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :currency_code, 4, type: :string, json_name: "currencyCode", deprecated: false
  field :region_code, 5, type: :string, json_name: "regionCode", deprecated: false
end