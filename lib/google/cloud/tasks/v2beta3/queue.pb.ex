defmodule Google.Cloud.Tasks.V2beta3.Queue.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :PAUSED | :DISABLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :PAUSED, 2

  field :DISABLED, 3
end

defmodule Google.Cloud.Tasks.V2beta3.Queue.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :PULL | :PUSH

  field :TYPE_UNSPECIFIED, 0

  field :PULL, 1

  field :PUSH, 2
end

defmodule Google.Cloud.Tasks.V2beta3.Queue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queue_type: {atom, any},
          name: String.t(),
          rate_limits: Google.Cloud.Tasks.V2beta3.RateLimits.t() | nil,
          retry_config: Google.Cloud.Tasks.V2beta3.RetryConfig.t() | nil,
          state: Google.Cloud.Tasks.V2beta3.Queue.State.t(),
          purge_time: Google.Protobuf.Timestamp.t() | nil,
          task_ttl: Google.Protobuf.Duration.t() | nil,
          tombstone_ttl: Google.Protobuf.Duration.t() | nil,
          stackdriver_logging_config:
            Google.Cloud.Tasks.V2beta3.StackdriverLoggingConfig.t() | nil,
          type: Google.Cloud.Tasks.V2beta3.Queue.Type.t(),
          stats: Google.Cloud.Tasks.V2beta3.QueueStats.t() | nil
        }

  defstruct [
    :queue_type,
    :name,
    :rate_limits,
    :retry_config,
    :state,
    :purge_time,
    :task_ttl,
    :tombstone_ttl,
    :stackdriver_logging_config,
    :type,
    :stats
  ]

  oneof :queue_type, 0
  field :name, 1, type: :string
  field :app_engine_http_queue, 3, type: Google.Cloud.Tasks.V2beta3.AppEngineHttpQueue, oneof: 0
  field :rate_limits, 4, type: Google.Cloud.Tasks.V2beta3.RateLimits
  field :retry_config, 5, type: Google.Cloud.Tasks.V2beta3.RetryConfig
  field :state, 6, type: Google.Cloud.Tasks.V2beta3.Queue.State, enum: true
  field :purge_time, 7, type: Google.Protobuf.Timestamp
  field :task_ttl, 8, type: Google.Protobuf.Duration
  field :tombstone_ttl, 9, type: Google.Protobuf.Duration
  field :stackdriver_logging_config, 10, type: Google.Cloud.Tasks.V2beta3.StackdriverLoggingConfig
  field :type, 11, type: Google.Cloud.Tasks.V2beta3.Queue.Type, enum: true
  field :stats, 12, type: Google.Cloud.Tasks.V2beta3.QueueStats
end

defmodule Google.Cloud.Tasks.V2beta3.RateLimits do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_dispatches_per_second: float | :infinity | :negative_infinity | :nan,
          max_burst_size: integer,
          max_concurrent_dispatches: integer
        }

  defstruct [:max_dispatches_per_second, :max_burst_size, :max_concurrent_dispatches]

  field :max_dispatches_per_second, 1, type: :double
  field :max_burst_size, 2, type: :int32
  field :max_concurrent_dispatches, 3, type: :int32
end

defmodule Google.Cloud.Tasks.V2beta3.RetryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_attempts: integer,
          max_retry_duration: Google.Protobuf.Duration.t() | nil,
          min_backoff: Google.Protobuf.Duration.t() | nil,
          max_backoff: Google.Protobuf.Duration.t() | nil,
          max_doublings: integer
        }

  defstruct [:max_attempts, :max_retry_duration, :min_backoff, :max_backoff, :max_doublings]

  field :max_attempts, 1, type: :int32
  field :max_retry_duration, 2, type: Google.Protobuf.Duration
  field :min_backoff, 3, type: Google.Protobuf.Duration
  field :max_backoff, 4, type: Google.Protobuf.Duration
  field :max_doublings, 5, type: :int32
end

defmodule Google.Cloud.Tasks.V2beta3.StackdriverLoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sampling_ratio: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:sampling_ratio]

  field :sampling_ratio, 1, type: :double
end

defmodule Google.Cloud.Tasks.V2beta3.QueueStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks_count: integer,
          oldest_estimated_arrival_time: Google.Protobuf.Timestamp.t() | nil,
          executed_last_minute_count: integer,
          concurrent_dispatches_count: integer,
          effective_execution_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :tasks_count,
    :oldest_estimated_arrival_time,
    :executed_last_minute_count,
    :concurrent_dispatches_count,
    :effective_execution_rate
  ]

  field :tasks_count, 1, type: :int64
  field :oldest_estimated_arrival_time, 2, type: Google.Protobuf.Timestamp
  field :executed_last_minute_count, 3, type: :int64
  field :concurrent_dispatches_count, 4, type: :int64
  field :effective_execution_rate, 5, type: :double
end
