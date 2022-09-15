defmodule Google.Cloud.Contentwarehouse.V1.Schedule do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SCHEDULE_UNSPECIFIED, 0
  field :SCHEDULE_DAILY, 1
  field :SCHEDULE_WEEKLY, 2
  field :SCHEDULE_MONTHLY, 3
end

defmodule Google.Cloud.Contentwarehouse.V1.Rule.TriggerType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ON_CREATE, 1
  field :ON_READ, 2
  field :ON_SEARCH, 3
  field :ON_UPDATE, 4
  field :ON_DELETE, 5
  field :ASYNC, 6
end

defmodule Google.Cloud.Contentwarehouse.V1.AccessControlAction.OperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ADD_POLICY_BINDING, 1
  field :REMOVE_POLICY_BINDING, 2
  field :REPLACE_POLICY_BINDING, 3
end

defmodule Google.Cloud.Contentwarehouse.V1.ActionOutput.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACTION_SUCCEEDED, 1
  field :ACTION_FAILED, 2
  field :ACTION_TIMED_OUT, 3
  field :ACTION_PENDING, 4
end

defmodule Google.Cloud.Contentwarehouse.V1.RuleSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :expiration, 0

  field :name, 6, type: :string
  field :description, 1, type: :string
  field :source, 2, type: :string
  field :rules, 3, repeated: true, type: Google.Cloud.Contentwarehouse.V1.Rule
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 7, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :schedule, 8, type: Google.Cloud.Contentwarehouse.V1.Schedule, enum: true
end

defmodule Google.Cloud.Contentwarehouse.V1.Rule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 1, type: :string
  field :rule_id, 2, type: :string, json_name: "ruleId"

  field :trigger_type, 3,
    type: Google.Cloud.Contentwarehouse.V1.Rule.TriggerType,
    json_name: "triggerType",
    enum: true

  field :condition, 4, type: :string
  field :actions, 5, repeated: true, type: Google.Cloud.Contentwarehouse.V1.Action
  field :priority, 6, type: :float
  field :enabled, 7, type: :bool
end

defmodule Google.Cloud.Contentwarehouse.V1.Action do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :action, 0

  field :action_id, 1, type: :string, json_name: "actionId"

  field :access_control, 2,
    type: Google.Cloud.Contentwarehouse.V1.AccessControlAction,
    json_name: "accessControl",
    oneof: 0

  field :data_validation, 3,
    type: Google.Cloud.Contentwarehouse.V1.DataValidationAction,
    json_name: "dataValidation",
    oneof: 0

  field :data_update, 4,
    type: Google.Cloud.Contentwarehouse.V1.DataUpdateAction,
    json_name: "dataUpdate",
    oneof: 0

  field :add_to_folder, 5,
    type: Google.Cloud.Contentwarehouse.V1.AddToFolderAction,
    json_name: "addToFolder",
    oneof: 0

  field :publish_to_pub_sub, 6,
    type: Google.Cloud.Contentwarehouse.V1.PublishAction,
    json_name: "publishToPubSub",
    oneof: 0

  field :context_evaluation_action, 7,
    type: Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction,
    json_name: "contextEvaluationAction",
    oneof: 0

  field :expired_data_handling_action, 8,
    type: Google.Cloud.Contentwarehouse.V1.ExpiredDataHandlingAction,
    json_name: "expiredDataHandlingAction",
    oneof: 0

  field :remove_from_folder_action, 9,
    type: Google.Cloud.Contentwarehouse.V1.RemoveFromFolderAction,
    json_name: "removeFromFolderAction",
    oneof: 0

  field :delete_document_action, 10,
    type: Google.Cloud.Contentwarehouse.V1.DeleteDocumentAction,
    json_name: "deleteDocumentAction",
    oneof: 0
end

defmodule Google.Cloud.Contentwarehouse.V1.AccessControlAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operation_type, 1,
    type: Google.Cloud.Contentwarehouse.V1.AccessControlAction.OperationType,
    json_name: "operationType",
    enum: true

  field :policy, 2, type: Google.Iam.V1.Policy
end

defmodule Google.Cloud.Contentwarehouse.V1.DataValidationAction.ConditionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.DataValidationAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conditions, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.DataValidationAction.ConditionsEntry,
    map: true
end

defmodule Google.Cloud.Contentwarehouse.V1.DataUpdateAction.EntriesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.DataUpdateAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.DataUpdateAction.EntriesEntry,
    map: true
end

defmodule Google.Cloud.Contentwarehouse.V1.FolderSchemaCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :folder_schema, 1, type: :string, json_name: "folderSchema", deprecated: false
  field :condition, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.AddToFolderAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :folders, 1, repeated: true, type: :string, deprecated: false

  field :folder_schema_conditions, 2,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.FolderSchemaCondition,
    json_name: "folderSchemaConditions"
end

defmodule Google.Cloud.Contentwarehouse.V1.RemoveFromFolderAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :condition, 1, type: :string
  field :folder, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.PublishAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic_id, 1, type: :string, json_name: "topicId"
  field :messages, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.CloudFunctionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cloud_function, 3, type: :string, json_name: "cloudFunction"
end

defmodule Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.Webhook do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 8, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.WebhookWithServiceDirectory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 9, type: :string
  field :webhook, 10, type: Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.Webhook
end

defmodule Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :ContextEvaluationMethod, 0

  field :condition, 1, type: :string
  field :variable_names, 2, repeated: true, type: :string, json_name: "variableNames"

  field :cloud_function_info, 4,
    type: Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.CloudFunctionInfo,
    json_name: "cloudFunctionInfo",
    oneof: 0

  field :webhook, 6,
    type: Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.Webhook,
    oneof: 0

  field :webhook_with_service_directory, 7,
    type: Google.Cloud.Contentwarehouse.V1.ContextEvaluationAction.WebhookWithServiceDirectory,
    json_name: "webhookWithServiceDirectory",
    oneof: 0

  field :topic_id, 5, type: :string, json_name: "topicId", deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.ExpiredDataHandlingAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :condition, 1, type: :string
  field :topic_id, 2, type: :string, json_name: "topicId"
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteDocumentAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_hard_delete, 1, type: :bool, json_name: "enableHardDelete"
end

defmodule Google.Cloud.Contentwarehouse.V1.RuleEngineOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document_name, 3, type: :string, json_name: "documentName"

  field :rule_evaluator_output, 1,
    type: Google.Cloud.Contentwarehouse.V1.RuleEvaluatorOutput,
    json_name: "ruleEvaluatorOutput"

  field :action_executor_output, 2,
    type: Google.Cloud.Contentwarehouse.V1.ActionExecutorOutput,
    json_name: "actionExecutorOutput"
end

defmodule Google.Cloud.Contentwarehouse.V1.RuleEvaluatorOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :triggered_rules, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.Rule,
    json_name: "triggeredRules"

  field :matched_rules, 2,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.Rule,
    json_name: "matchedRules"

  field :invalid_rules, 3,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.InvalidRule,
    json_name: "invalidRules"
end

defmodule Google.Cloud.Contentwarehouse.V1.InvalidRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rule, 1, type: Google.Cloud.Contentwarehouse.V1.Rule
  field :error, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.ActionExecutorOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rule_actions_pairs, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.RuleActionsPair,
    json_name: "ruleActionsPairs"
end

defmodule Google.Cloud.Contentwarehouse.V1.RuleActionsPair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rule, 1, type: Google.Cloud.Contentwarehouse.V1.Rule

  field :action_outputs, 2,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.ActionOutput,
    json_name: "actionOutputs"
end

defmodule Google.Cloud.Contentwarehouse.V1.ActionOutput do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :action_id, 1, type: :string, json_name: "actionId"

  field :action_state, 2,
    type: Google.Cloud.Contentwarehouse.V1.ActionOutput.State,
    json_name: "actionState",
    enum: true

  field :output_message, 3, type: :string, json_name: "outputMessage"
end