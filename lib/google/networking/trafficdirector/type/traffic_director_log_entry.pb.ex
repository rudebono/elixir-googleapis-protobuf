defmodule Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.ClientType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLIENT_TYPE_UNSPECIFIED
          | :ENVOY
          | :GRPC_JAVA
          | :GRPC_CPP
          | :GRPC_PYTHON
          | :GRPC_GO
          | :GRPC_RUBY
          | :GRPC_PHP
          | :GRPC_NODE
          | :GRPC_CSHARP
          | :UNKNOWN

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRANSPORT_API_VERSION_UNSPECIFIED | :V2 | :V3

  field :TRANSPORT_API_VERSION_UNSPECIFIED, 0

  field :V2, 1

  field :V3, 2
end

defmodule Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_id: String.t(),
          node_ip: String.t(),
          description: String.t(),
          client_type:
            Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.ClientType.t(),
          client_version: String.t(),
          transport_api_version:
            Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.TransportApiVersion.t()
        }

  defstruct [
    :node_id,
    :node_ip,
    :description,
    :client_type,
    :client_version,
    :transport_api_version
  ]

  field :node_id, 1, type: :string
  field :node_ip, 2, type: :string
  field :description, 4, type: :string

  field :client_type, 5,
    type: Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.ClientType,
    enum: true

  field :client_version, 6, type: :string

  field :transport_api_version, 7,
    type: Google.Networking.Trafficdirector.Type.TrafficDirectorLogEntry.TransportApiVersion,
    enum: true
end
