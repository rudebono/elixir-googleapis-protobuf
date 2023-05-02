defmodule Google.Cloud.Deploy.V1.SkaffoldSupportState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SKAFFOLD_SUPPORT_STATE_UNSPECIFIED, 0
  field :SKAFFOLD_SUPPORT_STATE_SUPPORTED, 1
  field :SKAFFOLD_SUPPORT_STATE_MAINTENANCE_MODE, 2
  field :SKAFFOLD_SUPPORT_STATE_UNSUPPORTED, 3
end

defmodule Google.Cloud.Deploy.V1.ExecutionConfig.ExecutionEnvironmentUsage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED, 0
  field :RENDER, 1
  field :DEPLOY, 2
  field :VERIFY, 3
end

defmodule Google.Cloud.Deploy.V1.Release.RenderState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :CLOUD_BUILD_REQUEST_FAILED, 3
end

defmodule Google.Cloud.Deploy.V1.Rollout.ApprovalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :APPROVAL_STATE_UNSPECIFIED, 0
  field :NEEDS_APPROVAL, 1
  field :DOES_NOT_NEED_APPROVAL, 2
  field :APPROVED, 3
  field :REJECTED, 4
end

defmodule Google.Cloud.Deploy.V1.Rollout.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :RELEASE_FAILED, 4
  field :RELEASE_ABANDONED, 5
  field :VERIFICATION_CONFIG_NOT_FOUND, 6
  field :CLOUD_BUILD_REQUEST_FAILED, 7
end

defmodule Google.Cloud.Deploy.V1.Phase.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
end

defmodule Google.Cloud.Deploy.V1.DeployJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :MISSING_RESOURCES_FOR_CANARY, 4
  field :CLOUD_BUILD_REQUEST_FAILED, 5
end

defmodule Google.Cloud.Deploy.V1.VerifyJobRun.FailureCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :VERIFICATION_CONFIG_NOT_FOUND, 4
  field :CLOUD_BUILD_REQUEST_FAILED, 5
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.DeliveryPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stages, 1, repeated: true, type: Google.Cloud.Deploy.V1.Stage
end

defmodule Google.Cloud.Deploy.V1.Stage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_id, 1, type: :string, json_name: "targetId"
  field :profiles, 2, repeated: true, type: :string
  field :strategy, 5, type: Google.Cloud.Deploy.V1.Strategy, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Strategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :deployment_strategy, 0

  field :standard, 1, type: Google.Cloud.Deploy.V1.Standard, oneof: 0
  field :canary, 2, type: Google.Cloud.Deploy.V1.Canary, oneof: 0
end

defmodule Google.Cloud.Deploy.V1.Standard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :verify, 1, type: :bool
end

defmodule Google.Cloud.Deploy.V1.Canary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :percentages, 1, repeated: true, type: :int32, deprecated: false
  field :verify, 2, type: :bool
end

defmodule Google.Cloud.Deploy.V1.CustomCanaryDeployment.PhaseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phase_id, 1, type: :string, json_name: "phaseId", deprecated: false
  field :percentage, 2, type: :int32, deprecated: false
  field :profiles, 3, repeated: true, type: :string
  field :verify, 4, type: :bool
end

defmodule Google.Cloud.Deploy.V1.CustomCanaryDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phase_configs, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.CustomCanaryDeployment.PhaseConfig,
    json_name: "phaseConfigs",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig.GatewayServiceMesh do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :http_route, 1, type: :string, json_name: "httpRoute", deprecated: false
  field :service, 2, type: :string, deprecated: false
  field :deployment, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig.ServiceNetworking do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
  field :deployment, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.KubernetesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :automatic_traffic_control, 1, type: :bool, json_name: "automaticTrafficControl"
end

defmodule Google.Cloud.Deploy.V1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :runtime_config, 0

  field :kubernetes, 1, type: Google.Cloud.Deploy.V1.KubernetesConfig, oneof: 0

  field :cloud_run, 2,
    type: Google.Cloud.Deploy.V1.CloudRunConfig,
    json_name: "cloudRun",
    oneof: 0
end

defmodule Google.Cloud.Deploy.V1.PipelineReadyCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 3, type: :bool
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Deploy.V1.TargetsPresentCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 1, type: :bool
  field :error_details, 2, type: :string, json_name: "errorDetails"
end

defmodule Google.Cloud.Deploy.V1.PipelineCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Deploy.V1.ListDeliveryPipelinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :delivery_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipelines"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateDeliveryPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Target.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Target.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :gke, 15, type: Google.Cloud.Deploy.V1.GkeCluster, oneof: 0

  field :anthos_cluster, 17,
    type: Google.Cloud.Deploy.V1.AnthosCluster,
    json_name: "anthosCluster",
    oneof: 0

  field :run, 18, type: Google.Cloud.Deploy.V1.CloudRunLocation, oneof: 0

  field :multi_target, 19,
    type: Google.Cloud.Deploy.V1.MultiTarget,
    json_name: "multiTarget",
    oneof: 0

  field :etag, 12, type: :string, deprecated: false

  field :execution_configs, 16,
    repeated: true,
    type: Google.Cloud.Deploy.V1.ExecutionConfig,
    json_name: "executionConfigs"
end

defmodule Google.Cloud.Deploy.V1.ExecutionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Deploy.V1.DefaultPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 2, type: :string, json_name: "artifactStorage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.PrivatePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 3, type: :string, json_name: "artifactStorage", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.GkeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
  field :internal_ip, 2, type: :bool, json_name: "internalIp", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AnthosCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :membership, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.MultiTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_ids, 1, repeated: true, type: :string, json_name: "targetIds", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListTargetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListTargetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :targets, 1, repeated: true, type: Google.Cloud.Deploy.V1.Target
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :target_id, 2, type: :string, json_name: "targetId", deprecated: false
  field :target, 3, type: Google.Cloud.Deploy.V1.Target, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.UpdateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRender do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 1, type: :bool
end

defmodule Google.Cloud.Deploy.V1.Release.SkaffoldSupportedCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :release_ready_condition, 1,
    type: Google.Cloud.Deploy.V1.Release.ReleaseReadyCondition,
    json_name: "releaseReadyCondition"

  field :skaffold_supported_condition, 2,
    type: Google.Cloud.Deploy.V1.Release.SkaffoldSupportedCondition,
    json_name: "skaffoldSupportedCondition"
end

defmodule Google.Cloud.Deploy.V1.Release.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Release.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Release.TargetArtifactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.TargetArtifact
end

defmodule Google.Cloud.Deploy.V1.Release.TargetRendersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.Release.TargetRender
end

defmodule Google.Cloud.Deploy.V1.Release do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :render_state, 13,
    type: Google.Cloud.Deploy.V1.Release.RenderState,
    json_name: "renderState",
    enum: true,
    deprecated: false

  field :etag, 16, type: :string
  field :skaffold_version, 19, type: :string, json_name: "skaffoldVersion"

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
end

defmodule Google.Cloud.Deploy.V1.BuildArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image, 3, type: :string
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :skaffold_config_path, 1,
    type: :string,
    json_name: "skaffoldConfigPath",
    deprecated: false

  field :manifest_path, 3, type: :string, json_name: "manifestPath", deprecated: false
  field :job_manifests_path, 4, type: :string, json_name: "jobManifestsPath", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifactsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.TargetArtifact.PhaseArtifact
end

defmodule Google.Cloud.Deploy.V1.TargetArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :artifact_uri, 1, type: :string, json_name: "artifactUri", deprecated: false

  field :manifest_paths, 2,
    repeated: true,
    type: :string,
    json_name: "manifestPaths",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunRenderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RenderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunRenderMetadata,
    json_name: "cloudRun",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListReleasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListReleasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :releases, 1, repeated: true, type: Google.Cloud.Deploy.V1.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Deploy.V1.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Rollout.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Rollout.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Deploy.V1.Rollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Deploy.V1.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunMetadata,
    json_name: "cloudRun",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.DeployJobRunMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cloud_run, 1,
    type: Google.Cloud.Deploy.V1.CloudRunMetadata,
    json_name: "cloudRun",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudRunMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false

  field :service_urls, 2,
    repeated: true,
    type: :string,
    json_name: "serviceUrls",
    deprecated: false

  field :revision, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.Phase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deploy_job, 1,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "deployJob",
    deprecated: false

  field :verify_job, 2,
    type: Google.Cloud.Deploy.V1.Job,
    json_name: "verifyJob",
    deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ChildRolloutJobs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.VerifyJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.CreateChildRolloutJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AdvanceChildRolloutJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollouts, 1, repeated: true, type: Google.Cloud.Deploy.V1.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CreateRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :rollout_id, 2, type: :string, json_name: "rolloutId", deprecated: false
  field :rollout, 3, type: Google.Cloud.Deploy.V1.Rollout, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :starting_phase_id, 7, type: :string, json_name: "startingPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :approved, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ApproveRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.CancelRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CancelRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.IgnoreJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.IgnoreJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.RetryJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :phase_id, 2, type: :string, json_name: "phaseId", deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.RetryJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.AbandonReleaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AbandonReleaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.JobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Deploy.V1.CreateChildRolloutJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :rollout_phase_id, 2, type: :string, json_name: "rolloutPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.AdvanceChildRolloutJobRun do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: :string, deprecated: false
  field :rollout_phase_id, 2, type: :string, json_name: "rolloutPhaseId", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListJobRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Deploy.V1.ListJobRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_runs, 1, repeated: true, type: Google.Cloud.Deploy.V1.JobRun, json_name: "jobRuns"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Deploy.V1.GetJobRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TerminateJobRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.TerminateJobRunResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Deploy.V1.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :supported_versions, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.SkaffoldVersion,
    json_name: "supportedVersions"

  field :default_skaffold_version, 3, type: :string, json_name: "defaultSkaffoldVersion"
end

defmodule Google.Cloud.Deploy.V1.SkaffoldVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Deploy.V1.CloudDeploy.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.deploy.v1.CloudDeploy",
    protoc_gen_elixir_version: "0.12.0"

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

  rpc :GetTarget, Google.Cloud.Deploy.V1.GetTargetRequest, Google.Cloud.Deploy.V1.Target

  rpc :CreateTarget, Google.Cloud.Deploy.V1.CreateTargetRequest, Google.Longrunning.Operation

  rpc :UpdateTarget, Google.Cloud.Deploy.V1.UpdateTargetRequest, Google.Longrunning.Operation

  rpc :DeleteTarget, Google.Cloud.Deploy.V1.DeleteTargetRequest, Google.Longrunning.Operation

  rpc :ListReleases,
      Google.Cloud.Deploy.V1.ListReleasesRequest,
      Google.Cloud.Deploy.V1.ListReleasesResponse

  rpc :GetRelease, Google.Cloud.Deploy.V1.GetReleaseRequest, Google.Cloud.Deploy.V1.Release

  rpc :CreateRelease, Google.Cloud.Deploy.V1.CreateReleaseRequest, Google.Longrunning.Operation

  rpc :AbandonRelease,
      Google.Cloud.Deploy.V1.AbandonReleaseRequest,
      Google.Cloud.Deploy.V1.AbandonReleaseResponse

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
end

defmodule Google.Cloud.Deploy.V1.CloudDeploy.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Deploy.V1.CloudDeploy.Service
end