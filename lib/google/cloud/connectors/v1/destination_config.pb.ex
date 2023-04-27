defmodule Google.Cloud.Connectors.V1.DestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :destinations, 2, repeated: true, type: Google.Cloud.Connectors.V1.Destination
end

defmodule Google.Cloud.Connectors.V1.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :service_attachment, 1, type: :string, json_name: "serviceAttachment", oneof: 0
  field :host, 2, type: :string, oneof: 0
  field :port, 3, type: :int32
end