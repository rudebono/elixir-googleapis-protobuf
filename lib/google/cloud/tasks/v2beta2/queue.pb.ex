defmodule Google.Cloud.Tasks.V2beta2.Queue.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :PAUSED, 2
  field :DISABLED, 3
end

defmodule Google.Cloud.Tasks.V2beta2.Queue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :target_type, 0

  field :name, 1, type: :string

  field :app_engine_http_target, 3,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget,
    json_name: "appEngineHttpTarget",
    oneof: 0

  field :pull_target, 4,
    type: Google.Cloud.Tasks.V2beta2.PullTarget,
    json_name: "pullTarget",
    oneof: 0

  field :http_target, 17,
    type: Google.Cloud.Tasks.V2beta2.HttpTarget,
    json_name: "httpTarget",
    oneof: 0

  field :rate_limits, 5, type: Google.Cloud.Tasks.V2beta2.RateLimits, json_name: "rateLimits"
  field :retry_config, 6, type: Google.Cloud.Tasks.V2beta2.RetryConfig, json_name: "retryConfig"
  field :state, 7, type: Google.Cloud.Tasks.V2beta2.Queue.State, enum: true
  field :purge_time, 8, type: Google.Protobuf.Timestamp, json_name: "purgeTime"
  field :task_ttl, 9, type: Google.Protobuf.Duration, json_name: "taskTtl"
  field :tombstone_ttl, 10, type: Google.Protobuf.Duration, json_name: "tombstoneTtl"
  field :stats, 16, type: Google.Cloud.Tasks.V2beta2.QueueStats, deprecated: false
end

defmodule Google.Cloud.Tasks.V2beta2.RateLimits do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :max_tasks_dispatched_per_second, 1,
    type: :double,
    json_name: "maxTasksDispatchedPerSecond"

  field :max_burst_size, 2, type: :int32, json_name: "maxBurstSize"
  field :max_concurrent_tasks, 3, type: :int32, json_name: "maxConcurrentTasks"
end

defmodule Google.Cloud.Tasks.V2beta2.RetryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :num_attempts, 0

  field :max_attempts, 1, type: :int32, json_name: "maxAttempts", oneof: 0
  field :unlimited_attempts, 2, type: :bool, json_name: "unlimitedAttempts", oneof: 0
  field :max_retry_duration, 3, type: Google.Protobuf.Duration, json_name: "maxRetryDuration"
  field :min_backoff, 4, type: Google.Protobuf.Duration, json_name: "minBackoff"
  field :max_backoff, 5, type: Google.Protobuf.Duration, json_name: "maxBackoff"
  field :max_doublings, 6, type: :int32, json_name: "maxDoublings"
end

defmodule Google.Cloud.Tasks.V2beta2.QueueStats do
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