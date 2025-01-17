defmodule Google.Cloud.Functions.V2alpha.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATIONTYPE_UNSPECIFIED, 0
  field :CREATE_FUNCTION, 1
  field :UPDATE_FUNCTION, 2
  field :DELETE_FUNCTION, 3
end

defmodule Google.Cloud.Functions.V2alpha.Environment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENVIRONMENT_UNSPECIFIED, 0
  field :GEN_1, 1
  field :GEN_2, 2
end

defmodule Google.Cloud.Functions.V2alpha.Function.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FAILED, 2
  field :DEPLOYING, 3
  field :DELETING, 4
  field :UNKNOWN, 5
end

defmodule Google.Cloud.Functions.V2alpha.StateMessage.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end

defmodule Google.Cloud.Functions.V2alpha.BuildConfig.DockerRegistry do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DOCKER_REGISTRY_UNSPECIFIED, 0
  field :CONTAINER_REGISTRY, 1
  field :ARTIFACT_REGISTRY, 2
end

defmodule Google.Cloud.Functions.V2alpha.ServiceConfig.VpcConnectorEgressSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED, 0
  field :PRIVATE_RANGES_ONLY, 1
  field :ALL_TRAFFIC, 2
end

defmodule Google.Cloud.Functions.V2alpha.ServiceConfig.IngressSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INGRESS_SETTINGS_UNSPECIFIED, 0
  field :ALLOW_ALL, 1
  field :ALLOW_INTERNAL_ONLY, 2
  field :ALLOW_INTERNAL_AND_GCLB, 3
end

defmodule Google.Cloud.Functions.V2alpha.ServiceConfig.SecurityLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SECURITY_LEVEL_UNSPECIFIED, 0
  field :SECURE_ALWAYS, 1
  field :SECURE_OPTIONAL, 2
end

defmodule Google.Cloud.Functions.V2alpha.EventTrigger.RetryPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RETRY_POLICY_UNSPECIFIED, 0
  field :RETRY_POLICY_DO_NOT_RETRY, 1
  field :RETRY_POLICY_RETRY, 2
end

defmodule Google.Cloud.Functions.V2alpha.ListRuntimesResponse.RuntimeStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RUNTIME_STAGE_UNSPECIFIED, 0
  field :DEVELOPMENT, 1
  field :ALPHA, 2
  field :BETA, 3
  field :GA, 4
  field :DEPRECATED, 5
  field :DECOMMISSIONED, 6
end

defmodule Google.Cloud.Functions.V2alpha.Stage.Name do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NAME_UNSPECIFIED, 0
  field :ARTIFACT_REGISTRY, 1
  field :BUILD, 2
  field :SERVICE, 3
  field :TRIGGER, 4
  field :SERVICE_ROLLBACK, 5
  field :TRIGGER_ROLLBACK, 6
end

defmodule Google.Cloud.Functions.V2alpha.Stage.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_STARTED, 1
  field :IN_PROGRESS, 2
  field :COMPLETE, 3
end

defmodule Google.Cloud.Functions.V2alpha.Function.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.Function do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :build_config, 3,
    type: Google.Cloud.Functions.V2alpha.BuildConfig,
    json_name: "buildConfig"

  field :service_config, 4,
    type: Google.Cloud.Functions.V2alpha.ServiceConfig,
    json_name: "serviceConfig"

  field :event_trigger, 5,
    type: Google.Cloud.Functions.V2alpha.EventTrigger,
    json_name: "eventTrigger"

  field :state, 6,
    type: Google.Cloud.Functions.V2alpha.Function.State,
    enum: true,
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.Function.LabelsEntry,
    map: true

  field :state_messages, 9,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.StateMessage,
    json_name: "stateMessages",
    deprecated: false

  field :environment, 10, type: Google.Cloud.Functions.V2alpha.Environment, enum: true
  field :url, 14, type: :string, deprecated: false
  field :kms_key_name, 25, type: :string, json_name: "kmsKeyName", deprecated: false
  field :satisfies_pzs, 27, type: :bool, json_name: "satisfiesPzs", deprecated: false

  field :create_time, 28,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.StateMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :severity, 1, type: Google.Cloud.Functions.V2alpha.StateMessage.Severity, enum: true
  field :type, 2, type: :string
  field :message, 3, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.StorageSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
  field :source_upload_url, 4, type: :string, json_name: "sourceUploadUrl"
end

defmodule Google.Cloud.Functions.V2alpha.RepoSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :revision, 0

  field :branch_name, 3, type: :string, json_name: "branchName", oneof: 0
  field :tag_name, 4, type: :string, json_name: "tagName", oneof: 0
  field :commit_sha, 5, type: :string, json_name: "commitSha", oneof: 0
  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
  field :dir, 6, type: :string
  field :invert_regex, 7, type: :bool, json_name: "invertRegex"
end

defmodule Google.Cloud.Functions.V2alpha.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :storage_source, 1,
    type: Google.Cloud.Functions.V2alpha.StorageSource,
    json_name: "storageSource",
    oneof: 0

  field :repo_source, 2,
    type: Google.Cloud.Functions.V2alpha.RepoSource,
    json_name: "repoSource",
    oneof: 0

  field :git_uri, 3, type: :string, json_name: "gitUri", oneof: 0
end

defmodule Google.Cloud.Functions.V2alpha.SourceProvenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resolved_storage_source, 1,
    type: Google.Cloud.Functions.V2alpha.StorageSource,
    json_name: "resolvedStorageSource"

  field :resolved_repo_source, 2,
    type: Google.Cloud.Functions.V2alpha.RepoSource,
    json_name: "resolvedRepoSource"

  field :git_uri, 3, type: :string, json_name: "gitUri"
end

defmodule Google.Cloud.Functions.V2alpha.BuildConfig.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.BuildConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :runtime_update_policy, 0

  field :automatic_update_policy, 40,
    type: Google.Cloud.Functions.V2alpha.AutomaticUpdatePolicy,
    json_name: "automaticUpdatePolicy",
    oneof: 0

  field :on_deploy_update_policy, 41,
    type: Google.Cloud.Functions.V2alpha.OnDeployUpdatePolicy,
    json_name: "onDeployUpdatePolicy",
    oneof: 0

  field :build, 1, type: :string, deprecated: false
  field :runtime, 2, type: :string
  field :entry_point, 3, type: :string, json_name: "entryPoint"
  field :source, 4, type: Google.Cloud.Functions.V2alpha.Source

  field :source_provenance, 8,
    type: Google.Cloud.Functions.V2alpha.SourceProvenance,
    json_name: "sourceProvenance",
    deprecated: false

  field :worker_pool, 5, type: :string, json_name: "workerPool", deprecated: false

  field :environment_variables, 6,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.BuildConfig.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true

  field :docker_registry, 10,
    type: Google.Cloud.Functions.V2alpha.BuildConfig.DockerRegistry,
    json_name: "dockerRegistry",
    enum: true

  field :docker_repository, 7, type: :string, json_name: "dockerRepository", deprecated: false
  field :service_account, 27, type: :string, json_name: "serviceAccount"
end

defmodule Google.Cloud.Functions.V2alpha.ServiceConfig.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.ServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
  field :timeout_seconds, 2, type: :int32, json_name: "timeoutSeconds"
  field :available_memory, 13, type: :string, json_name: "availableMemory"
  field :available_cpu, 22, type: :string, json_name: "availableCpu"

  field :environment_variables, 4,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.ServiceConfig.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true

  field :max_instance_count, 5, type: :int32, json_name: "maxInstanceCount"
  field :min_instance_count, 12, type: :int32, json_name: "minInstanceCount"
  field :vpc_connector, 6, type: :string, json_name: "vpcConnector", deprecated: false

  field :vpc_connector_egress_settings, 7,
    type: Google.Cloud.Functions.V2alpha.ServiceConfig.VpcConnectorEgressSettings,
    json_name: "vpcConnectorEgressSettings",
    enum: true

  field :ingress_settings, 8,
    type: Google.Cloud.Functions.V2alpha.ServiceConfig.IngressSettings,
    json_name: "ingressSettings",
    enum: true

  field :uri, 9, type: :string, deprecated: false
  field :service_account_email, 10, type: :string, json_name: "serviceAccountEmail"
  field :all_traffic_on_latest_revision, 16, type: :bool, json_name: "allTrafficOnLatestRevision"

  field :secret_environment_variables, 17,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.SecretEnvVar,
    json_name: "secretEnvironmentVariables"

  field :secret_volumes, 19,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.SecretVolume,
    json_name: "secretVolumes"

  field :revision, 18, type: :string, deprecated: false

  field :max_instance_request_concurrency, 20,
    type: :int32,
    json_name: "maxInstanceRequestConcurrency"

  field :security_level, 21,
    type: Google.Cloud.Functions.V2alpha.ServiceConfig.SecurityLevel,
    json_name: "securityLevel",
    enum: true

  field :binary_authorization_policy, 23,
    type: :string,
    json_name: "binaryAuthorizationPolicy",
    deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.SecretEnvVar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :secret, 3, type: :string
  field :version, 4, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.SecretVolume.SecretVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string
  field :path, 2, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.SecretVolume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mount_path, 1, type: :string, json_name: "mountPath"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :secret, 3, type: :string

  field :versions, 4,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.SecretVolume.SecretVersion
end

defmodule Google.Cloud.Functions.V2alpha.EventTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trigger, 1, type: :string, deprecated: false
  field :trigger_region, 2, type: :string, json_name: "triggerRegion"
  field :event_type, 3, type: :string, json_name: "eventType", deprecated: false

  field :event_filters, 4,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.EventFilter,
    json_name: "eventFilters"

  field :pubsub_topic, 5, type: :string, json_name: "pubsubTopic", deprecated: false

  field :service_account_email, 6,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :retry_policy, 7,
    type: Google.Cloud.Functions.V2alpha.EventTrigger.RetryPolicy,
    json_name: "retryPolicy",
    enum: true,
    deprecated: false

  field :channel, 8, type: :string, deprecated: false
  field :service, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.EventFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attribute, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
  field :operator, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.GetFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.ListFunctionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Functions.V2alpha.ListFunctionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :functions, 1, repeated: true, type: Google.Cloud.Functions.V2alpha.Function
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.CreateFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :function, 2, type: Google.Cloud.Functions.V2alpha.Function, deprecated: false
  field :function_id, 3, type: :string, json_name: "functionId"
end

defmodule Google.Cloud.Functions.V2alpha.UpdateFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :function, 1, type: Google.Cloud.Functions.V2alpha.Function, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Functions.V2alpha.DeleteFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.GenerateUploadUrlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false
  field :environment, 3, type: Google.Cloud.Functions.V2alpha.Environment, enum: true
end

defmodule Google.Cloud.Functions.V2alpha.GenerateUploadUrlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :upload_url, 1, type: :string, json_name: "uploadUrl"

  field :storage_source, 2,
    type: Google.Cloud.Functions.V2alpha.StorageSource,
    json_name: "storageSource"
end

defmodule Google.Cloud.Functions.V2alpha.GenerateDownloadUrlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.GenerateDownloadUrlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :download_url, 1, type: :string, json_name: "downloadUrl"
end

defmodule Google.Cloud.Functions.V2alpha.ListRuntimesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
end

defmodule Google.Cloud.Functions.V2alpha.ListRuntimesResponse.Runtime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"

  field :stage, 2,
    type: Google.Cloud.Functions.V2alpha.ListRuntimesResponse.RuntimeStage,
    enum: true

  field :warnings, 3, repeated: true, type: :string
  field :environment, 4, type: Google.Cloud.Functions.V2alpha.Environment, enum: true
  field :deprecation_date, 6, type: Google.Type.Date, json_name: "deprecationDate"
  field :decommission_date, 7, type: Google.Type.Date, json_name: "decommissionDate"
end

defmodule Google.Cloud.Functions.V2alpha.ListRuntimesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :runtimes, 1,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.ListRuntimesResponse.Runtime
end

defmodule Google.Cloud.Functions.V2alpha.AutomaticUpdatePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Functions.V2alpha.OnDeployUpdatePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :runtime_version, 1, type: :string, json_name: "runtimeVersion", deprecated: false
end

defmodule Google.Cloud.Functions.V2alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"
  field :request_resource, 8, type: Google.Protobuf.Any, json_name: "requestResource"
  field :stages, 9, repeated: true, type: Google.Cloud.Functions.V2alpha.Stage
  field :build_name, 13, type: :string, json_name: "buildName"

  field :operation_type, 11,
    type: Google.Cloud.Functions.V2alpha.OperationType,
    json_name: "operationType",
    enum: true
end

defmodule Google.Cloud.Functions.V2alpha.LocationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :environments, 1,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.Environment,
    enum: true
end

defmodule Google.Cloud.Functions.V2alpha.Stage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: Google.Cloud.Functions.V2alpha.Stage.Name, enum: true
  field :message, 2, type: :string
  field :state, 3, type: Google.Cloud.Functions.V2alpha.Stage.State, enum: true
  field :resource, 4, type: :string
  field :resource_uri, 5, type: :string, json_name: "resourceUri"

  field :state_messages, 6,
    repeated: true,
    type: Google.Cloud.Functions.V2alpha.StateMessage,
    json_name: "stateMessages"
end

defmodule Google.Cloud.Functions.V2alpha.FunctionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.functions.v2alpha.FunctionService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetFunction,
      Google.Cloud.Functions.V2alpha.GetFunctionRequest,
      Google.Cloud.Functions.V2alpha.Function

  rpc :ListFunctions,
      Google.Cloud.Functions.V2alpha.ListFunctionsRequest,
      Google.Cloud.Functions.V2alpha.ListFunctionsResponse

  rpc :CreateFunction,
      Google.Cloud.Functions.V2alpha.CreateFunctionRequest,
      Google.Longrunning.Operation

  rpc :UpdateFunction,
      Google.Cloud.Functions.V2alpha.UpdateFunctionRequest,
      Google.Longrunning.Operation

  rpc :DeleteFunction,
      Google.Cloud.Functions.V2alpha.DeleteFunctionRequest,
      Google.Longrunning.Operation

  rpc :GenerateUploadUrl,
      Google.Cloud.Functions.V2alpha.GenerateUploadUrlRequest,
      Google.Cloud.Functions.V2alpha.GenerateUploadUrlResponse

  rpc :GenerateDownloadUrl,
      Google.Cloud.Functions.V2alpha.GenerateDownloadUrlRequest,
      Google.Cloud.Functions.V2alpha.GenerateDownloadUrlResponse

  rpc :ListRuntimes,
      Google.Cloud.Functions.V2alpha.ListRuntimesRequest,
      Google.Cloud.Functions.V2alpha.ListRuntimesResponse
end

defmodule Google.Cloud.Functions.V2alpha.FunctionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Functions.V2alpha.FunctionService.Service
end
