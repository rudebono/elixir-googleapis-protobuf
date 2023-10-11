defmodule Google.Cloud.Discoveryengine.V1alpha.WriteUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :user_event, 2,
    proto3_optional: true,
    type: Google.Cloud.Discoveryengine.V1alpha.UserEvent,
    json_name: "userEvent",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CollectUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_event, 2, type: :string, json_name: "userEvent", deprecated: false
  field :uri, 3, proto3_optional: true, type: :string
  field :ets, 4, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UserEventService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.UserEventService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :WriteUserEvent,
      Google.Cloud.Discoveryengine.V1alpha.WriteUserEventRequest,
      Google.Cloud.Discoveryengine.V1alpha.UserEvent

  rpc :CollectUserEvent,
      Google.Cloud.Discoveryengine.V1alpha.CollectUserEventRequest,
      Google.Api.HttpBody

  rpc :PurgeUserEvents,
      Google.Cloud.Discoveryengine.V1alpha.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UserEventService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.UserEventService.Service
end