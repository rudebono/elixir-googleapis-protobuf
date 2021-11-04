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
          project_id: String.t()
        }

  defstruct [:service_level, :build_event, :stream_timeout, :notification_keywords, :project_id]

  field :service_level, 1,
    type: Google.Devtools.Build.V1.PublishLifecycleEventRequest.ServiceLevel,
    enum: true,
    json_name: "serviceLevel"

  field :build_event, 2, type: Google.Devtools.Build.V1.OrderedBuildEvent, json_name: "buildEvent"
  field :stream_timeout, 3, type: Google.Protobuf.Duration, json_name: "streamTimeout"

  field :notification_keywords, 4,
    repeated: true,
    type: :string,
    json_name: "notificationKeywords"

  field :project_id, 6, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Build.V1.PublishBuildToolEventStreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: Google.Devtools.Build.V1.StreamId.t() | nil,
          sequence_number: integer
        }

  defstruct [:stream_id, :sequence_number]

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Build.V1.OrderedBuildEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: Google.Devtools.Build.V1.StreamId.t() | nil,
          sequence_number: integer,
          event: Google.Devtools.Build.V1.BuildEvent.t() | nil
        }

  defstruct [:stream_id, :sequence_number, :event]

  field :stream_id, 1, type: Google.Devtools.Build.V1.StreamId, json_name: "streamId"
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"
  field :event, 3, type: Google.Devtools.Build.V1.BuildEvent

  def transform_module(), do: nil
end

defmodule Google.Devtools.Build.V1.PublishBuildToolEventStreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ordered_build_event: Google.Devtools.Build.V1.OrderedBuildEvent.t() | nil,
          notification_keywords: [String.t()],
          project_id: String.t()
        }

  defstruct [:ordered_build_event, :notification_keywords, :project_id]

  field :ordered_build_event, 4,
    type: Google.Devtools.Build.V1.OrderedBuildEvent,
    json_name: "orderedBuildEvent"

  field :notification_keywords, 5,
    repeated: true,
    type: :string,
    json_name: "notificationKeywords"

  field :project_id, 6, type: :string, json_name: "projectId"

  def transform_module(), do: nil
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
