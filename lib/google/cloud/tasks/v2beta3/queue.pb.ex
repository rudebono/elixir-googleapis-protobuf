defmodule Google.Cloud.Tasks.V2beta3.Queue.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :DISABLED, 3
end

defmodule Google.Cloud.Tasks.V2beta3.Queue.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PULL, 1
  field :PUSH, 2
end

defmodule Google.Cloud.Tasks.V2beta3.Queue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :queue_type, 0

  field :name, 1, type: :string

  field :app_engine_http_queue, 3,
    type: Google.Cloud.Tasks.V2beta3.AppEngineHttpQueue,
    json_name: "appEngineHttpQueue",
    oneof: 0

  field :http_target, 13, type: Google.Cloud.Tasks.V2beta3.HttpTarget, json_name: "httpTarget"
  field :rate_limits, 4, type: Google.Cloud.Tasks.V2beta3.RateLimits, json_name: "rateLimits"
  field :retry_config, 5, type: Google.Cloud.Tasks.V2beta3.RetryConfig, json_name: "retryConfig"
  field :state, 6, type: Google.Cloud.Tasks.V2beta3.Queue.State, enum: true
  field :purge_time, 7, type: Google.Protobuf.Timestamp, json_name: "purgeTime"
  field :task_ttl, 8, type: Google.Protobuf.Duration, json_name: "taskTtl"
  field :tombstone_ttl, 9, type: Google.Protobuf.Duration, json_name: "tombstoneTtl"

  field :stackdriver_logging_config, 10,
    type: Google.Cloud.Tasks.V2beta3.StackdriverLoggingConfig,
    json_name: "stackdriverLoggingConfig"

  field :type, 11, type: Google.Cloud.Tasks.V2beta3.Queue.Type, enum: true, deprecated: false
  field :stats, 12, type: Google.Cloud.Tasks.V2beta3.QueueStats, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta3.RateLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_dispatches_per_second, 1, type: :double, json_name: "maxDispatchesPerSecond"
  field :max_burst_size, 2, type: :int32, json_name: "maxBurstSize"
  field :max_concurrent_dispatches, 3, type: :int32, json_name: "maxConcurrentDispatches"
end

defmodule Google.Cloud.Tasks.V2beta3.RetryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_attempts, 1, type: :int32, json_name: "maxAttempts"
  field :max_retry_duration, 2, type: Google.Protobuf.Duration, json_name: "maxRetryDuration"
  field :min_backoff, 3, type: Google.Protobuf.Duration, json_name: "minBackoff"
  field :max_backoff, 4, type: Google.Protobuf.Duration, json_name: "maxBackoff"
  field :max_doublings, 5, type: :int32, json_name: "maxDoublings"
end

defmodule Google.Cloud.Tasks.V2beta3.StackdriverLoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sampling_ratio, 1, type: :double, json_name: "samplingRatio"
end

defmodule Google.Cloud.Tasks.V2beta3.QueueStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tasks_count, 1, type: :int64, json_name: "tasksCount", deprecated: false

  field :oldest_estimated_arrival_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "oldestEstimatedArrivalTime",
    deprecated: false

  field :executed_last_minute_count, 3,
    type: :int64,
    json_name: "executedLastMinuteCount",
    deprecated: false

  field :concurrent_dispatches_count, 4,
    type: :int64,
    json_name: "concurrentDispatchesCount",
    deprecated: false

  field :effective_execution_rate, 5,
    type: :double,
    json_name: "effectiveExecutionRate",
    deprecated: false
end