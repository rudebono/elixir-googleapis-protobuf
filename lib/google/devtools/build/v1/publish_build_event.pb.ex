defmodule Google.Devtools.Build.V1.PublishLifecycleEventRequest.ServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NONINTERACTIVE, 0
  field :INTERACTIVE, 1
end

defmodule Google.Devtools.Build.V1.PublishLifecycleEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_level, 1,
    type: Google.Devtools.Build.V1.PublishLifecycleEventRequest.ServiceLevel,
    json_name: "serviceLevel",
    enum: true

  field :build_event, 2,
    type: Google.Devtools.Build.V1.OrderedBuildEvent,
    json_name: "buildEvent",
    deprecated: false

  field :stream_timeout, 3, type: Google.Protobuf.Duration, json_name: "streamTimeout"

  field :notification_keywords, 4,
    repeated: true,
    type: :string,
    json_name: "notificationKeywords"

  field :project_id, 6, type: :string, json_name: "projectId", deprecated: false

  field :check_preceding_lifecycle_events_present, 7,
    type: :bool,
    json_name: "checkPrecedingLifecycleEventsPresent"
end

defmodule Google.Devtools.Build.V1.PublishBuildToolEventStreamResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"
end

defmodule Google.Devtools.Build.V1.OrderedBuildEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"
  field :event, 3, type: Google.Devtools.Build.V1.BuildEvent
end

defmodule Google.Devtools.Build.V1.PublishBuildToolEventStreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ordered_build_event, 4,
    type: Google.Devtools.Build.V1.OrderedBuildEvent,
    json_name: "orderedBuildEvent",
    deprecated: false

  field :notification_keywords, 5,
    repeated: true,
    type: :string,
    json_name: "notificationKeywords"

  field :project_id, 6, type: :string, json_name: "projectId", deprecated: false

  field :check_preceding_lifecycle_events_present, 7,
    type: :bool,
    json_name: "checkPrecedingLifecycleEventsPresent"
end

defmodule Google.Devtools.Build.V1.PublishBuildEvent.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.build.v1.PublishBuildEvent",
    protoc_gen_elixir_version: "0.12.0"

  rpc :PublishLifecycleEvent,
      Google.Devtools.Build.V1.PublishLifecycleEventRequest,
      Google.Protobuf.Empty

  rpc :PublishBuildToolEventStream,
      stream(Google.Devtools.Build.V1.PublishBuildToolEventStreamRequest),
      stream(Google.Devtools.Build.V1.PublishBuildToolEventStreamResponse)
end

defmodule Google.Devtools.Build.V1.PublishBuildEvent.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Build.V1.PublishBuildEvent.Service
end