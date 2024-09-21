defmodule Google.Type.PhoneNumber.ShortCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode"
  field :number, 2, type: :string
end

defmodule Google.Type.PhoneNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :kind, 0

  field :e164_number, 1, type: :string, json_name: "e164Number", oneof: 0
  field :short_code, 2, type: Google.Type.PhoneNumber.ShortCode, json_name: "shortCode", oneof: 0
  field :extension, 3, type: :string
end