defmodule Google.Cloud.Deploy.V1.ExecutionConfig.ExecutionEnvironmentUsage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED | :RENDER | :DEPLOY

  field :EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED, 0
  field :RENDER, 1
  field :DEPLOY, 2
end
defmodule Google.Cloud.Deploy.V1.Release.RenderState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RENDER_STATE_UNSPECIFIED | :SUCCEEDED | :FAILED | :IN_PROGRESS

  field :RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end
defmodule Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TARGET_RENDER_STATE_UNSPECIFIED | :SUCCEEDED | :FAILED | :IN_PROGRESS

  field :TARGET_RENDER_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
end
defmodule Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FAILURE_CAUSE_UNSPECIFIED | :CLOUD_BUILD_UNAVAILABLE | :EXECUTION_FAILED

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
end
defmodule Google.Cloud.Deploy.V1.Rollout.ApprovalState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :APPROVAL_STATE_UNSPECIFIED
          | :NEEDS_APPROVAL
          | :DOES_NOT_NEED_APPROVAL
          | :APPROVED
          | :REJECTED

  field :APPROVAL_STATE_UNSPECIFIED, 0
  field :NEEDS_APPROVAL, 1
  field :DOES_NOT_NEED_APPROVAL, 2
  field :APPROVED, 3
  field :REJECTED, 4
end
defmodule Google.Cloud.Deploy.V1.Rollout.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :SUCCEEDED
          | :FAILED
          | :IN_PROGRESS
          | :PENDING_APPROVAL
          | :APPROVAL_REJECTED
          | :PENDING
          | :PENDING_RELEASE

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :IN_PROGRESS, 3
  field :PENDING_APPROVAL, 4
  field :APPROVAL_REJECTED, 5
  field :PENDING, 6
  field :PENDING_RELEASE, 7
end
defmodule Google.Cloud.Deploy.V1.Rollout.FailureCause do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FAILURE_CAUSE_UNSPECIFIED
          | :CLOUD_BUILD_UNAVAILABLE
          | :EXECUTION_FAILED
          | :DEADLINE_EXCEEDED
          | :RELEASE_FAILED

  field :FAILURE_CAUSE_UNSPECIFIED, 0
  field :CLOUD_BUILD_UNAVAILABLE, 1
  field :EXECUTION_FAILED, 2
  field :DEADLINE_EXCEEDED, 3
  field :RELEASE_FAILED, 4
end
defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.DeliveryPipeline.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.DeliveryPipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline: {:serial_pipeline, Google.Cloud.Deploy.V1.SerialPipeline.t() | nil},
          name: String.t(),
          uid: String.t(),
          description: String.t(),
          annotations: %{String.t() => String.t()},
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          condition: Google.Cloud.Deploy.V1.PipelineCondition.t() | nil,
          etag: String.t()
        }

  defstruct pipeline: nil,
            name: "",
            uid: "",
            description: "",
            annotations: %{},
            labels: %{},
            create_time: nil,
            update_time: nil,
            condition: nil,
            etag: ""

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
end
defmodule Google.Cloud.Deploy.V1.SerialPipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stages: [Google.Cloud.Deploy.V1.Stage.t()]
        }

  defstruct stages: []

  field :stages, 1, repeated: true, type: Google.Cloud.Deploy.V1.Stage
end
defmodule Google.Cloud.Deploy.V1.Stage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_id: String.t(),
          profiles: [String.t()]
        }

  defstruct target_id: "",
            profiles: []

  field :target_id, 1, type: :string, json_name: "targetId"
  field :profiles, 2, repeated: true, type: :string
end
defmodule Google.Cloud.Deploy.V1.PipelineReadyCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct status: false,
            update_time: nil

  field :status, 3, type: :bool
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Deploy.V1.TargetsPresentCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: boolean,
          missing_targets: [String.t()],
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct status: false,
            missing_targets: [],
            update_time: nil

  field :status, 1, type: :bool

  field :missing_targets, 2,
    repeated: true,
    type: :string,
    json_name: "missingTargets",
    deprecated: false

  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Deploy.V1.PipelineCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pipeline_ready_condition: Google.Cloud.Deploy.V1.PipelineReadyCondition.t() | nil,
          targets_present_condition: Google.Cloud.Deploy.V1.TargetsPresentCondition.t() | nil
        }

  defstruct pipeline_ready_condition: nil,
            targets_present_condition: nil

  field :pipeline_ready_condition, 1,
    type: Google.Cloud.Deploy.V1.PipelineReadyCondition,
    json_name: "pipelineReadyCondition"

  field :targets_present_condition, 3,
    type: Google.Cloud.Deploy.V1.TargetsPresentCondition,
    json_name: "targetsPresentCondition"
end
defmodule Google.Cloud.Deploy.V1.ListDeliveryPipelinesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Deploy.V1.ListDeliveryPipelinesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_pipelines: [Google.Cloud.Deploy.V1.DeliveryPipeline.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct delivery_pipelines: [],
            next_page_token: "",
            unreachable: []

  field :delivery_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Deploy.V1.DeliveryPipeline,
    json_name: "deliveryPipelines"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Deploy.V1.GetDeliveryPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.CreateDeliveryPipelineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          delivery_pipeline_id: String.t(),
          delivery_pipeline: Google.Cloud.Deploy.V1.DeliveryPipeline.t() | nil,
          request_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            delivery_pipeline_id: "",
            delivery_pipeline: nil,
            request_id: "",
            validate_only: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          delivery_pipeline: Google.Cloud.Deploy.V1.DeliveryPipeline.t() | nil,
          request_id: String.t(),
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            delivery_pipeline: nil,
            request_id: "",
            allow_missing: false,
            validate_only: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          allow_missing: boolean,
          validate_only: boolean,
          force: boolean,
          etag: String.t()
        }

  defstruct name: "",
            request_id: "",
            allow_missing: false,
            validate_only: false,
            force: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 6, type: :bool, deprecated: false
  field :etag, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.Target.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Target.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Target do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployment_target:
            {:gke, Google.Cloud.Deploy.V1.GkeCluster.t() | nil}
            | {:anthos_cluster, Google.Cloud.Deploy.V1.AnthosCluster.t() | nil},
          name: String.t(),
          target_id: String.t(),
          uid: String.t(),
          description: String.t(),
          annotations: %{String.t() => String.t()},
          labels: %{String.t() => String.t()},
          require_approval: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          execution_configs: [Google.Cloud.Deploy.V1.ExecutionConfig.t()]
        }

  defstruct deployment_target: nil,
            name: "",
            target_id: "",
            uid: "",
            description: "",
            annotations: %{},
            labels: %{},
            require_approval: false,
            create_time: nil,
            update_time: nil,
            etag: "",
            execution_configs: []

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

  field :etag, 12, type: :string, deprecated: false

  field :execution_configs, 16,
    repeated: true,
    type: Google.Cloud.Deploy.V1.ExecutionConfig,
    json_name: "executionConfigs"
end
defmodule Google.Cloud.Deploy.V1.ExecutionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution_environment:
            {:default_pool, Google.Cloud.Deploy.V1.DefaultPool.t() | nil}
            | {:private_pool, Google.Cloud.Deploy.V1.PrivatePool.t() | nil},
          usages: [Google.Cloud.Deploy.V1.ExecutionConfig.ExecutionEnvironmentUsage.t()],
          worker_pool: String.t(),
          service_account: String.t(),
          artifact_storage: String.t()
        }

  defstruct execution_environment: nil,
            usages: [],
            worker_pool: "",
            service_account: "",
            artifact_storage: ""

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
end
defmodule Google.Cloud.Deploy.V1.DefaultPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account: String.t(),
          artifact_storage: String.t()
        }

  defstruct service_account: "",
            artifact_storage: ""

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 2, type: :string, json_name: "artifactStorage", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.PrivatePool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool: String.t(),
          service_account: String.t(),
          artifact_storage: String.t()
        }

  defstruct worker_pool: "",
            service_account: "",
            artifact_storage: ""

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
  field :artifact_storage, 3, type: :string, json_name: "artifactStorage", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.GkeCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t(),
          internal_ip: boolean
        }

  defstruct cluster: "",
            internal_ip: false

  field :cluster, 1, type: :string, deprecated: false
  field :internal_ip, 2, type: :bool, json_name: "internalIp", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.AnthosCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          membership: String.t()
        }

  defstruct membership: ""

  field :membership, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ListTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ListTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          targets: [Google.Cloud.Deploy.V1.Target.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct targets: [],
            next_page_token: "",
            unreachable: []

  field :targets, 1, repeated: true, type: Google.Cloud.Deploy.V1.Target
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Deploy.V1.GetTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.CreateTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          target_id: String.t(),
          target: Google.Cloud.Deploy.V1.Target.t() | nil,
          request_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            target_id: "",
            target: nil,
            request_id: "",
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :target_id, 2, type: :string, json_name: "targetId", deprecated: false
  field :target, 3, type: Google.Cloud.Deploy.V1.Target, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.UpdateTargetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          target: Google.Cloud.Deploy.V1.Target.t() | nil,
          request_id: String.t(),
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            target: nil,
            request_id: "",
            allow_missing: false,
            validate_only: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          allow_missing: boolean,
          validate_only: boolean,
          etag: String.t()
        }

  defstruct name: "",
            request_id: "",
            allow_missing: false,
            validate_only: false,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.Release.TargetRender do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rendering_build: String.t(),
          rendering_state: Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState.t(),
          failure_cause: Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause.t()
        }

  defstruct rendering_build: "",
            rendering_state: :TARGET_RENDER_STATE_UNSPECIFIED,
            failure_cause: :FAILURE_CAUSE_UNSPECIFIED

  field :rendering_build, 1, type: :string, json_name: "renderingBuild", deprecated: false

  field :rendering_state, 2,
    type: Google.Cloud.Deploy.V1.Release.TargetRender.TargetRenderState,
    json_name: "renderingState",
    enum: true,
    deprecated: false

  field :failure_cause, 4,
    type: Google.Cloud.Deploy.V1.Release.TargetRender.FailureCause,
    json_name: "failureCause",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Deploy.V1.Release.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Release.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Release.TargetArtifactsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Deploy.V1.TargetArtifact.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.TargetArtifact
end
defmodule Google.Cloud.Deploy.V1.Release.TargetRendersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Deploy.V1.Release.TargetRender.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Deploy.V1.Release.TargetRender
end
defmodule Google.Cloud.Deploy.V1.Release do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          description: String.t(),
          annotations: %{String.t() => String.t()},
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          render_start_time: Google.Protobuf.Timestamp.t() | nil,
          render_end_time: Google.Protobuf.Timestamp.t() | nil,
          skaffold_config_uri: String.t(),
          skaffold_config_path: String.t(),
          build_artifacts: [Google.Cloud.Deploy.V1.BuildArtifact.t()],
          delivery_pipeline_snapshot: Google.Cloud.Deploy.V1.DeliveryPipeline.t() | nil,
          target_snapshots: [Google.Cloud.Deploy.V1.Target.t()],
          render_state: Google.Cloud.Deploy.V1.Release.RenderState.t(),
          etag: String.t(),
          skaffold_version: String.t(),
          target_artifacts: %{String.t() => Google.Cloud.Deploy.V1.TargetArtifact.t() | nil},
          target_renders: %{String.t() => Google.Cloud.Deploy.V1.Release.TargetRender.t() | nil}
        }

  defstruct name: "",
            uid: "",
            description: "",
            annotations: %{},
            labels: %{},
            create_time: nil,
            render_start_time: nil,
            render_end_time: nil,
            skaffold_config_uri: "",
            skaffold_config_path: "",
            build_artifacts: [],
            delivery_pipeline_snapshot: nil,
            target_snapshots: [],
            render_state: :RENDER_STATE_UNSPECIFIED,
            etag: "",
            skaffold_version: "",
            target_artifacts: %{},
            target_renders: %{}

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Deploy.V1.Release.AnnotationsEntry,
    map: true

  field :labels, 5, repeated: true, type: Google.Cloud.Deploy.V1.Release.LabelsEntry, map: true

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
end
defmodule Google.Cloud.Deploy.V1.BuildArtifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t(),
          tag: String.t()
        }

  defstruct image: "",
            tag: ""

  field :image, 3, type: :string
  field :tag, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.TargetArtifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: {:artifact_uri, String.t()},
          skaffold_config_path: String.t(),
          manifest_path: String.t()
        }

  defstruct uri: nil,
            skaffold_config_path: "",
            manifest_path: ""

  oneof :uri, 0

  field :artifact_uri, 4, type: :string, json_name: "artifactUri", oneof: 0, deprecated: false

  field :skaffold_config_path, 2,
    type: :string,
    json_name: "skaffoldConfigPath",
    deprecated: false

  field :manifest_path, 3, type: :string, json_name: "manifestPath", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ListReleasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ListReleasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          releases: [Google.Cloud.Deploy.V1.Release.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct releases: [],
            next_page_token: "",
            unreachable: []

  field :releases, 1, repeated: true, type: Google.Cloud.Deploy.V1.Release
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Deploy.V1.GetReleaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.CreateReleaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          release_id: String.t(),
          release: Google.Cloud.Deploy.V1.Release.t() | nil,
          request_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            release_id: "",
            release: nil,
            request_id: "",
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :release_id, 2, type: :string, json_name: "releaseId", deprecated: false
  field :release, 3, type: Google.Cloud.Deploy.V1.Release, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.Rollout.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Rollout.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Deploy.V1.Rollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          description: String.t(),
          annotations: %{String.t() => String.t()},
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          approve_time: Google.Protobuf.Timestamp.t() | nil,
          enqueue_time: Google.Protobuf.Timestamp.t() | nil,
          deploy_start_time: Google.Protobuf.Timestamp.t() | nil,
          deploy_end_time: Google.Protobuf.Timestamp.t() | nil,
          target_id: String.t(),
          approval_state: Google.Cloud.Deploy.V1.Rollout.ApprovalState.t(),
          state: Google.Cloud.Deploy.V1.Rollout.State.t(),
          failure_reason: String.t(),
          deploying_build: String.t(),
          etag: String.t(),
          deploy_failure_cause: Google.Cloud.Deploy.V1.Rollout.FailureCause.t()
        }

  defstruct name: "",
            uid: "",
            description: "",
            annotations: %{},
            labels: %{},
            create_time: nil,
            approve_time: nil,
            enqueue_time: nil,
            deploy_start_time: nil,
            deploy_end_time: nil,
            target_id: "",
            approval_state: :APPROVAL_STATE_UNSPECIFIED,
            state: :STATE_UNSPECIFIED,
            failure_reason: "",
            deploying_build: "",
            etag: "",
            deploy_failure_cause: :FAILURE_CAUSE_UNSPECIFIED

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
end
defmodule Google.Cloud.Deploy.V1.ListRolloutsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ListRolloutsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollouts: [Google.Cloud.Deploy.V1.Rollout.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct rollouts: [],
            next_page_token: "",
            unreachable: []

  field :rollouts, 1, repeated: true, type: Google.Cloud.Deploy.V1.Rollout
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Deploy.V1.GetRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.CreateRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          rollout_id: String.t(),
          rollout: Google.Cloud.Deploy.V1.Rollout.t() | nil,
          request_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            rollout_id: "",
            rollout: nil,
            request_id: "",
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :rollout_id, 2, type: :string, json_name: "rolloutId", deprecated: false
  field :rollout, 3, type: Google.Cloud.Deploy.V1.Rollout, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Deploy.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          approved: boolean
        }

  defstruct name: "",
            approved: false

  field :name, 1, type: :string, deprecated: false
  field :approved, 2, type: :bool, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.ApproveRolloutResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Deploy.V1.Config do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          supported_versions: [Google.Cloud.Deploy.V1.SkaffoldVersion.t()],
          default_skaffold_version: String.t()
        }

  defstruct name: "",
            supported_versions: [],
            default_skaffold_version: ""

  field :name, 1, type: :string

  field :supported_versions, 2,
    repeated: true,
    type: Google.Cloud.Deploy.V1.SkaffoldVersion,
    json_name: "supportedVersions",
    deprecated: false

  field :default_skaffold_version, 3,
    type: :string,
    json_name: "defaultSkaffoldVersion",
    deprecated: false
end
defmodule Google.Cloud.Deploy.V1.SkaffoldVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          support_end_date: Google.Type.Date.t() | nil
        }

  defstruct version: "",
            support_end_date: nil

  field :version, 1, type: :string
  field :support_end_date, 2, type: Google.Type.Date, json_name: "supportEndDate"
end
defmodule Google.Cloud.Deploy.V1.GetConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Deploy.V1.CloudDeploy.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.deploy.v1.CloudDeploy"

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

  rpc :ApproveRollout,
      Google.Cloud.Deploy.V1.ApproveRolloutRequest,
      Google.Cloud.Deploy.V1.ApproveRolloutResponse

  rpc :ListRollouts,
      Google.Cloud.Deploy.V1.ListRolloutsRequest,
      Google.Cloud.Deploy.V1.ListRolloutsResponse

  rpc :GetRollout, Google.Cloud.Deploy.V1.GetRolloutRequest, Google.Cloud.Deploy.V1.Rollout

  rpc :CreateRollout, Google.Cloud.Deploy.V1.CreateRolloutRequest, Google.Longrunning.Operation

  rpc :GetConfig, Google.Cloud.Deploy.V1.GetConfigRequest, Google.Cloud.Deploy.V1.Config
end

defmodule Google.Cloud.Deploy.V1.CloudDeploy.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Deploy.V1.CloudDeploy.Service
end
