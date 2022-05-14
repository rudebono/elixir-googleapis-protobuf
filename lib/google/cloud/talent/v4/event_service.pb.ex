defmodule Google.Cloud.Talent.V4.CreateClientEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :client_event, 2,
    type: Google.Cloud.Talent.V4.ClientEvent,
    json_name: "clientEvent",
    deprecated: false
end
defmodule Google.Cloud.Talent.V4.EventService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.talent.v4.EventService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateClientEvent,
      Google.Cloud.Talent.V4.CreateClientEventRequest,
      Google.Cloud.Talent.V4.ClientEvent
end

defmodule Google.Cloud.Talent.V4.EventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4.EventService.Service
end
