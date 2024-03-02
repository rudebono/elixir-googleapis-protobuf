defmodule Google.Cloud.Securitycenter.V2.Connection.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :ICMP, 1
  field :TCP, 6
  field :UDP, 17
  field :GRE, 47
  field :ESP, 50
end

defmodule Google.Cloud.Securitycenter.V2.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :destination_ip, 1, type: :string, json_name: "destinationIp"
  field :destination_port, 2, type: :int32, json_name: "destinationPort"
  field :source_ip, 3, type: :string, json_name: "sourceIp"
  field :source_port, 4, type: :int32, json_name: "sourcePort"
  field :protocol, 5, type: Google.Cloud.Securitycenter.V2.Connection.Protocol, enum: true
end