defmodule Google.Cloud.Securitycenter.V1.Indicator do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ip_addresses, 1, repeated: true, type: :string, json_name: "ipAddresses"
  field :domains, 2, repeated: true, type: :string
end
