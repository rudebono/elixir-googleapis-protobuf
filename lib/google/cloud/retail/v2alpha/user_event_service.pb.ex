defmodule Google.Cloud.Retail.V2alpha.RejoinUserEventsRequest.UserEventRejoinScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED, 0
  field :JOINED_EVENTS, 1
  field :UNJOINED_EVENTS, 2
end

defmodule Google.Cloud.Retail.V2alpha.WriteUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :user_event, 2,
    type: Google.Cloud.Retail.V2alpha.UserEvent,
    json_name: "userEvent",
    deprecated: false

  field :write_async, 3, type: :bool, json_name: "writeAsync"
end

defmodule Google.Cloud.Retail.V2alpha.CollectUserEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :conversion_rule, 0

  field :prebuilt_rule, 6, type: :string, json_name: "prebuiltRule", oneof: 0
  field :parent, 1, type: :string, deprecated: false
  field :user_event, 2, type: :string, json_name: "userEvent", deprecated: false
  field :uri, 3, type: :string
  field :ets, 4, type: :int64
  field :raw_json, 5, type: :string, json_name: "rawJson"
end

defmodule Google.Cloud.Retail.V2alpha.RejoinUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :user_event_rejoin_scope, 2,
    type: Google.Cloud.Retail.V2alpha.RejoinUserEventsRequest.UserEventRejoinScope,
    json_name: "userEventRejoinScope",
    enum: true
end

defmodule Google.Cloud.Retail.V2alpha.RejoinUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rejoined_user_events_count, 1, type: :int64, json_name: "rejoinedUserEventsCount"
end

defmodule Google.Cloud.Retail.V2alpha.RejoinUserEventsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Retail.V2alpha.UserEventService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.UserEventService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :WriteUserEvent,
      Google.Cloud.Retail.V2alpha.WriteUserEventRequest,
      Google.Cloud.Retail.V2alpha.UserEvent

  rpc :CollectUserEvent, Google.Cloud.Retail.V2alpha.CollectUserEventRequest, Google.Api.HttpBody

  rpc :PurgeUserEvents,
      Google.Cloud.Retail.V2alpha.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Retail.V2alpha.ImportUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ExportUserEvents,
      Google.Cloud.Retail.V2alpha.ExportUserEventsRequest,
      Google.Longrunning.Operation

  rpc :RejoinUserEvents,
      Google.Cloud.Retail.V2alpha.RejoinUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2alpha.UserEventService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.UserEventService.Service
end
