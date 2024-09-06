defmodule Google.Cloud.Discoveryengine.V1.WriteUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :user_event, 2,
    proto3_optional: true,
    type: Google.Cloud.Discoveryengine.V1.UserEvent,
    json_name: "userEvent",
    deprecated: false

  field :write_async, 3, type: :bool, json_name: "writeAsync"
end

defmodule Google.Cloud.Discoveryengine.V1.CollectUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_event, 2, type: :string, json_name: "userEvent", deprecated: false
  field :uri, 3, proto3_optional: true, type: :string
  field :ets, 4, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Discoveryengine.V1.UserEventService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.UserEventService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :WriteUserEvent,
      Google.Cloud.Discoveryengine.V1.WriteUserEventRequest,
      Google.Cloud.Discoveryengine.V1.UserEvent

  rpc :CollectUserEvent,
      Google.Cloud.Discoveryengine.V1.CollectUserEventRequest,
      Google.Api.HttpBody

  rpc :PurgeUserEvents,
      Google.Cloud.Discoveryengine.V1.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Discoveryengine.V1.ImportUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.UserEventService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.UserEventService.Service
end