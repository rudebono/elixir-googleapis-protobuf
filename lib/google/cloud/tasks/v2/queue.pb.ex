defmodule Google.Cloud.Tasks.V2.Queue.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :PAUSED | :DISABLED

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :DISABLED, 3
end
defmodule Google.Cloud.Tasks.V2.Queue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          app_engine_routing_override: Google.Cloud.Tasks.V2.AppEngineRouting.t() | nil,
          rate_limits: Google.Cloud.Tasks.V2.RateLimits.t() | nil,
          retry_config: Google.Cloud.Tasks.V2.RetryConfig.t() | nil,
          state: Google.Cloud.Tasks.V2.Queue.State.t(),
          purge_time: Google.Protobuf.Timestamp.t() | nil,
          stackdriver_logging_config: Google.Cloud.Tasks.V2.StackdriverLoggingConfig.t() | nil
        }

  defstruct name: "",
            app_engine_routing_override: nil,
            rate_limits: nil,
            retry_config: nil,
            state: :STATE_UNSPECIFIED,
            purge_time: nil,
            stackdriver_logging_config: nil

  field :name, 1, type: :string

  field :app_engine_routing_override, 2,
    type: Google.Cloud.Tasks.V2.AppEngineRouting,
    json_name: "appEngineRoutingOverride"

  field :rate_limits, 3, type: Google.Cloud.Tasks.V2.RateLimits, json_name: "rateLimits"
  field :retry_config, 4, type: Google.Cloud.Tasks.V2.RetryConfig, json_name: "retryConfig"
  field :state, 5, type: Google.Cloud.Tasks.V2.Queue.State, enum: true
  field :purge_time, 6, type: Google.Protobuf.Timestamp, json_name: "purgeTime"

  field :stackdriver_logging_config, 9,
    type: Google.Cloud.Tasks.V2.StackdriverLoggingConfig,
    json_name: "stackdriverLoggingConfig"
end
defmodule Google.Cloud.Tasks.V2.RateLimits do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_dispatches_per_second: float | :infinity | :negative_infinity | :nan,
          max_burst_size: integer,
          max_concurrent_dispatches: integer
        }

  defstruct max_dispatches_per_second: 0.0,
            max_burst_size: 0,
            max_concurrent_dispatches: 0

  field :max_dispatches_per_second, 1, type: :double, json_name: "maxDispatchesPerSecond"
  field :max_burst_size, 2, type: :int32, json_name: "maxBurstSize"
  field :max_concurrent_dispatches, 3, type: :int32, json_name: "maxConcurrentDispatches"
end
defmodule Google.Cloud.Tasks.V2.RetryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_attempts: integer,
          max_retry_duration: Google.Protobuf.Duration.t() | nil,
          min_backoff: Google.Protobuf.Duration.t() | nil,
          max_backoff: Google.Protobuf.Duration.t() | nil,
          max_doublings: integer
        }

  defstruct max_attempts: 0,
            max_retry_duration: nil,
            min_backoff: nil,
            max_backoff: nil,
            max_doublings: 0

  field :max_attempts, 1, type: :int32, json_name: "maxAttempts"
  field :max_retry_duration, 2, type: Google.Protobuf.Duration, json_name: "maxRetryDuration"
  field :min_backoff, 3, type: Google.Protobuf.Duration, json_name: "minBackoff"
  field :max_backoff, 4, type: Google.Protobuf.Duration, json_name: "maxBackoff"
  field :max_doublings, 5, type: :int32, json_name: "maxDoublings"
end
defmodule Google.Cloud.Tasks.V2.StackdriverLoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sampling_ratio: float | :infinity | :negative_infinity | :nan
        }

  defstruct sampling_ratio: 0.0

  field :sampling_ratio, 1, type: :double, json_name: "samplingRatio"
end
