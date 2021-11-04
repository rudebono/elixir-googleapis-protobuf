defmodule Google.Dataflow.V1beta3.JobMessageImportance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_MESSAGE_IMPORTANCE_UNKNOWN
          | :JOB_MESSAGE_DEBUG
          | :JOB_MESSAGE_DETAILED
          | :JOB_MESSAGE_BASIC
          | :JOB_MESSAGE_WARNING
          | :JOB_MESSAGE_ERROR

  field :JOB_MESSAGE_IMPORTANCE_UNKNOWN, 0
  field :JOB_MESSAGE_DEBUG, 1
  field :JOB_MESSAGE_DETAILED, 2
  field :JOB_MESSAGE_BASIC, 5
  field :JOB_MESSAGE_WARNING, 3
  field :JOB_MESSAGE_ERROR, 4
end

defmodule Google.Dataflow.V1beta3.AutoscalingEvent.AutoscalingEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNKNOWN
          | :TARGET_NUM_WORKERS_CHANGED
          | :CURRENT_NUM_WORKERS_CHANGED
          | :ACTUATION_FAILURE
          | :NO_CHANGE

  field :TYPE_UNKNOWN, 0
  field :TARGET_NUM_WORKERS_CHANGED, 1
  field :CURRENT_NUM_WORKERS_CHANGED, 2
  field :ACTUATION_FAILURE, 3
  field :NO_CHANGE, 4
end

defmodule Google.Dataflow.V1beta3.JobMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          time: Google.Protobuf.Timestamp.t() | nil,
          message_text: String.t(),
          message_importance: Google.Dataflow.V1beta3.JobMessageImportance.t()
        }

  defstruct [:id, :time, :message_text, :message_importance]

  field :id, 1, type: :string
  field :time, 2, type: Google.Protobuf.Timestamp
  field :message_text, 3, type: :string, json_name: "messageText"

  field :message_importance, 4,
    type: Google.Dataflow.V1beta3.JobMessageImportance,
    enum: true,
    json_name: "messageImportance"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StructuredMessage.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StructuredMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_text: String.t(),
          message_key: String.t(),
          parameters: [Google.Dataflow.V1beta3.StructuredMessage.Parameter.t()]
        }

  defstruct [:message_text, :message_key, :parameters]

  field :message_text, 1, type: :string, json_name: "messageText"
  field :message_key, 2, type: :string, json_name: "messageKey"
  field :parameters, 3, repeated: true, type: Google.Dataflow.V1beta3.StructuredMessage.Parameter

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.AutoscalingEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_num_workers: integer,
          target_num_workers: integer,
          event_type: Google.Dataflow.V1beta3.AutoscalingEvent.AutoscalingEventType.t(),
          description: Google.Dataflow.V1beta3.StructuredMessage.t() | nil,
          time: Google.Protobuf.Timestamp.t() | nil,
          worker_pool: String.t()
        }

  defstruct [
    :current_num_workers,
    :target_num_workers,
    :event_type,
    :description,
    :time,
    :worker_pool
  ]

  field :current_num_workers, 1, type: :int64, json_name: "currentNumWorkers"
  field :target_num_workers, 2, type: :int64, json_name: "targetNumWorkers"

  field :event_type, 3,
    type: Google.Dataflow.V1beta3.AutoscalingEvent.AutoscalingEventType,
    enum: true,
    json_name: "eventType"

  field :description, 4, type: Google.Dataflow.V1beta3.StructuredMessage
  field :time, 5, type: Google.Protobuf.Timestamp
  field :worker_pool, 7, type: :string, json_name: "workerPool"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.ListJobMessagesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          minimum_importance: Google.Dataflow.V1beta3.JobMessageImportance.t(),
          page_size: integer,
          page_token: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          location: String.t()
        }

  defstruct [
    :project_id,
    :job_id,
    :minimum_importance,
    :page_size,
    :page_token,
    :start_time,
    :end_time,
    :location
  ]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"

  field :minimum_importance, 3,
    type: Google.Dataflow.V1beta3.JobMessageImportance,
    enum: true,
    json_name: "minimumImportance"

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :location, 8, type: :string

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.ListJobMessagesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_messages: [Google.Dataflow.V1beta3.JobMessage.t()],
          next_page_token: String.t(),
          autoscaling_events: [Google.Dataflow.V1beta3.AutoscalingEvent.t()]
        }

  defstruct [:job_messages, :next_page_token, :autoscaling_events]

  field :job_messages, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.JobMessage,
    json_name: "jobMessages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :autoscaling_events, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.AutoscalingEvent,
    json_name: "autoscalingEvents"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.MessagesV1Beta3.Service do
  @moduledoc false
  use GRPC.Service, name: "google.dataflow.v1beta3.MessagesV1Beta3"

  rpc :ListJobMessages,
      Google.Dataflow.V1beta3.ListJobMessagesRequest,
      Google.Dataflow.V1beta3.ListJobMessagesResponse
end

defmodule Google.Dataflow.V1beta3.MessagesV1Beta3.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Dataflow.V1beta3.MessagesV1Beta3.Service
end
