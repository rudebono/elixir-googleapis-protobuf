defmodule Google.Cloud.Securitycenter.V1.Connection.Protocol do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROTOCOL_UNSPECIFIED | :ICMP | :TCP | :UDP | :GRE | :ESP

  field :PROTOCOL_UNSPECIFIED, 0
  field :ICMP, 1
  field :TCP, 6
  field :UDP, 17
  field :GRE, 47
  field :ESP, 50
end
defmodule Google.Cloud.Securitycenter.V1.Connection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_ip: String.t(),
          destination_port: integer,
          source_ip: String.t(),
          source_port: integer,
          protocol: Google.Cloud.Securitycenter.V1.Connection.Protocol.t()
        }

  defstruct destination_ip: "",
            destination_port: 0,
            source_ip: "",
            source_port: 0,
            protocol: :PROTOCOL_UNSPECIFIED

  field :destination_ip, 1, type: :string, json_name: "destinationIp"
  field :destination_port, 2, type: :int32, json_name: "destinationPort"
  field :source_ip, 3, type: :string, json_name: "sourceIp"
  field :source_port, 4, type: :int32, json_name: "sourcePort"
  field :protocol, 5, type: Google.Cloud.Securitycenter.V1.Connection.Protocol, enum: true
end
