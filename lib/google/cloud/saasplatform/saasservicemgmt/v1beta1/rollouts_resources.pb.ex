defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLLOUT_ACTION_UNSPECIFIED, 0
  field :ROLLOUT_ACTION_RUN, 1
  field :ROLLOUT_ACTION_PAUSE, 2
  field :ROLLOUT_ACTION_CANCEL, 3
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.RolloutState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLLOUT_STATE_UNSPECIFIED, 0
  field :ROLLOUT_STATE_RUNNING, 1
  field :ROLLOUT_STATE_PAUSED, 2
  field :ROLLOUT_STATE_SUCCEEDED, 3
  field :ROLLOUT_STATE_FAILED, 4
  field :ROLLOUT_STATE_CANCELLED, 5
  field :ROLLOUT_STATE_WAITING, 6
  field :ROLLOUT_STATE_CANCELLING, 7
  field :ROLLOUT_STATE_RESUMING, 8
  field :ROLLOUT_STATE_PAUSING, 9
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.UpdateUnitKindStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UPDATE_UNIT_KIND_STRATEGY_UNSPECIFIED, 0
  field :UPDATE_UNIT_KIND_STRATEGY_ON_START, 1
  field :UPDATE_UNIT_KIND_STRATEGY_NEVER, 2
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :release, 3, type: :string, deprecated: false
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 10,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.RolloutState,
    enum: true,
    deprecated: false

  field :state_message, 11, type: :string, json_name: "stateMessage", deprecated: false

  field :state_transition_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "stateTransitionTime",
    deprecated: false

  field :root_rollout, 16, type: :string, json_name: "rootRollout", deprecated: false
  field :parent_rollout, 17, type: :string, json_name: "parentRollout", deprecated: false

  field :rollout_orchestration_strategy, 19,
    type: :string,
    json_name: "rolloutOrchestrationStrategy",
    deprecated: false

  field :unit_filter, 21, type: :string, json_name: "unitFilter", deprecated: false
  field :rollout_kind, 22, type: :string, json_name: "rolloutKind", deprecated: false

  field :stats, 24,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutStats,
    deprecated: false

  field :control, 25,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutControl,
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :unit_kind, 2, type: :string, json_name: "unitKind", deprecated: false

  field :rollout_orchestration_strategy, 3,
    type: :string,
    json_name: "rolloutOrchestrationStrategy",
    deprecated: false

  field :unit_filter, 5, type: :string, json_name: "unitFilter", deprecated: false

  field :update_unit_kind_strategy, 6,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.UpdateUnitKindStrategy,
    json_name: "updateUnitKindStrategy",
    enum: true,
    deprecated: false

  field :error_budget, 7,
    proto3_optional: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ErrorBudget,
    json_name: "errorBudget",
    deprecated: false

  field :labels, 10401,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 10402,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10201, type: :string, deprecated: false
  field :etag, 10202, type: :string, deprecated: false

  field :create_time, 10303,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10304,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ErrorBudget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allowed_count, 1, type: :int32, json_name: "allowedCount", deprecated: false
  field :allowed_percentage, 2, type: :int32, json_name: "allowedPercentage", deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operations_by_state, 2,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Aggregate,
    json_name: "operationsByState",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutControl.RunRolloutActionParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retry_failed_operations, 1,
    type: :bool,
    json_name: "retryFailedOperations",
    deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutControl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action_params, 0

  field :run_params, 2,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutControl.RunRolloutActionParams,
    json_name: "runParams",
    oneof: 0,
    deprecated: false

  field :action, 1,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutAction,
    enum: true,
    deprecated: false
end
