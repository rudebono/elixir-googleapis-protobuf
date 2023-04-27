defmodule Google.Cloud.Scheduler.V1.Job.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :PAUSED, 2
  field :DISABLED, 3
  field :UPDATE_FAILED, 4
end

defmodule Google.Cloud.Scheduler.V1.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :target, 0

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :pubsub_target, 4,
    type: Google.Cloud.Scheduler.V1.PubsubTarget,
    json_name: "pubsubTarget",
    oneof: 0

  field :app_engine_http_target, 5,
    type: Google.Cloud.Scheduler.V1.AppEngineHttpTarget,
    json_name: "appEngineHttpTarget",
    oneof: 0

  field :http_target, 6,
    type: Google.Cloud.Scheduler.V1.HttpTarget,
    json_name: "httpTarget",
    oneof: 0

  field :schedule, 20, type: :string
  field :time_zone, 21, type: :string, json_name: "timeZone"
  field :user_update_time, 9, type: Google.Protobuf.Timestamp, json_name: "userUpdateTime"
  field :state, 10, type: Google.Cloud.Scheduler.V1.Job.State, enum: true
  field :status, 11, type: Google.Rpc.Status
  field :schedule_time, 17, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :last_attempt_time, 18, type: Google.Protobuf.Timestamp, json_name: "lastAttemptTime"
  field :retry_config, 19, type: Google.Cloud.Scheduler.V1.RetryConfig, json_name: "retryConfig"
  field :attempt_deadline, 22, type: Google.Protobuf.Duration, json_name: "attemptDeadline"
end

defmodule Google.Cloud.Scheduler.V1.RetryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retry_count, 1, type: :int32, json_name: "retryCount"
  field :max_retry_duration, 2, type: Google.Protobuf.Duration, json_name: "maxRetryDuration"
  field :min_backoff_duration, 3, type: Google.Protobuf.Duration, json_name: "minBackoffDuration"
  field :max_backoff_duration, 4, type: Google.Protobuf.Duration, json_name: "maxBackoffDuration"
  field :max_doublings, 5, type: :int32, json_name: "maxDoublings"
end