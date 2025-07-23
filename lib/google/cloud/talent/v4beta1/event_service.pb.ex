defmodule Google.Cloud.Talent.V4beta1.CreateClientEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :client_event, 2,
    type: Google.Cloud.Talent.V4beta1.ClientEvent,
    json_name: "clientEvent",
    deprecated: false
end

defmodule Google.Cloud.Talent.V4beta1.EventService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.talent.v4beta1.EventService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateClientEvent,
      Google.Cloud.Talent.V4beta1.CreateClientEventRequest,
      Google.Cloud.Talent.V4beta1.ClientEvent
end

defmodule Google.Cloud.Talent.V4beta1.EventService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.EventService.Service
end
