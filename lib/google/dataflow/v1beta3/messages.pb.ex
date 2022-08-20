defmodule Google.Dataflow.V1beta3.JobMessageImportance do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :JOB_MESSAGE_IMPORTANCE_UNKNOWN, 0
  field :JOB_MESSAGE_DEBUG, 1
  field :JOB_MESSAGE_DETAILED, 2
  field :JOB_MESSAGE_BASIC, 5
  field :JOB_MESSAGE_WARNING, 3
  field :JOB_MESSAGE_ERROR, 4
end

defmodule Google.Dataflow.V1beta3.AutoscalingEvent.AutoscalingEventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNKNOWN, 0
  field :TARGET_NUM_WORKERS_CHANGED, 1
  field :CURRENT_NUM_WORKERS_CHANGED, 2
  field :ACTUATION_FAILURE, 3
  field :NO_CHANGE, 4
end

defmodule Google.Dataflow.V1beta3.JobMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :time, 2, type: Google.Protobuf.Timestamp
  field :message_text, 3, type: :string, json_name: "messageText"

  field :message_importance, 4,
    type: Google.Dataflow.V1beta3.JobMessageImportance,
    json_name: "messageImportance",
    enum: true
end

defmodule Google.Dataflow.V1beta3.StructuredMessage.Parameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Dataflow.V1beta3.StructuredMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message_text, 1, type: :string, json_name: "messageText"
  field :message_key, 2, type: :string, json_name: "messageKey"
  field :parameters, 3, repeated: true, type: Google.Dataflow.V1beta3.StructuredMessage.Parameter
end

defmodule Google.Dataflow.V1beta3.AutoscalingEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :current_num_workers, 1, type: :int64, json_name: "currentNumWorkers"
  field :target_num_workers, 2, type: :int64, json_name: "targetNumWorkers"

  field :event_type, 3,
    type: Google.Dataflow.V1beta3.AutoscalingEvent.AutoscalingEventType,
    json_name: "eventType",
    enum: true

  field :description, 4, type: Google.Dataflow.V1beta3.StructuredMessage
  field :time, 5, type: Google.Protobuf.Timestamp
  field :worker_pool, 7, type: :string, json_name: "workerPool"
end

defmodule Google.Dataflow.V1beta3.ListJobMessagesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"

  field :minimum_importance, 3,
    type: Google.Dataflow.V1beta3.JobMessageImportance,
    json_name: "minimumImportance",
    enum: true

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :location, 8, type: :string
end

defmodule Google.Dataflow.V1beta3.ListJobMessagesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job_messages, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.JobMessage,
    json_name: "jobMessages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :autoscaling_events, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.AutoscalingEvent,
    json_name: "autoscalingEvents"
end

defmodule Google.Dataflow.V1beta3.MessagesV1Beta3.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.dataflow.v1beta3.MessagesV1Beta3",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListJobMessages,
      Google.Dataflow.V1beta3.ListJobMessagesRequest,
      Google.Dataflow.V1beta3.ListJobMessagesResponse
end

defmodule Google.Dataflow.V1beta3.MessagesV1Beta3.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Dataflow.V1beta3.MessagesV1Beta3.Service
end