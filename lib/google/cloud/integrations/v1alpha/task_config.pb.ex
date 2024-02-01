defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.NextTasksExecutionPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED, 0
  field :RUN_ALL_MATCH, 1
  field :RUN_FIRST_MATCH, 2
end

defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.TaskExecutionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TASK_EXECUTION_STRATEGY_UNSPECIFIED, 0
  field :WHEN_ALL_SUCCEED, 1
  field :WHEN_ANY_SUCCEED, 2
  field :WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED, 3
end

defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.ExternalTaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXTERNAL_TASK_TYPE_UNSPECIFIED, 0
  field :NORMAL_TASK, 1
  field :ERROR_TASK, 2
end

defmodule Google.Cloud.Integrations.V1alpha.SuccessPolicy.FinalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FINAL_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :SUSPENDED, 2
end

defmodule Google.Cloud.Integrations.V1alpha.FailurePolicy.RetryStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RETRY_STRATEGY_UNSPECIFIED, 0
  field :IGNORE, 1
  field :NONE, 2
  field :FATAL, 3
  field :FIXED_INTERVAL, 4
  field :LINEAR_BACKOFF, 5
  field :EXPONENTIAL_BACKOFF, 6
  field :RESTART_INTEGRATION_WITH_BACKOFF, 7
end

defmodule Google.Cloud.Integrations.V1alpha.TaskConfig.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Integrations.V1alpha.EventParameter
end

defmodule Google.Cloud.Integrations.V1alpha.TaskConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId", deprecated: false

  field :parameters, 3,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.ParametersEntry,
    map: true,
    deprecated: false

  field :failure_policy, 4,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy,
    json_name: "failurePolicy",
    deprecated: false

  field :synchronous_call_failure_policy, 5,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy,
    json_name: "synchronousCallFailurePolicy",
    deprecated: false

  field :next_tasks, 6,
    repeated: true,
    type: Google.Cloud.Integrations.V1alpha.NextTask,
    json_name: "nextTasks",
    deprecated: false

  field :next_tasks_execution_policy, 7,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.NextTasksExecutionPolicy,
    json_name: "nextTasksExecutionPolicy",
    enum: true,
    deprecated: false

  field :task_execution_strategy, 8,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.TaskExecutionStrategy,
    json_name: "taskExecutionStrategy",
    enum: true,
    deprecated: false

  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false

  field :success_policy, 10,
    type: Google.Cloud.Integrations.V1alpha.SuccessPolicy,
    json_name: "successPolicy",
    deprecated: false

  field :json_validation_option, 11,
    type: Google.Cloud.Integrations.V1alpha.JsonValidationOption,
    json_name: "jsonValidationOption",
    enum: true,
    deprecated: false

  field :description, 12, type: :string, deprecated: false
  field :task_template, 13, type: :string, json_name: "taskTemplate", deprecated: false
  field :error_catcher_id, 17, type: :string, json_name: "errorCatcherId", deprecated: false

  field :external_task_type, 15,
    type: Google.Cloud.Integrations.V1alpha.TaskConfig.ExternalTaskType,
    json_name: "externalTaskType",
    enum: true,
    deprecated: false

  field :position, 16, type: Google.Cloud.Integrations.V1alpha.Coordinate, deprecated: false
end

defmodule Google.Cloud.Integrations.V1alpha.SuccessPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :final_state, 1,
    type: Google.Cloud.Integrations.V1alpha.SuccessPolicy.FinalState,
    json_name: "finalState",
    enum: true
end

defmodule Google.Cloud.Integrations.V1alpha.FailurePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :retry_strategy, 1,
    type: Google.Cloud.Integrations.V1alpha.FailurePolicy.RetryStrategy,
    json_name: "retryStrategy",
    enum: true

  field :max_retries, 2, type: :int32, json_name: "maxRetries"
  field :interval_time, 3, type: Google.Protobuf.Timestamp, json_name: "intervalTime"
end

defmodule Google.Cloud.Integrations.V1alpha.NextTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :task_config_id, 1, type: :string, json_name: "taskConfigId"
  field :task_id, 2, type: :string, json_name: "taskId"
  field :condition, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string
end