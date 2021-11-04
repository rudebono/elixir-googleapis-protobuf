defmodule Google.Cloud.Tasks.V2.Task.View do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_UNSPECIFIED | :BASIC | :FULL

  field :VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Tasks.V2.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_type:
            {:app_engine_http_request, Google.Cloud.Tasks.V2.AppEngineHttpRequest.t() | nil}
            | {:http_request, Google.Cloud.Tasks.V2.HttpRequest.t() | nil},
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          dispatch_deadline: Google.Protobuf.Duration.t() | nil,
          dispatch_count: integer,
          response_count: integer,
          first_attempt: Google.Cloud.Tasks.V2.Attempt.t() | nil,
          last_attempt: Google.Cloud.Tasks.V2.Attempt.t() | nil,
          view: Google.Cloud.Tasks.V2.Task.View.t()
        }

  defstruct [
    :message_type,
    :name,
    :schedule_time,
    :create_time,
    :dispatch_deadline,
    :dispatch_count,
    :response_count,
    :first_attempt,
    :last_attempt,
    :view
  ]

  oneof :message_type, 0

  field :name, 1, type: :string

  field :app_engine_http_request, 2,
    type: Google.Cloud.Tasks.V2.AppEngineHttpRequest,
    json_name: "appEngineHttpRequest",
    oneof: 0

  field :http_request, 3,
    type: Google.Cloud.Tasks.V2.HttpRequest,
    json_name: "httpRequest",
    oneof: 0

  field :schedule_time, 4, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :dispatch_deadline, 6, type: Google.Protobuf.Duration, json_name: "dispatchDeadline"
  field :dispatch_count, 7, type: :int32, json_name: "dispatchCount"
  field :response_count, 8, type: :int32, json_name: "responseCount"
  field :first_attempt, 9, type: Google.Cloud.Tasks.V2.Attempt, json_name: "firstAttempt"
  field :last_attempt, 10, type: Google.Cloud.Tasks.V2.Attempt, json_name: "lastAttempt"
  field :view, 11, type: Google.Cloud.Tasks.V2.Task.View, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.Attempt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          dispatch_time: Google.Protobuf.Timestamp.t() | nil,
          response_time: Google.Protobuf.Timestamp.t() | nil,
          response_status: Google.Rpc.Status.t() | nil
        }

  defstruct [:schedule_time, :dispatch_time, :response_time, :response_status]

  field :schedule_time, 1, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :dispatch_time, 2, type: Google.Protobuf.Timestamp, json_name: "dispatchTime"
  field :response_time, 3, type: Google.Protobuf.Timestamp, json_name: "responseTime"
  field :response_status, 4, type: Google.Rpc.Status, json_name: "responseStatus"

  def transform_module(), do: nil
end
