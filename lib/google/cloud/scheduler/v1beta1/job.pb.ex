defmodule Google.Cloud.Scheduler.V1beta1.Job.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ENABLED | :PAUSED | :DISABLED | :UPDATE_FAILED

  field :STATE_UNSPECIFIED, 0

  field :ENABLED, 1

  field :PAUSED, 2

  field :DISABLED, 3

  field :UPDATE_FAILED, 4
end

defmodule Google.Cloud.Scheduler.V1beta1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          name: String.t(),
          description: String.t(),
          schedule: String.t(),
          time_zone: String.t(),
          user_update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Scheduler.V1beta1.Job.State.t(),
          status: Google.Rpc.Status.t() | nil,
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          last_attempt_time: Google.Protobuf.Timestamp.t() | nil,
          retry_config: Google.Cloud.Scheduler.V1beta1.RetryConfig.t() | nil,
          attempt_deadline: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :target,
    :name,
    :description,
    :schedule,
    :time_zone,
    :user_update_time,
    :state,
    :status,
    :schedule_time,
    :last_attempt_time,
    :retry_config,
    :attempt_deadline
  ]

  oneof :target, 0
  field :name, 1, type: :string
  field :description, 2, type: :string
  field :pubsub_target, 4, type: Google.Cloud.Scheduler.V1beta1.PubsubTarget, oneof: 0

  field :app_engine_http_target, 5,
    type: Google.Cloud.Scheduler.V1beta1.AppEngineHttpTarget,
    oneof: 0

  field :http_target, 6, type: Google.Cloud.Scheduler.V1beta1.HttpTarget, oneof: 0
  field :schedule, 20, type: :string
  field :time_zone, 21, type: :string
  field :user_update_time, 9, type: Google.Protobuf.Timestamp
  field :state, 10, type: Google.Cloud.Scheduler.V1beta1.Job.State, enum: true
  field :status, 11, type: Google.Rpc.Status
  field :schedule_time, 17, type: Google.Protobuf.Timestamp
  field :last_attempt_time, 18, type: Google.Protobuf.Timestamp
  field :retry_config, 19, type: Google.Cloud.Scheduler.V1beta1.RetryConfig
  field :attempt_deadline, 22, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Scheduler.V1beta1.RetryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          retry_count: integer,
          max_retry_duration: Google.Protobuf.Duration.t() | nil,
          min_backoff_duration: Google.Protobuf.Duration.t() | nil,
          max_backoff_duration: Google.Protobuf.Duration.t() | nil,
          max_doublings: integer
        }

  defstruct [
    :retry_count,
    :max_retry_duration,
    :min_backoff_duration,
    :max_backoff_duration,
    :max_doublings
  ]

  field :retry_count, 1, type: :int32
  field :max_retry_duration, 2, type: Google.Protobuf.Duration
  field :min_backoff_duration, 3, type: Google.Protobuf.Duration
  field :max_backoff_duration, 4, type: Google.Protobuf.Duration
  field :max_doublings, 5, type: :int32
end
