defmodule Google.Devtools.Build.V1.PublishLifecycleEventRequest.ServiceLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :NONINTERACTIVE | :INTERACTIVE

  field :NONINTERACTIVE, 0
  field :INTERACTIVE, 1
end
defmodule Google.Devtools.Build.V1.PublishLifecycleEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_level: Google.Devtools.Build.V1.PublishLifecycleEventRequest.ServiceLevel.t(),
          build_event: Google.Devtools.Build.V1.OrderedBuildEvent.t() | nil,
          stream_timeout: Google.Protobuf.Duration.t() | nil,
          notification_keywords: [String.t()],
          project_id: String.t(),
          check_preceding_lifecycle_events_present: boolean
        }

  defstruct service_level: :NONINTERACTIVE,
            build_event: nil,
            stream_timeout: nil,
            notification_keywords: [],
            project_id: "",
            check_preceding_lifecycle_events_present: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: Google.Devtools.Build.V1.StreamId.t() | nil,
          sequence_number: integer
        }

  defstruct stream_id: nil,
            sequence_number: 0

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"
end
defmodule Google.Devtools.Build.V1.OrderedBuildEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: Google.Devtools.Build.V1.StreamId.t() | nil,
          sequence_number: integer,
          event: Google.Devtools.Build.V1.BuildEvent.t() | nil
        }

  defstruct stream_id: nil,
            sequence_number: 0,
            event: nil

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"
  field :event, 3, type: Google.Devtools.Build.V1.BuildEvent
end
defmodule Google.Devtools.Build.V1.PublishBuildToolEventStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ordered_build_event: Google.Devtools.Build.V1.OrderedBuildEvent.t() | nil,
          notification_keywords: [String.t()],
          project_id: String.t(),
          check_preceding_lifecycle_events_present: boolean
        }

  defstruct ordered_build_event: nil,
            notification_keywords: [],
            project_id: "",
            check_preceding_lifecycle_events_present: false

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
  use GRPC.Service, name: "google.devtools.build.v1.PublishBuildEvent"

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
