defmodule Google.Cloud.Config.V1.Deployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :FAILED, 5
  field :SUSPENDED, 6
  field :DELETED, 7
end

defmodule Google.Cloud.Config.V1.Deployment.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :REVISION_FAILED, 1
  field :CLOUD_BUILD_PERMISSION_DENIED, 3
  field :DELETE_BUILD_API_FAILED, 5
  field :DELETE_BUILD_RUN_FAILED, 6
  field :BUCKET_CREATION_PERMISSION_DENIED, 7
  field :BUCKET_CREATION_FAILED, 8
end

defmodule Google.Cloud.Config.V1.Deployment.LockState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOCK_STATE_UNSPECIFIED, 0
  field :LOCKED, 1
  field :UNLOCKED, 2
  field :LOCKING, 3
  field :UNLOCKING, 4
  field :LOCK_FAILED, 5
  field :UNLOCK_FAILED, 6
end

defmodule Google.Cloud.Config.V1.DeleteDeploymentRequest.DeletePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DELETE_POLICY_UNSPECIFIED, 0
  field :DELETE, 1
  field :ABANDON, 2
end

defmodule Google.Cloud.Config.V1.Revision.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
end

defmodule Google.Cloud.Config.V1.Revision.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :APPLYING, 1
  field :APPLIED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Config.V1.Revision.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :CLOUD_BUILD_PERMISSION_DENIED, 1
  field :APPLY_BUILD_API_FAILED, 4
  field :APPLY_BUILD_RUN_FAILED, 5
end

defmodule Google.Cloud.Config.V1.DeploymentOperationMetadata.DeploymentStep do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEPLOYMENT_STEP_UNSPECIFIED, 0
  field :PREPARING_STORAGE_BUCKET, 1
  field :DOWNLOADING_BLUEPRINT, 2
  field :RUNNING_TF_INIT, 3
  field :RUNNING_TF_PLAN, 4
  field :RUNNING_TF_APPLY, 5
  field :RUNNING_TF_DESTROY, 6
  field :RUNNING_TF_VALIDATE, 7
  field :UNLOCKING_DEPLOYMENT, 8
  field :SUCCEEDED, 9
  field :FAILED, 10
end

defmodule Google.Cloud.Config.V1.Resource.Intent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INTENT_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
  field :RECREATE, 4
  field :UNCHANGED, 5
end

defmodule Google.Cloud.Config.V1.Resource.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PLANNED, 1
  field :IN_PROGRESS, 2
  field :RECONCILED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Config.V1.Deployment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Config.V1.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :blueprint, 0

  field :terraform_blueprint, 6,
    type: Google.Cloud.Config.V1.TerraformBlueprint,
    json_name: "terraformBlueprint",
    oneof: 0

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Config.V1.Deployment.LabelsEntry, map: true
  field :state, 5, type: Google.Cloud.Config.V1.Deployment.State, enum: true, deprecated: false
  field :latest_revision, 7, type: :string, json_name: "latestRevision", deprecated: false
  field :state_detail, 9, type: :string, json_name: "stateDetail", deprecated: false

  field :error_code, 10,
    type: Google.Cloud.Config.V1.Deployment.ErrorCode,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :delete_results, 8,
    type: Google.Cloud.Config.V1.ApplyResults,
    json_name: "deleteResults",
    deprecated: false

  field :delete_build, 11, type: :string, json_name: "deleteBuild", deprecated: false
  field :delete_logs, 12, type: :string, json_name: "deleteLogs", deprecated: false

  field :tf_errors, 13,
    repeated: true,
    type: Google.Cloud.Config.V1.TerraformError,
    json_name: "tfErrors",
    deprecated: false

  field :error_logs, 14, type: :string, json_name: "errorLogs", deprecated: false

  field :artifacts_gcs_bucket, 15,
    proto3_optional: true,
    type: :string,
    json_name: "artifactsGcsBucket",
    deprecated: false

  field :service_account, 16,
    proto3_optional: true,
    type: :string,
    json_name: "serviceAccount",
    deprecated: false

  field :import_existing_resources, 17,
    proto3_optional: true,
    type: :bool,
    json_name: "importExistingResources"

  field :worker_pool, 19,
    proto3_optional: true,
    type: :string,
    json_name: "workerPool",
    deprecated: false

  field :lock_state, 20,
    type: Google.Cloud.Config.V1.Deployment.LockState,
    json_name: "lockState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Config.V1.TerraformBlueprint.InputValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Config.V1.TerraformVariable
end

defmodule Google.Cloud.Config.V1.TerraformBlueprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1, type: :string, json_name: "gcsSource", oneof: 0, deprecated: false

  field :git_source, 2,
    type: Google.Cloud.Config.V1.GitSource,
    json_name: "gitSource",
    oneof: 0,
    deprecated: false

  field :input_values, 4,
    repeated: true,
    type: Google.Cloud.Config.V1.TerraformBlueprint.InputValuesEntry,
    json_name: "inputValues",
    map: true
end

defmodule Google.Cloud.Config.V1.TerraformVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_value, 5, type: Google.Protobuf.Value, json_name: "inputValue"
end

defmodule Google.Cloud.Config.V1.ApplyResults.OutputsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Config.V1.TerraformOutput
end

defmodule Google.Cloud.Config.V1.ApplyResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :string
  field :artifacts, 2, type: :string

  field :outputs, 3,
    repeated: true,
    type: Google.Cloud.Config.V1.ApplyResults.OutputsEntry,
    map: true
end

defmodule Google.Cloud.Config.V1.TerraformOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sensitive, 1, type: :bool
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Config.V1.ListDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Config.V1.ListDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployments, 1, repeated: true, type: Google.Cloud.Config.V1.Deployment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Config.V1.GetDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.ListRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Config.V1.ListRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revisions, 1, repeated: true, type: Google.Cloud.Config.V1.Revision
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Config.V1.GetRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.CreateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :deployment, 3, type: Google.Cloud.Config.V1.Deployment, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Config.V1.UpdateDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :deployment, 2, type: Google.Cloud.Config.V1.Deployment, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Config.V1.DeleteDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false

  field :delete_policy, 4,
    type: Google.Cloud.Config.V1.DeleteDeploymentRequest.DeletePolicy,
    json_name: "deletePolicy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Config.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :resource_metadata, 0

  field :deployment_metadata, 8,
    type: Google.Cloud.Config.V1.DeploymentOperationMetadata,
    json_name: "deploymentMetadata",
    oneof: 0,
    deprecated: false

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

defmodule Google.Cloud.Config.V1.Revision do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :blueprint, 0

  field :terraform_blueprint, 6,
    type: Google.Cloud.Config.V1.TerraformBlueprint,
    json_name: "terraformBlueprint",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :action, 4, type: Google.Cloud.Config.V1.Revision.Action, enum: true, deprecated: false
  field :state, 5, type: Google.Cloud.Config.V1.Revision.State, enum: true, deprecated: false

  field :apply_results, 7,
    type: Google.Cloud.Config.V1.ApplyResults,
    json_name: "applyResults",
    deprecated: false

  field :state_detail, 8, type: :string, json_name: "stateDetail", deprecated: false

  field :error_code, 9,
    type: Google.Cloud.Config.V1.Revision.ErrorCode,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :build, 10, type: :string, deprecated: false
  field :logs, 11, type: :string, deprecated: false

  field :tf_errors, 12,
    repeated: true,
    type: Google.Cloud.Config.V1.TerraformError,
    json_name: "tfErrors",
    deprecated: false

  field :error_logs, 13, type: :string, json_name: "errorLogs", deprecated: false
  field :service_account, 14, type: :string, json_name: "serviceAccount", deprecated: false

  field :import_existing_resources, 15,
    type: :bool,
    json_name: "importExistingResources",
    deprecated: false

  field :worker_pool, 17, type: :string, json_name: "workerPool", deprecated: false
end

defmodule Google.Cloud.Config.V1.TerraformError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_address, 1, type: :string, json_name: "resourceAddress"
  field :http_response_code, 2, type: :int32, json_name: "httpResponseCode"
  field :error_description, 3, type: :string, json_name: "errorDescription"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Config.V1.GitSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :repo, 1, proto3_optional: true, type: :string, deprecated: false
  field :directory, 2, proto3_optional: true, type: :string, deprecated: false
  field :ref, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.DeploymentOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :step, 1,
    type: Google.Cloud.Config.V1.DeploymentOperationMetadata.DeploymentStep,
    enum: true

  field :apply_results, 2, type: Google.Cloud.Config.V1.ApplyResults, json_name: "applyResults"
  field :build, 3, type: :string, deprecated: false
  field :logs, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.Resource.CaiAssetsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Config.V1.ResourceCAIInfo
end

defmodule Google.Cloud.Config.V1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :terraform_info, 2,
    type: Google.Cloud.Config.V1.ResourceTerraformInfo,
    json_name: "terraformInfo",
    deprecated: false

  field :cai_assets, 3,
    repeated: true,
    type: Google.Cloud.Config.V1.Resource.CaiAssetsEntry,
    json_name: "caiAssets",
    map: true,
    deprecated: false

  field :intent, 4, type: Google.Cloud.Config.V1.Resource.Intent, enum: true, deprecated: false
  field :state, 5, type: Google.Cloud.Config.V1.Resource.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Config.V1.ResourceTerraformInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :address, 1, type: :string
  field :type, 2, type: :string
  field :id, 3, type: :string
end

defmodule Google.Cloud.Config.V1.ResourceCAIInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"
end

defmodule Google.Cloud.Config.V1.GetResourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.ListResourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Config.V1.ListResourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Cloud.Config.V1.Resource
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Config.V1.Statefile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signed_uri, 1, type: :string, json_name: "signedUri", deprecated: false
end

defmodule Google.Cloud.Config.V1.ExportDeploymentStatefileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :draft, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Config.V1.ExportRevisionStatefileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.ImportStatefileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :lock_id, 2, type: :int64, json_name: "lockId", deprecated: false
  field :skip_draft, 3, type: :bool, json_name: "skipDraft", deprecated: false
end

defmodule Google.Cloud.Config.V1.DeleteStatefileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :lock_id, 2, type: :int64, json_name: "lockId", deprecated: false
end

defmodule Google.Cloud.Config.V1.LockDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.UnlockDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :lock_id, 2, type: :int64, json_name: "lockId", deprecated: false
end

defmodule Google.Cloud.Config.V1.ExportLockInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Config.V1.LockInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :lock_id, 1, type: :int64, json_name: "lockId"
  field :operation, 2, type: :string
  field :info, 3, type: :string
  field :who, 4, type: :string
  field :version, 5, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Config.V1.Config.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.config.v1.Config", protoc_gen_elixir_version: "0.12.0"

  rpc :ListDeployments,
      Google.Cloud.Config.V1.ListDeploymentsRequest,
      Google.Cloud.Config.V1.ListDeploymentsResponse

  rpc :GetDeployment,
      Google.Cloud.Config.V1.GetDeploymentRequest,
      Google.Cloud.Config.V1.Deployment

  rpc :CreateDeployment,
      Google.Cloud.Config.V1.CreateDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdateDeployment,
      Google.Cloud.Config.V1.UpdateDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteDeployment,
      Google.Cloud.Config.V1.DeleteDeploymentRequest,
      Google.Longrunning.Operation

  rpc :ListRevisions,
      Google.Cloud.Config.V1.ListRevisionsRequest,
      Google.Cloud.Config.V1.ListRevisionsResponse

  rpc :GetRevision, Google.Cloud.Config.V1.GetRevisionRequest, Google.Cloud.Config.V1.Revision

  rpc :GetResource, Google.Cloud.Config.V1.GetResourceRequest, Google.Cloud.Config.V1.Resource

  rpc :ListResources,
      Google.Cloud.Config.V1.ListResourcesRequest,
      Google.Cloud.Config.V1.ListResourcesResponse

  rpc :ExportDeploymentStatefile,
      Google.Cloud.Config.V1.ExportDeploymentStatefileRequest,
      Google.Cloud.Config.V1.Statefile

  rpc :ExportRevisionStatefile,
      Google.Cloud.Config.V1.ExportRevisionStatefileRequest,
      Google.Cloud.Config.V1.Statefile

  rpc :ImportStatefile,
      Google.Cloud.Config.V1.ImportStatefileRequest,
      Google.Cloud.Config.V1.Statefile

  rpc :DeleteStatefile, Google.Cloud.Config.V1.DeleteStatefileRequest, Google.Protobuf.Empty

  rpc :LockDeployment, Google.Cloud.Config.V1.LockDeploymentRequest, Google.Longrunning.Operation

  rpc :UnlockDeployment,
      Google.Cloud.Config.V1.UnlockDeploymentRequest,
      Google.Longrunning.Operation

  rpc :ExportLockInfo,
      Google.Cloud.Config.V1.ExportLockInfoRequest,
      Google.Cloud.Config.V1.LockInfo
end

defmodule Google.Cloud.Config.V1.Config.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Config.V1.Config.Service
end