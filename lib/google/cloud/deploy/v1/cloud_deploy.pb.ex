defmodule Google.Cloud.Deploy.V1.SkaffoldSupportState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SKAFFOLD_SUPPORT_STATE_UNSPECIFIED, 0
  field :SKAFFOLD_SUPPORT_STATE_SUPPORTED, 1
  field :SKAFFOLD_SUPPORT_STATE_MAINTENANCE_MODE, 2
  field :SKAFFOLD_SUPPORT_STATE_UNSUPPORTED, 3
end

defmodule Google.Cloud.Deploy.V1.BackoffMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BACKOFF_MODE_UNSPECIFIED, 0
  field :BACKOFF_MODE_LINEAR, 1
  field :BACKOFF_MODE_EXPONENTIAL, 2
end

defmodule Google.Cloud.Deploy.V1.RepairState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :REPAIR_STATE_UNSPECIFIED, 0
  field :REPAIR_STATE_SUCCEEDED, 1
  field :REPAIR_STATE_CANCELLED, 2
  field :REPAIR_STATE_FAILED, 3
  field :REPAIR_STATE_IN_PROGRESS, 4
  field :REPAIR_STATE_PENDING, 5
  field :REPAIR_STATE_ABORTED, 7
end

defmodule Google.Cloud.Deploy.V1.ExecutionConfig.ExecutionEnvironmentUsage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED, 0
  field :RENDER, 1
  field :DEPLOY, 2
  field :VERIFY, 3
  field :PREDEPLOY, 4
  field :POSTDEPLOY, 5
end

defmodule Google.Cloud.Deploy.V1.DeployPolicy.Invoker do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INVOKER_UNSPECIFIED, 0
  field :USER, 1
  field :DEPLOY_AUTOMATION, 2
end

defmodule Google.Cloud.Deploy.V1.RolloutRestriction.RolloutActions do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ROLLOUT_ACTIONS_UNSPECIFIED, 0
  field :ADVANCE, 1
  field :APPROVE, 2
  field :CANCEL, 3
  field :CREATE, 4
  field :IGNORE_JOB, 5
  field :RETRY_JOB, 6
  field :ROLLBACK, 7
  field :TERMINATE_JOBRUN, 8
end

defmodule Google.Cloud.Deploy.V1.Release.RenderState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TARGET_RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :CLOUD_BUILD_REQUEST_FAILED, 3
  field :VERIFICATION_CONFIG_NOT_FOUND, 4
  field :CUSTOM_ACTION_NOT_FOUND, 5
  field :DEPLOYMENT_STRATEGY_NOT_SUPPORTED, 6
  field :RENDER_FEATURE_NOT_SUPPORTED, 7
end

defmodule Google.Cloud.Deploy.V1.Rollout.ApprovalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :APPROVAL_STATE_UNSPECIFIED, 0
  field :NEEDS_APPROVAL, 1
  field :DOES_NOT_NEED_APPROVAL, 2
  field :APPROVED, 3
  field :REJECTED, 4
end

defmodule Google.Cloud.Deploy.V1.Rollout.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
  field :PENDING_APPROVAL, 4
  field :APPROVAL_REJECTED, 5
  field :PENDING, 6
  field :PENDING_RELEASE, 7
  field :CANCELLING, 8
  field :CANCELLED, 9
  field :HALTED, 10
end

defmodule Google.Cloud.Deploy.V1.Rollout.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :RELEASE_FAILED, 4
  field :RELEASE_ABANDONED, 5
  field :VERIFICATION_CONFIG_NOT_FOUND, 6
  field :CLOUD_BUILD_REQUEST_FAILED, 7
  field :OPERATION_FEATURE_NOT_SUPPORTED, 8
end

defmodule Google.Cloud.Deploy.V1.Phase.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :ABORTED, 5
  field :SKIPPED, 6
end

defmodule Google.Cloud.Deploy.V1.Job.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :DISABLED, 2
  field :IN_PROGRESS, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :ABORTED, 6
  field :SKIPPED, 7
  field :IGNORED, 8
end

defmodule Google.Cloud.Deploy.V1.JobRun.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
end

defmodule Google.Cloud.Deploy.V1.DeployJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :MISSING_RESOURCES_FOR_CANARY, 4
  field :CLOUD_BUILD_REQUEST_FAILED, 5
  field :DEPLOY_FEATURE_NOT_SUPPORTED, 6
end

defmodule Google.Cloud.Deploy.V1.VerifyJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :VERIFICATION_CONFIG_NOT_FOUND, 4
  field :CLOUD_BUILD_REQUEST_FAILED, 5
end

defmodule Google.Cloud.Deploy.V1.PredeployJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :CLOUD_BUILD_REQUEST_FAILED, 4
end

defmodule Google.Cloud.Deploy.V1.PostdeployJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :CLOUD_BUILD_REQUEST_FAILED, 4
end

defmodule Google.Cloud.Deploy.V1.AutomationRun.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :CANCELLED, 2
  field :FAILED, 3
  field :IN_PROGRESS, 4
  field :PENDING, 5
  field :ABORTED, 6
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :pipeline, 0

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline.AnnotationsEntry,
    map: true

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline.LabelsEntry,
    map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :serial_pipeline, 8,
    type: Google.Cloud.Deploy.V1.SerialPipeline,
    json_name: "serialPipeline",
    oneof: 0

  field :condition, 11, type: Google.Cloud.Deploy.V1.PipelineCondition, deprecated: false
  field :etag, 10, type: :string
  field :suspended, 12, type: :bool
end

defmodule Google.Cloud.Deploy.V1.SerialPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :stages, 1, repeated: true, type: Google.Cloud.Deploy.V1.Stage
end

defmodule Google.Cloud.Deploy.V1.Stage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_id, 1, type: :string, json_name: "targetId"
  field :profiles, 2, repeated: true, type: :string
  field :strategy, 5, type: Google.Cloud.Deploy.V1.Strategy, deprecated: false

  field :deploy_parameters, 6,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployParameters,
    json_name: "deployParameters",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployParameters.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeployParameters.MatchTargetLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeployParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployParameters.ValuesEntry,
    map: true,
    deprecated: false

  field :match_target_labels, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployParameters.MatchTargetLabelsEntry,
    json_name: "matchTargetLabels",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Strategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :deployment_strategy, 0

  field :standard, 1, type: Google.Cloud.Deploy.V1.Standard, oneof: 0
  field :canary, 2, type: Google.Cloud.Deploy.V1.Canary, oneof: 0
end

defmodule Google.Cloud.Deploy.V1.Predeploy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actions, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Postdeploy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actions, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Standard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :verify, 1, type: :bool
  field :predeploy, 2, type: Google.Cloud.Deploy.V1.Predeploy, deprecated: false
  field :postdeploy, 3, type: Google.Cloud.Deploy.V1.Postdeploy, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Canary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :mode, 0

  field :runtime_config, 1,
    type: Google.Cloud.Deploy.V1.RuntimeConfig,
    json_name: "runtimeConfig",
    deprecated: false

  field :canary_deployment, 2,
    type: Google.Cloud.Deploy.V1.CanaryDeployment,
    json_name: "canaryDeployment",
    oneof: 0

  field :custom_canary_deployment, 3,
    type: Google.Cloud.Deploy.V1.CustomCanaryDeployment,
    json_name: "customCanaryDeployment",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.CanaryDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :percentages, 1, repeated: true, type: :int32, deprecated: false
  field :verify, 2, type: :bool
  field :predeploy, 3, type: Google.Cloud.Deploy.V1.Predeploy, deprecated: false
  field :postdeploy, 4, type: Google.Cloud.Deploy.V1.Postdeploy, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomCanaryDeployment.PhaseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phase_id, 1, type: :string, json_name: "phaseId", deprecated: false
  field :percentage, 2, type: :int32, deprecated: false
  field :profiles, 3, repeated: true, type: :string
  field :verify, 4, type: :bool
  field :predeploy, 5, type: Google.Cloud.Deploy.V1.Predeploy, deprecated: false
  field :postdeploy, 6, type: Google.Cloud.Deploy.V1.Postdeploy, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomCanaryDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phase_configs, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomCanaryDeployment.PhaseConfig,
    json_name: "phaseConfigs",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig.GatewayServiceMesh.RouteDestinations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_ids, 1,
    repeated: true,
    type: :string,
    json_name: "destinationIds",
    deprecated: false

  field :propagate_service, 2, type: :bool, json_name: "propagateService", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig.GatewayServiceMesh do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :http_route, 1, type: :string, json_name: "httpRoute", deprecated: false
  field :service, 2, type: :string, deprecated: false
  field :deployment, 3, type: :string, deprecated: false

  field :route_update_wait_time, 4,
    type: Google.Protobuf.Duration,
    json_name: "routeUpdateWaitTime",
    deprecated: false

  field :stable_cutback_duration, 5,
    type: Google.Protobuf.Duration,
    json_name: "stableCutbackDuration",
    deprecated: false

  field :pod_selector_label, 6, type: :string, json_name: "podSelectorLabel", deprecated: false

  field :route_destinations, 8,
    type: Google.Cloud.Deploy.V1.KubernetesConfig.GatewayServiceMesh.RouteDestinations,
    json_name: "routeDestinations",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig.ServiceNetworking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
  field :deployment, 2, type: :string, deprecated: false

  field :disable_pod_overprovisioning, 3,
    type: :bool,
    json_name: "disablePodOverprovisioning",
    deprecated: false

  field :pod_selector_label, 4, type: :string, json_name: "podSelectorLabel", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :service_definition, 0

  field :gateway_service_mesh, 1,
    type: Google.Cloud.Deploy.V1.KubernetesConfig.GatewayServiceMesh,
    json_name: "gatewayServiceMesh",
    oneof: 0

  field :service_networking, 2,
    type: Google.Cloud.Deploy.V1.KubernetesConfig.ServiceNetworking,
    json_name: "serviceNetworking",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.CloudRunConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :automatic_traffic_control, 1, type: :bool, json_name: "automaticTrafficControl"

  field :canary_revision_tags, 2,
    repeated: true,
    type: :string,
    json_name: "canaryRevisionTags",
    deprecated: false

  field :prior_revision_tags, 3,
    repeated: true,
    type: :string,
    json_name: "priorRevisionTags",
    deprecated: false

  field :stable_revision_tags, 4,
    repeated: true,
    type: :string,
    json_name: "stableRevisionTags",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :runtime_config, 0

  field :kubernetes, 1, type: Google.Cloud.Deploy.V1.KubernetesConfig, oneof: 0

  field :cloud_run, 2,
    type: Google.Cloud.Deploy.V1.CloudRunConfig,
    json_name: "cloudRun",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.PipelineReadyCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 3, type: :bool
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Deploy.V1.TargetsPresentCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: :bool

  field :missing_targets, 2,
    repeated: true,
    type: :string,
    json_name: "missingTargets",
    deprecated: false

  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Deploy.V1.TargetsTypeCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: :bool
  field :error_details, 2, type: :string, json_name: "errorDetails"
end

defmodule Google.Cloud.Deploy.V1.PipelineCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pipeline_ready_condition, 1,
    type: Google.Cloud.Deploy.V1.PipelineReadyCondition,
    json_name: "pipelineReadyCondition"

  field :targets_present_condition, 3,
    type: Google.Cloud.Deploy.V1.TargetsPresentCondition,
    json_name: "targetsPresentCondition"

  field :targets_type_condition, 4,
    type: Google.Cloud.Deploy.V1.TargetsTypeCondition,
    json_name: "targetsTypeCondition"
end

defmodule Google.Cloud.Deploy.V1.ListDeliveryPipelinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Deploy.V1.ListDeliveryPipelinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :delivery_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipelines"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :delivery_pipeline_id, 2,
    type: :string,
    json_name: "deliveryPipelineId",
    deprecated: false

  field :delivery_pipeline, 3,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipeline",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :delivery_pipeline, 2,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipeline",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeleteDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RollbackTargetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: Google.Cloud.Deploy.V1.Rollout, deprecated: false
  field :starting_phase_id, 2, type: :string, json_name: "startingPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RollbackTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_id, 2, type: :string, json_name: "targetId", deprecated: false
  field :rollout_id, 3, type: :string, json_name: "rolloutId", deprecated: false
  field :release_id, 4, type: :string, json_name: "releaseId", deprecated: false
  field :rollout_to_roll_back, 5, type: :string, json_name: "rolloutToRollBack", deprecated: false

  field :rollback_config, 6,
    type: Google.Cloud.Deploy.V1.RollbackTargetConfig,
    json_name: "rollbackConfig",
    deprecated: false

  field :validate_only, 7, type: :bool, json_name: "validateOnly", deprecated: false

  field :override_deploy_policy, 9,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RollbackTargetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollback_config, 1,
    type: Google.Cloud.Deploy.V1.RollbackTargetConfig,
    json_name: "rollbackConfig"
end

defmodule Google.Cloud.Deploy.V1.Target.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Target.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Target.AssociatedEntitiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.AssociatedEntities
end

defmodule Google.Cloud.Deploy.V1.Target.DeployParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :deployment_target, 0

  field :name, 1, type: :string, deprecated: false
  field :target_id, 2, type: :string, json_name: "targetId", deprecated: false
  field :uid, 3, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Target.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Target.LabelsEntry,
    map: true,
    deprecated: false

  field :require_approval, 13, type: :bool, json_name: "requireApproval", deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :gke, 15, type: Google.Cloud.Deploy.V1.GkeCluster, oneof: 0, deprecated: false

  field :anthos_cluster, 17,
    type: Google.Cloud.Deploy.V1.AnthosCluster,
    json_name: "anthosCluster",
    oneof: 0,
    deprecated: false

  field :run, 18, type: Google.Cloud.Deploy.V1.CloudRunLocation, oneof: 0, deprecated: false

  field :multi_target, 19,
    type: Google.Cloud.Deploy.V1.MultiTarget,
    json_name: "multiTarget",
    oneof: 0,
    deprecated: false

  field :custom_target, 21,
    type: Google.Cloud.Deploy.V1.CustomTarget,
    json_name: "customTarget",
    oneof: 0,
    deprecated: false

  field :associated_entities, 23,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Target.AssociatedEntitiesEntry,
    json_name: "associatedEntities",
    map: true,
    deprecated: false

  field :etag, 12, type: :string, deprecated: false

  field :execution_configs, 16,
    repeated: true,
    type: Google.Cloud.Deploy.V1.ExecutionConfig,
    json_name: "executionConfigs"

  field :deploy_parameters, 20,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Target.DeployParametersEntry,
    json_name: "deployParameters",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ExecutionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :execution_environment, 0

  field :usages, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.ExecutionConfig.ExecutionEnvironmentUsage,
    enum: true,
    deprecated: false

  field :default_pool, 2,
    type: Google.Cloud.Deploy.V1.DefaultPool,
    json_name: "defaultPool",
    oneof: 0,
    deprecated: false

  field :private_pool, 3,
    type: Google.Cloud.Deploy.V1.PrivatePool,
    json_name: "privatePool",
    oneof: 0,
    deprecated: false

  field :worker_pool, 4, type: :string, json_name: "workerPool", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 6, type: :string, json_name: "artifactStorage", deprecated: false

  field :execution_timeout, 7,
    type: Google.Protobuf.Duration,
    json_name: "executionTimeout",
    deprecated: false

  field :verbose, 8, type: :bool, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DefaultPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 2, type: :string, json_name: "artifactStorage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PrivatePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 3, type: :string, json_name: "artifactStorage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.GkeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
  field :internal_ip, 2, type: :bool, json_name: "internalIp", deprecated: false
  field :proxy_url, 3, type: :string, json_name: "proxyUrl", deprecated: false
  field :dns_endpoint, 4, type: :bool, json_name: "dnsEndpoint", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AnthosCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :membership, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.MultiTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_ids, 1, repeated: true, type: :string, json_name: "targetIds", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_target_type, 1, type: :string, json_name: "customTargetType", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AssociatedEntities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gke_clusters, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.GkeCluster,
    json_name: "gkeClusters",
    deprecated: false

  field :anthos_clusters, 3,
    repeated: true,
    type: Google.Cloud.Deploy.V1.AnthosCluster,
    json_name: "anthosClusters",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListTargetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListTargetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :targets, 1, repeated: true, type: Google.Cloud.Deploy.V1.Target
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :target_id, 2, type: :string, json_name: "targetId", deprecated: false
  field :target, 3, type: Google.Cloud.Deploy.V1.Target, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :target, 2, type: Google.Cloud.Deploy.V1.Target, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeleteTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomTargetType.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.CustomTargetType.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.CustomTargetType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :definition, 0

  field :name, 1, type: :string, deprecated: false

  field :custom_target_type_id, 2,
    type: :string,
    json_name: "customTargetTypeId",
    deprecated: false

  field :uid, 3, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomTargetType.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomTargetType.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false

  field :custom_actions, 10,
    type: Google.Cloud.Deploy.V1.CustomTargetSkaffoldActions,
    json_name: "customActions",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.CustomTargetSkaffoldActions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :render_action, 1, type: :string, json_name: "renderAction", deprecated: false
  field :deploy_action, 2, type: :string, json_name: "deployAction", deprecated: false

  field :include_skaffold_modules, 3,
    repeated: true,
    type: Google.Cloud.Deploy.V1.SkaffoldModules,
    json_name: "includeSkaffoldModules",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGitSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :repo, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :ref, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGCSSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGCBRepoSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :ref, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.SkaffoldModules do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :configs, 1, repeated: true, type: :string, deprecated: false
  field :git, 2, type: Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGitSource, oneof: 0

  field :google_cloud_storage, 3,
    type: Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGCSSource,
    json_name: "googleCloudStorage",
    oneof: 0

  field :google_cloud_build_repo, 4,
    type: Google.Cloud.Deploy.V1.SkaffoldModules.SkaffoldGCBRepoSource,
    json_name: "googleCloudBuildRepo",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.ListCustomTargetTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListCustomTargetTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_target_types, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomTargetType,
    json_name: "customTargetTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetCustomTargetTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateCustomTargetTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_target_type_id, 2,
    type: :string,
    json_name: "customTargetTypeId",
    deprecated: false

  field :custom_target_type, 3,
    type: Google.Cloud.Deploy.V1.CustomTargetType,
    json_name: "customTargetType",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateCustomTargetTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :custom_target_type, 2,
    type: Google.Cloud.Deploy.V1.CustomTargetType,
    json_name: "customTargetType",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeleteCustomTargetTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployPolicy.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeployPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeployPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicy.AnnotationsEntry,
    map: true

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicy.LabelsEntry,
    map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :suspended, 8, type: :bool

  field :selectors, 12,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicyResourceSelector,
    deprecated: false

  field :rules, 10, repeated: true, type: Google.Cloud.Deploy.V1.PolicyRule, deprecated: false
  field :etag, 11, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeployPolicyResourceSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :delivery_pipeline, 1,
    type: Google.Cloud.Deploy.V1.DeliveryPipelineAttribute,
    json_name: "deliveryPipeline",
    deprecated: false

  field :target, 2, type: Google.Cloud.Deploy.V1.TargetAttribute, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipelineAttribute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipelineAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipelineAttribute.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Deploy.V1.TargetAttribute.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.TargetAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.TargetAttribute.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Deploy.V1.PolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :rule, 0

  field :rollout_restriction, 2,
    type: Google.Cloud.Deploy.V1.RolloutRestriction,
    json_name: "rolloutRestriction",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.RolloutRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :invokers, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicy.Invoker,
    enum: true,
    deprecated: false

  field :actions, 3,
    repeated: true,
    type: Google.Cloud.Deploy.V1.RolloutRestriction.RolloutActions,
    enum: true,
    deprecated: false

  field :time_windows, 4,
    type: Google.Cloud.Deploy.V1.TimeWindows,
    json_name: "timeWindows",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TimeWindows do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :time_zone, 1, type: :string, json_name: "timeZone", deprecated: false

  field :one_time_windows, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.OneTimeWindow,
    json_name: "oneTimeWindows",
    deprecated: false

  field :weekly_windows, 3,
    repeated: true,
    type: Google.Cloud.Deploy.V1.WeeklyWindow,
    json_name: "weeklyWindows",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.OneTimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :end_date, 3, type: Google.Type.Date, json_name: "endDate", deprecated: false
  field :end_time, 4, type: Google.Type.TimeOfDay, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.WeeklyWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :days_of_week, 1,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "daysOfWeek",
    enum: true,
    deprecated: false

  field :start_time, 2, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Type.TimeOfDay, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PolicyViolation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :policy_violation_details, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.PolicyViolationDetails,
    json_name: "policyViolationDetails"
end

defmodule Google.Cloud.Deploy.V1.PolicyViolationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :policy, 1, type: :string
  field :rule_id, 2, type: :string, json_name: "ruleId"
  field :failure_message, 3, type: :string, json_name: "failureMessage"
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rendering_build, 1, type: :string, json_name: "renderingBuild", deprecated: false

  field :rendering_state, 2,
    type: Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState,
    json_name: "renderingState",
    enum: true,
    deprecated: false

  field :metadata, 6, type: Google.Cloud.Deploy.V1.RenderMetadata, deprecated: false

  field :failure_cause, 4,
    type: Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false

  field :failure_message, 5, type: :string, json_name: "failureMessage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Release.ReleaseReadyCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: :bool
end

defmodule Google.Cloud.Deploy.V1.Release.SkaffoldSupportedCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: :bool

  field :skaffold_support_state, 2,
    type: Google.Cloud.Deploy.V1.SkaffoldSupportState,
    json_name: "skaffoldSupportState",
    enum: true

  field :maintenance_mode_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceModeTime"

  field :support_expiration_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "supportExpirationTime"
end

defmodule Google.Cloud.Deploy.V1.Release.ReleaseCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :release_ready_condition, 1,
    type: Google.Cloud.Deploy.V1.Release.ReleaseReadyCondition,
    json_name: "releaseReadyCondition"

  field :skaffold_supported_condition, 2,
    type: Google.Cloud.Deploy.V1.Release.SkaffoldSupportedCondition,
    json_name: "skaffoldSupportedCondition"
end

defmodule Google.Cloud.Deploy.V1.Release.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Release.TargetArtifactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.TargetArtifact
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRendersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.Release.TargetRender
end

defmodule Google.Cloud.Deploy.V1.Release.DeployParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Release do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Release.AnnotationsEntry,
    map: true

  field :labels, 5, repeated: true, type: Google.Cloud.Deploy.V1.Release.LabelsEntry, map: true
  field :abandoned, 23, type: :bool, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :render_start_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "renderStartTime",
    deprecated: false

  field :render_end_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "renderEndTime",
    deprecated: false

  field :skaffold_config_uri, 17, type: :string, json_name: "skaffoldConfigUri"
  field :skaffold_config_path, 9, type: :string, json_name: "skaffoldConfigPath"

  field :build_artifacts, 10,
    repeated: true,
    type: Google.Cloud.Deploy.V1.BuildArtifact,
    json_name: "buildArtifacts"

  field :delivery_pipeline_snapshot, 11,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipelineSnapshot",
    deprecated: false

  field :target_snapshots, 12,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Target,
    json_name: "targetSnapshots",
    deprecated: false

  field :custom_target_type_snapshots, 27,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomTargetType,
    json_name: "customTargetTypeSnapshots",
    deprecated: false

  field :render_state, 13,
    type: Google.Cloud.Deploy.V1.Release.RenderState,
    json_name: "renderState",
    enum: true,
    deprecated: false

  field :etag, 16, type: :string
  field :skaffold_version, 19, type: :string, json_name: "skaffoldVersion", deprecated: false

  field :target_artifacts, 20,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Release.TargetArtifactsEntry,
    json_name: "targetArtifacts",
    map: true,
    deprecated: false

  field :target_renders, 22,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Release.TargetRendersEntry,
    json_name: "targetRenders",
    map: true,
    deprecated: false

  field :condition, 24, type: Google.Cloud.Deploy.V1.Release.ReleaseCondition, deprecated: false

  field :deploy_parameters, 25,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Release.DeployParametersEntry,
    json_name: "deployParameters",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateDeployPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deploy_policy_id, 2, type: :string, json_name: "deployPolicyId", deprecated: false

  field :deploy_policy, 3,
    type: Google.Cloud.Deploy.V1.DeployPolicy,
    json_name: "deployPolicy",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateDeployPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :deploy_policy, 2,
    type: Google.Cloud.Deploy.V1.DeployPolicy,
    json_name: "deployPolicy",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeleteDeployPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListDeployPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Deploy.V1.ListDeployPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deploy_policies, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeployPolicy,
    json_name: "deployPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetDeployPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.BuildArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image, 3, type: :string
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :skaffold_config_path, 1,
    type: :string,
    json_name: "skaffoldConfigPath",
    deprecated: false

  field :manifest_path, 3, type: :string, json_name: "manifestPath", deprecated: false
  field :job_manifests_path, 4, type: :string, json_name: "jobManifestsPath", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifact
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :uri, 0

  field :artifact_uri, 4, type: :string, json_name: "artifactUri", oneof: 0, deprecated: false

  field :skaffold_config_path, 2,
    type: :string,
    json_name: "skaffoldConfigPath",
    deprecated: false

  field :manifest_path, 3, type: :string, json_name: "manifestPath", deprecated: false

  field :phase_artifacts, 5,
    repeated: true,
    type: Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifactsEntry,
    json_name: "phaseArtifacts",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :artifact_uri, 1, type: :string, json_name: "artifactUri", deprecated: false

  field :manifest_paths, 2,
    repeated: true,
    type: :string,
    json_name: "manifestPaths",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunRenderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RenderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunRenderMetadata,
    json_name: "cloudRun",
    deprecated: false

  field :custom, 2, type: Google.Cloud.Deploy.V1.CustomMetadata, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :releases, 1, repeated: true, type: Google.Cloud.Deploy.V1.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Deploy.V1.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false

  field :override_deploy_policy, 6,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Rollout.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Rollout.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Rollout.AnnotationsEntry,
    map: true

  field :labels, 5, repeated: true, type: Google.Cloud.Deploy.V1.Rollout.LabelsEntry, map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :approve_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "approveTime",
    deprecated: false

  field :enqueue_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "enqueueTime",
    deprecated: false

  field :deploy_start_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deployStartTime",
    deprecated: false

  field :deploy_end_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "deployEndTime",
    deprecated: false

  field :target_id, 18, type: :string, json_name: "targetId", deprecated: false

  field :approval_state, 12,
    type: Google.Cloud.Deploy.V1.Rollout.ApprovalState,
    json_name: "approvalState",
    enum: true,
    deprecated: false

  field :state, 13, type: Google.Cloud.Deploy.V1.Rollout.State, enum: true, deprecated: false
  field :failure_reason, 14, type: :string, json_name: "failureReason", deprecated: false
  field :deploying_build, 17, type: :string, json_name: "deployingBuild", deprecated: false
  field :etag, 16, type: :string

  field :deploy_failure_cause, 19,
    type: Google.Cloud.Deploy.V1.Rollout.FailureCause,
    json_name: "deployFailureCause",
    enum: true,
    deprecated: false

  field :phases, 23, repeated: true, type: Google.Cloud.Deploy.V1.Phase, deprecated: false
  field :metadata, 24, type: Google.Cloud.Deploy.V1.Metadata, deprecated: false
  field :controller_rollout, 25, type: :string, json_name: "controllerRollout", deprecated: false
  field :rollback_of_rollout, 26, type: :string, json_name: "rollbackOfRollout", deprecated: false

  field :rolled_back_by_rollouts, 27,
    repeated: true,
    type: :string,
    json_name: "rolledBackByRollouts",
    deprecated: false

  field :active_repair_automation_run, 28,
    type: :string,
    json_name: "activeRepairAutomationRun",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunMetadata,
    json_name: "cloudRun",
    deprecated: false

  field :automation, 2, type: Google.Cloud.Deploy.V1.AutomationRolloutMetadata, deprecated: false
  field :custom, 3, type: Google.Cloud.Deploy.V1.CustomMetadata, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployJobRunMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunMetadata,
    json_name: "cloudRun",
    deprecated: false

  field :custom_target, 2,
    type: Google.Cloud.Deploy.V1.CustomTargetDeployMetadata,
    json_name: "customTarget",
    deprecated: false

  field :custom, 3, type: Google.Cloud.Deploy.V1.CustomMetadata, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false

  field :service_urls, 2,
    repeated: true,
    type: :string,
    json_name: "serviceUrls",
    deprecated: false

  field :revision, 3, type: :string, deprecated: false
  field :job, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomTargetDeployMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :skip_message, 1, type: :string, json_name: "skipMessage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AutomationRolloutMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :promote_automation_run, 1,
    type: :string,
    json_name: "promoteAutomationRun",
    deprecated: false

  field :advance_automation_runs, 2,
    repeated: true,
    type: :string,
    json_name: "advanceAutomationRuns",
    deprecated: false

  field :repair_automation_runs, 3,
    repeated: true,
    type: :string,
    json_name: "repairAutomationRuns",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CustomMetadata.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.CustomMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomMetadata.ValuesEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Phase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :jobs, 0

  field :id, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Cloud.Deploy.V1.Phase.State, enum: true, deprecated: false
  field :skip_message, 6, type: :string, json_name: "skipMessage", deprecated: false

  field :deployment_jobs, 4,
    type: Google.Cloud.Deploy.V1.DeploymentJobs,
    json_name: "deploymentJobs",
    oneof: 0,
    deprecated: false

  field :child_rollout_jobs, 5,
    type: Google.Cloud.Deploy.V1.ChildRolloutJobs,
    json_name: "childRolloutJobs",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeploymentJobs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deploy_job, 1,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "deployJob",
    deprecated: false

  field :verify_job, 2,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "verifyJob",
    deprecated: false

  field :predeploy_job, 3,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "predeployJob",
    deprecated: false

  field :postdeploy_job, 4,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "postdeployJob",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ChildRolloutJobs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_rollout_jobs, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "createRolloutJobs",
    deprecated: false

  field :advance_rollout_jobs, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "advanceRolloutJobs",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :job_type, 0

  field :id, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Deploy.V1.Job.State, enum: true, deprecated: false
  field :skip_message, 8, type: :string, json_name: "skipMessage", deprecated: false
  field :job_run, 3, type: :string, json_name: "jobRun", deprecated: false

  field :deploy_job, 4,
    type: Google.Cloud.Deploy.V1.DeployJob,
    json_name: "deployJob",
    oneof: 0,
    deprecated: false

  field :verify_job, 5,
    type: Google.Cloud.Deploy.V1.VerifyJob,
    json_name: "verifyJob",
    oneof: 0,
    deprecated: false

  field :predeploy_job, 9,
    type: Google.Cloud.Deploy.V1.PredeployJob,
    json_name: "predeployJob",
    oneof: 0,
    deprecated: false

  field :postdeploy_job, 10,
    type: Google.Cloud.Deploy.V1.PostdeployJob,
    json_name: "postdeployJob",
    oneof: 0,
    deprecated: false

  field :create_child_rollout_job, 6,
    type: Google.Cloud.Deploy.V1.CreateChildRolloutJob,
    json_name: "createChildRolloutJob",
    oneof: 0,
    deprecated: false

  field :advance_child_rollout_job, 7,
    type: Google.Cloud.Deploy.V1.AdvanceChildRolloutJob,
    json_name: "advanceChildRolloutJob",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.VerifyJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.PredeployJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actions, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PostdeployJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actions, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateChildRolloutJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AdvanceChildRolloutJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollouts, 1, repeated: true, type: Google.Cloud.Deploy.V1.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :rollout_id, 2, type: :string, json_name: "rolloutId", deprecated: false
  field :rollout, 3, type: Google.Cloud.Deploy.V1.Rollout, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false

  field :override_deploy_policy, 6,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false

  field :starting_phase_id, 7, type: :string, json_name: "startingPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ApproveRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :approved, 2, type: :bool, deprecated: false

  field :override_deploy_policy, 3,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ApproveRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false

  field :override_deploy_policy, 3,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.CancelRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :override_deploy_policy, 2,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CancelRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.IgnoreJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false

  field :override_deploy_policy, 4,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.IgnoreJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.RetryJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false

  field :override_deploy_policy, 4,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RetryJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AbandonReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AbandonReleaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.JobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :job_run, 0

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :phase_id, 3, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 4, type: :string, json_name: "jobId", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :state, 8, type: Google.Cloud.Deploy.V1.JobRun.State, enum: true, deprecated: false

  field :deploy_job_run, 9,
    type: Google.Cloud.Deploy.V1.DeployJobRun,
    json_name: "deployJobRun",
    oneof: 0,
    deprecated: false

  field :verify_job_run, 10,
    type: Google.Cloud.Deploy.V1.VerifyJobRun,
    json_name: "verifyJobRun",
    oneof: 0,
    deprecated: false

  field :predeploy_job_run, 14,
    type: Google.Cloud.Deploy.V1.PredeployJobRun,
    json_name: "predeployJobRun",
    oneof: 0,
    deprecated: false

  field :postdeploy_job_run, 15,
    type: Google.Cloud.Deploy.V1.PostdeployJobRun,
    json_name: "postdeployJobRun",
    oneof: 0,
    deprecated: false

  field :create_child_rollout_job_run, 12,
    type: Google.Cloud.Deploy.V1.CreateChildRolloutJobRun,
    json_name: "createChildRolloutJobRun",
    oneof: 0,
    deprecated: false

  field :advance_child_rollout_job_run, 13,
    type: Google.Cloud.Deploy.V1.AdvanceChildRolloutJobRun,
    json_name: "advanceChildRolloutJobRun",
    oneof: 0,
    deprecated: false

  field :etag, 11, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build, 1, type: :string, deprecated: false

  field :failure_cause, 2,
    type: Google.Cloud.Deploy.V1.DeployJobRun.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false

  field :failure_message, 3, type: :string, json_name: "failureMessage", deprecated: false
  field :metadata, 4, type: Google.Cloud.Deploy.V1.DeployJobRunMetadata, deprecated: false
  field :artifact, 5, type: Google.Cloud.Deploy.V1.DeployArtifact, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.VerifyJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build, 1, type: :string, deprecated: false
  field :artifact_uri, 2, type: :string, json_name: "artifactUri", deprecated: false
  field :event_log_path, 3, type: :string, json_name: "eventLogPath", deprecated: false

  field :failure_cause, 4,
    type: Google.Cloud.Deploy.V1.VerifyJobRun.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false

  field :failure_message, 5, type: :string, json_name: "failureMessage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PredeployJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build, 1, type: :string, deprecated: false

  field :failure_cause, 2,
    type: Google.Cloud.Deploy.V1.PredeployJobRun.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false

  field :failure_message, 3, type: :string, json_name: "failureMessage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PostdeployJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build, 1, type: :string, deprecated: false

  field :failure_cause, 2,
    type: Google.Cloud.Deploy.V1.PostdeployJobRun.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false

  field :failure_message, 3, type: :string, json_name: "failureMessage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateChildRolloutJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :rollout_phase_id, 2, type: :string, json_name: "rolloutPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceChildRolloutJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :rollout_phase_id, 2, type: :string, json_name: "rolloutPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListJobRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListJobRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :job_runs, 1, repeated: true, type: Google.Cloud.Deploy.V1.JobRun, json_name: "jobRuns"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetJobRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TerminateJobRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :override_deploy_policy, 2,
    repeated: true,
    type: :string,
    json_name: "overrideDeployPolicy",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TerminateJobRunResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :supported_versions, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.SkaffoldVersion,
    json_name: "supportedVersions"

  field :default_skaffold_version, 3, type: :string, json_name: "defaultSkaffoldVersion"
end

defmodule Google.Cloud.Deploy.V1.SkaffoldVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string

  field :maintenance_mode_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "maintenanceModeTime"

  field :support_expiration_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "supportExpirationTime"

  field :support_end_date, 2, type: Google.Type.Date, json_name: "supportEndDate"
end

defmodule Google.Cloud.Deploy.V1.GetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Automation.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Automation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Automation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Automation.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Automation.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
  field :suspended, 9, type: :bool, deprecated: false
  field :service_account, 10, type: :string, json_name: "serviceAccount", deprecated: false
  field :selector, 11, type: Google.Cloud.Deploy.V1.AutomationResourceSelector, deprecated: false
  field :rules, 14, repeated: true, type: Google.Cloud.Deploy.V1.AutomationRule, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AutomationResourceSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :targets, 1, repeated: true, type: Google.Cloud.Deploy.V1.TargetAttribute
end

defmodule Google.Cloud.Deploy.V1.AutomationRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :rule, 0

  field :promote_release_rule, 1,
    type: Google.Cloud.Deploy.V1.PromoteReleaseRule,
    json_name: "promoteReleaseRule",
    oneof: 0,
    deprecated: false

  field :advance_rollout_rule, 2,
    type: Google.Cloud.Deploy.V1.AdvanceRolloutRule,
    json_name: "advanceRolloutRule",
    oneof: 0,
    deprecated: false

  field :repair_rollout_rule, 3,
    type: Google.Cloud.Deploy.V1.RepairRolloutRule,
    json_name: "repairRolloutRule",
    oneof: 0,
    deprecated: false

  field :timed_promote_release_rule, 4,
    type: Google.Cloud.Deploy.V1.TimedPromoteReleaseRule,
    json_name: "timedPromoteReleaseRule",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TimedPromoteReleaseRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :destination_target_id, 2,
    type: :string,
    json_name: "destinationTargetId",
    deprecated: false

  field :schedule, 3, type: :string, deprecated: false
  field :time_zone, 4, type: :string, json_name: "timeZone", deprecated: false
  field :condition, 5, type: Google.Cloud.Deploy.V1.AutomationRuleCondition, deprecated: false
  field :destination_phase, 6, type: :string, json_name: "destinationPhase", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PromoteReleaseRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :wait, 2, type: Google.Protobuf.Duration, deprecated: false

  field :destination_target_id, 7,
    type: :string,
    json_name: "destinationTargetId",
    deprecated: false

  field :condition, 5, type: Google.Cloud.Deploy.V1.AutomationRuleCondition, deprecated: false
  field :destination_phase, 8, type: :string, json_name: "destinationPhase", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :source_phases, 6,
    repeated: true,
    type: :string,
    json_name: "sourcePhases",
    deprecated: false

  field :wait, 3, type: Google.Protobuf.Duration, deprecated: false
  field :condition, 5, type: Google.Cloud.Deploy.V1.AutomationRuleCondition, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RepairRolloutRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :phases, 7, repeated: true, type: :string, deprecated: false
  field :jobs, 3, repeated: true, type: :string, deprecated: false
  field :condition, 6, type: Google.Cloud.Deploy.V1.AutomationRuleCondition, deprecated: false

  field :repair_phases, 8,
    repeated: true,
    type: Google.Cloud.Deploy.V1.RepairPhaseConfig,
    json_name: "repairPhases",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RepairPhaseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :repair_phase, 0

  field :retry, 1, type: Google.Cloud.Deploy.V1.Retry, oneof: 0, deprecated: false
  field :rollback, 2, type: Google.Cloud.Deploy.V1.Rollback, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Retry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attempts, 1, type: :int64, deprecated: false
  field :wait, 2, type: Google.Protobuf.Duration, deprecated: false

  field :backoff_mode, 3,
    type: Google.Cloud.Deploy.V1.BackoffMode,
    json_name: "backoffMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Rollback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_phase, 1, type: :string, json_name: "destinationPhase", deprecated: false

  field :disable_rollback_if_rollout_pending, 2,
    type: :bool,
    json_name: "disableRollbackIfRolloutPending",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AutomationRuleCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :rule_type_condition, 0

  field :targets_present_condition, 1,
    type: Google.Cloud.Deploy.V1.TargetsPresentCondition,
    json_name: "targetsPresentCondition",
    deprecated: false

  field :timed_promote_release_condition, 2,
    type: Google.Cloud.Deploy.V1.TimedPromoteReleaseCondition,
    json_name: "timedPromoteReleaseCondition",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TimedPromoteReleaseCondition.Targets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_target_id, 1, type: :string, json_name: "sourceTargetId", deprecated: false

  field :destination_target_id, 2,
    type: :string,
    json_name: "destinationTargetId",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TimedPromoteReleaseCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :next_promotion_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "nextPromotionTime",
    deprecated: false

  field :targets_list, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.TimedPromoteReleaseCondition.Targets,
    json_name: "targetsList",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateAutomationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :automation_id, 2, type: :string, json_name: "automationId", deprecated: false
  field :automation, 3, type: Google.Cloud.Deploy.V1.Automation, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateAutomationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :automation, 2, type: Google.Cloud.Deploy.V1.Automation, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeleteAutomationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListAutomationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Deploy.V1.ListAutomationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :automations, 1, repeated: true, type: Google.Cloud.Deploy.V1.Automation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetAutomationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AutomationRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :operation, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :automation_snapshot, 6,
    type: Google.Cloud.Deploy.V1.Automation,
    json_name: "automationSnapshot",
    deprecated: false

  field :target_id, 7, type: :string, json_name: "targetId", deprecated: false
  field :state, 8, type: Google.Cloud.Deploy.V1.AutomationRun.State, enum: true, deprecated: false
  field :state_description, 9, type: :string, json_name: "stateDescription", deprecated: false

  field :policy_violation, 10,
    type: Google.Cloud.Deploy.V1.PolicyViolation,
    json_name: "policyViolation",
    deprecated: false

  field :expire_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :rule_id, 12, type: :string, json_name: "ruleId", deprecated: false
  field :automation_id, 15, type: :string, json_name: "automationId", deprecated: false

  field :promote_release_operation, 13,
    type: Google.Cloud.Deploy.V1.PromoteReleaseOperation,
    json_name: "promoteReleaseOperation",
    oneof: 0,
    deprecated: false

  field :advance_rollout_operation, 14,
    type: Google.Cloud.Deploy.V1.AdvanceRolloutOperation,
    json_name: "advanceRolloutOperation",
    oneof: 0,
    deprecated: false

  field :repair_rollout_operation, 17,
    type: Google.Cloud.Deploy.V1.RepairRolloutOperation,
    json_name: "repairRolloutOperation",
    oneof: 0,
    deprecated: false

  field :timed_promote_release_operation, 19,
    type: Google.Cloud.Deploy.V1.TimedPromoteReleaseOperation,
    json_name: "timedPromoteReleaseOperation",
    oneof: 0,
    deprecated: false

  field :wait_until_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "waitUntilTime",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PromoteReleaseOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_id, 1, type: :string, json_name: "targetId", deprecated: false
  field :wait, 2, type: Google.Protobuf.Duration, deprecated: false
  field :rollout, 3, type: :string, deprecated: false
  field :phase, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_phase, 5, type: :string, json_name: "sourcePhase", deprecated: false
  field :wait, 2, type: Google.Protobuf.Duration, deprecated: false
  field :rollout, 3, type: :string, deprecated: false
  field :destination_phase, 4, type: :string, json_name: "destinationPhase", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RepairRolloutOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false

  field :current_repair_phase_index, 6,
    type: :int64,
    json_name: "currentRepairPhaseIndex",
    deprecated: false

  field :repair_phases, 3,
    repeated: true,
    type: Google.Cloud.Deploy.V1.RepairPhase,
    json_name: "repairPhases",
    deprecated: false

  field :phase_id, 4, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 5, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TimedPromoteReleaseOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_id, 1, type: :string, json_name: "targetId", deprecated: false
  field :release, 2, type: :string, deprecated: false
  field :phase, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RepairPhase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :repair_phase, 0

  field :retry, 1, type: Google.Cloud.Deploy.V1.RetryPhase, oneof: 0, deprecated: false
  field :rollback, 2, type: Google.Cloud.Deploy.V1.RollbackAttempt, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RetryPhase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :total_attempts, 1, type: :int64, json_name: "totalAttempts", deprecated: false

  field :backoff_mode, 2,
    type: Google.Cloud.Deploy.V1.BackoffMode,
    json_name: "backoffMode",
    enum: true,
    deprecated: false

  field :attempts, 5, repeated: true, type: Google.Cloud.Deploy.V1.RetryAttempt, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RetryAttempt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attempt, 1, type: :int64, deprecated: false
  field :wait, 2, type: Google.Protobuf.Duration, deprecated: false
  field :state, 5, type: Google.Cloud.Deploy.V1.RepairState, enum: true, deprecated: false
  field :state_desc, 6, type: :string, json_name: "stateDesc", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RollbackAttempt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_phase, 1, type: :string, json_name: "destinationPhase", deprecated: false
  field :rollout_id, 2, type: :string, json_name: "rolloutId", deprecated: false
  field :state, 3, type: Google.Cloud.Deploy.V1.RepairState, enum: true, deprecated: false
  field :state_desc, 4, type: :string, json_name: "stateDesc", deprecated: false

  field :disable_rollback_if_rollout_pending, 5,
    type: :bool,
    json_name: "disableRollbackIfRolloutPending",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListAutomationRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Deploy.V1.ListAutomationRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :automation_runs, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.AutomationRun,
    json_name: "automationRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetAutomationRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CancelAutomationRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CancelAutomationRunResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.CloudDeploy.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.deploy.v1.CloudDeploy",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListDeliveryPipelines,
      Google.Cloud.Deploy.V1.ListDeliveryPipelinesRequest,
      Google.Cloud.Deploy.V1.ListDeliveryPipelinesResponse

  rpc :GetDeliveryPipeline,
      Google.Cloud.Deploy.V1.GetDeliveryPipelineRequest,
      Google.Cloud.Deploy.V1.DeliveryPipeline

  rpc :CreateDeliveryPipeline,
      Google.Cloud.Deploy.V1.CreateDeliveryPipelineRequest,
      Google.Longrunning.Operation

  rpc :UpdateDeliveryPipeline,
      Google.Cloud.Deploy.V1.UpdateDeliveryPipelineRequest,
      Google.Longrunning.Operation

  rpc :DeleteDeliveryPipeline,
      Google.Cloud.Deploy.V1.DeleteDeliveryPipelineRequest,
      Google.Longrunning.Operation

  rpc :ListTargets,
      Google.Cloud.Deploy.V1.ListTargetsRequest,
      Google.Cloud.Deploy.V1.ListTargetsResponse

  rpc :RollbackTarget,
      Google.Cloud.Deploy.V1.RollbackTargetRequest,
      Google.Cloud.Deploy.V1.RollbackTargetResponse

  rpc :GetTarget, Google.Cloud.Deploy.V1.GetTargetRequest, Google.Cloud.Deploy.V1.Target

  rpc :CreateTarget, Google.Cloud.Deploy.V1.CreateTargetRequest, Google.Longrunning.Operation

  rpc :UpdateTarget, Google.Cloud.Deploy.V1.UpdateTargetRequest, Google.Longrunning.Operation

  rpc :DeleteTarget, Google.Cloud.Deploy.V1.DeleteTargetRequest, Google.Longrunning.Operation

  rpc :ListCustomTargetTypes,
      Google.Cloud.Deploy.V1.ListCustomTargetTypesRequest,
      Google.Cloud.Deploy.V1.ListCustomTargetTypesResponse

  rpc :GetCustomTargetType,
      Google.Cloud.Deploy.V1.GetCustomTargetTypeRequest,
      Google.Cloud.Deploy.V1.CustomTargetType

  rpc :CreateCustomTargetType,
      Google.Cloud.Deploy.V1.CreateCustomTargetTypeRequest,
      Google.Longrunning.Operation

  rpc :UpdateCustomTargetType,
      Google.Cloud.Deploy.V1.UpdateCustomTargetTypeRequest,
      Google.Longrunning.Operation

  rpc :DeleteCustomTargetType,
      Google.Cloud.Deploy.V1.DeleteCustomTargetTypeRequest,
      Google.Longrunning.Operation

  rpc :ListReleases,
      Google.Cloud.Deploy.V1.ListReleasesRequest,
      Google.Cloud.Deploy.V1.ListReleasesResponse

  rpc :GetRelease, Google.Cloud.Deploy.V1.GetReleaseRequest, Google.Cloud.Deploy.V1.Release

  rpc :CreateRelease, Google.Cloud.Deploy.V1.CreateReleaseRequest, Google.Longrunning.Operation

  rpc :AbandonRelease,
      Google.Cloud.Deploy.V1.AbandonReleaseRequest,
      Google.Cloud.Deploy.V1.AbandonReleaseResponse

  rpc :CreateDeployPolicy,
      Google.Cloud.Deploy.V1.CreateDeployPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateDeployPolicy,
      Google.Cloud.Deploy.V1.UpdateDeployPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteDeployPolicy,
      Google.Cloud.Deploy.V1.DeleteDeployPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListDeployPolicies,
      Google.Cloud.Deploy.V1.ListDeployPoliciesRequest,
      Google.Cloud.Deploy.V1.ListDeployPoliciesResponse

  rpc :GetDeployPolicy,
      Google.Cloud.Deploy.V1.GetDeployPolicyRequest,
      Google.Cloud.Deploy.V1.DeployPolicy

  rpc :ApproveRollout,
      Google.Cloud.Deploy.V1.ApproveRolloutRequest,
      Google.Cloud.Deploy.V1.ApproveRolloutResponse

  rpc :AdvanceRollout,
      Google.Cloud.Deploy.V1.AdvanceRolloutRequest,
      Google.Cloud.Deploy.V1.AdvanceRolloutResponse

  rpc :CancelRollout,
      Google.Cloud.Deploy.V1.CancelRolloutRequest,
      Google.Cloud.Deploy.V1.CancelRolloutResponse

  rpc :ListRollouts,
      Google.Cloud.Deploy.V1.ListRolloutsRequest,
      Google.Cloud.Deploy.V1.ListRolloutsResponse

  rpc :GetRollout, Google.Cloud.Deploy.V1.GetRolloutRequest, Google.Cloud.Deploy.V1.Rollout

  rpc :CreateRollout, Google.Cloud.Deploy.V1.CreateRolloutRequest, Google.Longrunning.Operation

  rpc :IgnoreJob,
      Google.Cloud.Deploy.V1.IgnoreJobRequest,
      Google.Cloud.Deploy.V1.IgnoreJobResponse

  rpc :RetryJob, Google.Cloud.Deploy.V1.RetryJobRequest, Google.Cloud.Deploy.V1.RetryJobResponse

  rpc :ListJobRuns,
      Google.Cloud.Deploy.V1.ListJobRunsRequest,
      Google.Cloud.Deploy.V1.ListJobRunsResponse

  rpc :GetJobRun, Google.Cloud.Deploy.V1.GetJobRunRequest, Google.Cloud.Deploy.V1.JobRun

  rpc :TerminateJobRun,
      Google.Cloud.Deploy.V1.TerminateJobRunRequest,
      Google.Cloud.Deploy.V1.TerminateJobRunResponse

  rpc :GetConfig, Google.Cloud.Deploy.V1.GetConfigRequest, Google.Cloud.Deploy.V1.Config

  rpc :CreateAutomation,
      Google.Cloud.Deploy.V1.CreateAutomationRequest,
      Google.Longrunning.Operation

  rpc :UpdateAutomation,
      Google.Cloud.Deploy.V1.UpdateAutomationRequest,
      Google.Longrunning.Operation

  rpc :DeleteAutomation,
      Google.Cloud.Deploy.V1.DeleteAutomationRequest,
      Google.Longrunning.Operation

  rpc :GetAutomation,
      Google.Cloud.Deploy.V1.GetAutomationRequest,
      Google.Cloud.Deploy.V1.Automation

  rpc :ListAutomations,
      Google.Cloud.Deploy.V1.ListAutomationsRequest,
      Google.Cloud.Deploy.V1.ListAutomationsResponse

  rpc :GetAutomationRun,
      Google.Cloud.Deploy.V1.GetAutomationRunRequest,
      Google.Cloud.Deploy.V1.AutomationRun

  rpc :ListAutomationRuns,
      Google.Cloud.Deploy.V1.ListAutomationRunsRequest,
      Google.Cloud.Deploy.V1.ListAutomationRunsResponse

  rpc :CancelAutomationRun,
      Google.Cloud.Deploy.V1.CancelAutomationRunRequest,
      Google.Cloud.Deploy.V1.CancelAutomationRunResponse
end

defmodule Google.Cloud.Deploy.V1.CloudDeploy.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Deploy.V1.CloudDeploy.Service
end
