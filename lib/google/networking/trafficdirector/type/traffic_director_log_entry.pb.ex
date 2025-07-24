defmodule Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.ClientType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLIENT_TYPE_UNSPECIFIED, 0
  field :ENVOY, 1
  field :GRPC_JAVA, 2
  field :GRPC_CPP, 3
  field :GRPC_PYTHON, 4
  field :GRPC_GO, 5
  field :GRPC_RUBY, 6
  field :GRPC_PHP, 7
  field :GRPC_NODE, 8
  field :GRPC_CSHARP, 9
  field :UNKNOWN, 10
end

defmodule Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.TransportApiVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSPORT_API_VERSION_UNSPECIFIED, 0
  field :V2, 1
  field :V3, 2
end

defmodule Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_id, 1, type: :string, json_name: "nodeId"
  field :node_ip, 2, type: :string, json_name: "nodeIp"
  field :description, 4, type: :string

  field :client_type, 5,
    type: Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.ClientType,
    json_name: "clientType",
    enum: true

  field :client_version, 6, type: :string, json_name: "clientVersion"

  field :transport_api_version, 7,
    type: Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.TransportApiVersion,
    json_name: "transportApiVersion",
    enum: true
end
