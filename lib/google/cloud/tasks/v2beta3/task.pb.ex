defmodule Google.Cloud.Tasks.V2beta3.Task.View do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_UNSPECIFIED | :BASIC | :FULL

  field :VIEW_UNSPECIFIED, 0

  field :BASIC, 1

  field :FULL, 2
end

defmodule Google.Cloud.Tasks.V2beta3.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload_type: {atom, any},
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          dispatch_deadline: Google.Protobuf.Duration.t() | nil,
          dispatch_count: integer,
          response_count: integer,
          first_attempt: Google.Cloud.Tasks.V2beta3.Attempt.t() | nil,
          last_attempt: Google.Cloud.Tasks.V2beta3.Attempt.t() | nil,
          view: Google.Cloud.Tasks.V2beta3.Task.View.t()
        }

  defstruct [
    :payload_type,
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

  oneof :payload_type, 0
  field :name, 1, type: :string

  field :app_engine_http_request, 3,
    type: Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest,
    oneof: 0

  field :http_request, 11, type: Google.Cloud.Tasks.V2beta3.HttpRequest, oneof: 0
  field :pull_message, 13, type: Google.Cloud.Tasks.V2beta3.PullMessage, oneof: 0
  field :schedule_time, 4, type: Google.Protobuf.Timestamp
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :dispatch_deadline, 12, type: Google.Protobuf.Duration
  field :dispatch_count, 6, type: :int32
  field :response_count, 7, type: :int32
  field :first_attempt, 8, type: Google.Cloud.Tasks.V2beta3.Attempt
  field :last_attempt, 9, type: Google.Cloud.Tasks.V2beta3.Attempt
  field :view, 10, type: Google.Cloud.Tasks.V2beta3.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta3.Attempt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          dispatch_time: Google.Protobuf.Timestamp.t() | nil,
          response_time: Google.Protobuf.Timestamp.t() | nil,
          response_status: Google.Rpc.Status.t() | nil
        }

  defstruct [:schedule_time, :dispatch_time, :response_time, :response_status]

  field :schedule_time, 1, type: Google.Protobuf.Timestamp
  field :dispatch_time, 2, type: Google.Protobuf.Timestamp
  field :response_time, 3, type: Google.Protobuf.Timestamp
  field :response_status, 4, type: Google.Rpc.Status
end
