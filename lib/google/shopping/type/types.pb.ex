defmodule Google.Shopping.Type.Price do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :amount_micros, 1, proto3_optional: true, type: :int64, json_name: "amountMicros"
  field :currency_code, 2, proto3_optional: true, type: :string, json_name: "currencyCode"
end

defmodule Google.Shopping.Type.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string
  field :value, 2, proto3_optional: true, type: :string

  field :group_values, 3,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "groupValues"
end