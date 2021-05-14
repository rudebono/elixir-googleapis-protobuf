defmodule Google.Cloud.Tasks.V2beta2.Task.View do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_UNSPECIFIED | :BASIC | :FULL

  field :VIEW_UNSPECIFIED, 0

  field :BASIC, 1

  field :FULL, 2
end

defmodule Google.Cloud.Tasks.V2beta2.Task do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload_type: {atom, any},
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Cloud.Tasks.V2beta2.TaskStatus.t() | nil,
          view: Google.Cloud.Tasks.V2beta2.Task.View.t()
        }

  defstruct [:payload_type, :name, :schedule_time, :create_time, :status, :view]

  oneof :payload_type, 0
  field :name, 1, type: :string

  field :app_engine_http_request, 3,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest,
    oneof: 0

  field :pull_message, 4, type: Google.Cloud.Tasks.V2beta2.PullMessage, oneof: 0
  field :schedule_time, 5, type: Google.Protobuf.Timestamp
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :status, 7, type: Google.Cloud.Tasks.V2beta2.TaskStatus
  field :view, 8, type: Google.Cloud.Tasks.V2beta2.Task.View, enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.TaskStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attempt_dispatch_count: integer,
          attempt_response_count: integer,
          first_attempt_status: Google.Cloud.Tasks.V2beta2.AttemptStatus.t() | nil,
          last_attempt_status: Google.Cloud.Tasks.V2beta2.AttemptStatus.t() | nil
        }

  defstruct [
    :attempt_dispatch_count,
    :attempt_response_count,
    :first_attempt_status,
    :last_attempt_status
  ]

  field :attempt_dispatch_count, 1, type: :int32
  field :attempt_response_count, 2, type: :int32
  field :first_attempt_status, 3, type: Google.Cloud.Tasks.V2beta2.AttemptStatus
  field :last_attempt_status, 4, type: Google.Cloud.Tasks.V2beta2.AttemptStatus
end

defmodule Google.Cloud.Tasks.V2beta2.AttemptStatus do
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
