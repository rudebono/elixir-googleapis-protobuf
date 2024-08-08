defmodule Google.Cloud.Functions.V1.CloudFunctionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLOUD_FUNCTION_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :OFFLINE, 2
  field :DEPLOY_IN_PROGRESS, 3
  field :DELETE_IN_PROGRESS, 4
  field :UNKNOWN, 5
end

defmodule Google.Cloud.Functions.V1.CloudFunction.VpcConnectorEgressSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED, 0
  field :PRIVATE_RANGES_ONLY, 1
  field :ALL_TRAFFIC, 2
end

defmodule Google.Cloud.Functions.V1.CloudFunction.IngressSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INGRESS_SETTINGS_UNSPECIFIED, 0
  field :ALLOW_ALL, 1
  field :ALLOW_INTERNAL_ONLY, 2
  field :ALLOW_INTERNAL_AND_GCLB, 3
end

defmodule Google.Cloud.Functions.V1.CloudFunction.DockerRegistry do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DOCKER_REGISTRY_UNSPECIFIED, 0
  field :CONTAINER_REGISTRY, 1
  field :ARTIFACT_REGISTRY, 2
end

defmodule Google.Cloud.Functions.V1.HttpsTrigger.SecurityLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SECURITY_LEVEL_UNSPECIFIED, 0
  field :SECURE_ALWAYS, 1
  field :SECURE_OPTIONAL, 2
end

defmodule Google.Cloud.Functions.V1.CloudFunction.AutomaticUpdatePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Functions.V1.CloudFunction.OnDeployUpdatePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :runtime_version, 1, type: :string, json_name: "runtimeVersion", deprecated: false
end

defmodule Google.Cloud.Functions.V1.CloudFunction.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.CloudFunction.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.CloudFunction.BuildEnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.CloudFunction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source_code, 0

  oneof :trigger, 1

  oneof :runtime_update_policy, 2

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :source_archive_url, 3, type: :string, json_name: "sourceArchiveUrl", oneof: 0

  field :source_repository, 4,
    type: Google.Cloud.Functions.V1.SourceRepository,
    json_name: "sourceRepository",
    oneof: 0

  field :source_upload_url, 16, type: :string, json_name: "sourceUploadUrl", oneof: 0

  field :https_trigger, 5,
    type: Google.Cloud.Functions.V1.HttpsTrigger,
    json_name: "httpsTrigger",
    oneof: 1

  field :event_trigger, 6,
    type: Google.Cloud.Functions.V1.EventTrigger,
    json_name: "eventTrigger",
    oneof: 1

  field :status, 7,
    type: Google.Cloud.Functions.V1.CloudFunctionStatus,
    enum: true,
    deprecated: false

  field :entry_point, 8, type: :string, json_name: "entryPoint"
  field :runtime, 19, type: :string
  field :timeout, 9, type: Google.Protobuf.Duration
  field :available_memory_mb, 10, type: :int32, json_name: "availableMemoryMb"
  field :service_account_email, 11, type: :string, json_name: "serviceAccountEmail"

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :version_id, 14, type: :int64, json_name: "versionId", deprecated: false

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Functions.V1.CloudFunction.LabelsEntry,
    map: true

  field :environment_variables, 17,
    repeated: true,
    type: Google.Cloud.Functions.V1.CloudFunction.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true

  field :build_environment_variables, 28,
    repeated: true,
    type: Google.Cloud.Functions.V1.CloudFunction.BuildEnvironmentVariablesEntry,
    json_name: "buildEnvironmentVariables",
    map: true

  field :network, 18, type: :string, deprecated: true
  field :max_instances, 20, type: :int32, json_name: "maxInstances"
  field :min_instances, 32, type: :int32, json_name: "minInstances"
  field :vpc_connector, 22, type: :string, json_name: "vpcConnector"

  field :vpc_connector_egress_settings, 23,
    type: Google.Cloud.Functions.V1.CloudFunction.VpcConnectorEgressSettings,
    json_name: "vpcConnectorEgressSettings",
    enum: true

  field :ingress_settings, 24,
    type: Google.Cloud.Functions.V1.CloudFunction.IngressSettings,
    json_name: "ingressSettings",
    enum: true

  field :kms_key_name, 25, type: :string, json_name: "kmsKeyName", deprecated: false
  field :build_worker_pool, 26, type: :string, json_name: "buildWorkerPool"
  field :build_id, 27, type: :string, json_name: "buildId", deprecated: false
  field :build_name, 33, type: :string, json_name: "buildName", deprecated: false

  field :secret_environment_variables, 29,
    repeated: true,
    type: Google.Cloud.Functions.V1.SecretEnvVar,
    json_name: "secretEnvironmentVariables"

  field :secret_volumes, 30,
    repeated: true,
    type: Google.Cloud.Functions.V1.SecretVolume,
    json_name: "secretVolumes"

  field :source_token, 31, type: :string, json_name: "sourceToken", deprecated: false
  field :docker_repository, 34, type: :string, json_name: "dockerRepository", deprecated: false

  field :docker_registry, 35,
    type: Google.Cloud.Functions.V1.CloudFunction.DockerRegistry,
    json_name: "dockerRegistry",
    enum: true

  field :automatic_update_policy, 40,
    type: Google.Cloud.Functions.V1.CloudFunction.AutomaticUpdatePolicy,
    json_name: "automaticUpdatePolicy",
    oneof: 2

  field :on_deploy_update_policy, 41,
    type: Google.Cloud.Functions.V1.CloudFunction.OnDeployUpdatePolicy,
    json_name: "onDeployUpdatePolicy",
    oneof: 2

  field :build_service_account, 43, type: :string, json_name: "buildServiceAccount"
end

defmodule Google.Cloud.Functions.V1.SourceRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url, 1, type: :string
  field :deployed_url, 2, type: :string, json_name: "deployedUrl", deprecated: false
end

defmodule Google.Cloud.Functions.V1.HttpsTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url, 1, type: :string, deprecated: false

  field :security_level, 2,
    type: Google.Cloud.Functions.V1.HttpsTrigger.SecurityLevel,
    json_name: "securityLevel",
    enum: true
end

defmodule Google.Cloud.Functions.V1.EventTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :event_type, 1, type: :string, json_name: "eventType"
  field :resource, 2, type: :string
  field :service, 3, type: :string

  field :failure_policy, 5,
    type: Google.Cloud.Functions.V1.FailurePolicy,
    json_name: "failurePolicy"
end

defmodule Google.Cloud.Functions.V1.FailurePolicy.Retry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Functions.V1.FailurePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :action, 0

  field :retry, 1, type: Google.Cloud.Functions.V1.FailurePolicy.Retry, oneof: 0
end

defmodule Google.Cloud.Functions.V1.SecretEnvVar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :secret, 3, type: :string
  field :version, 4, type: :string
end

defmodule Google.Cloud.Functions.V1.SecretVolume.SecretVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string
  field :path, 2, type: :string
end

defmodule Google.Cloud.Functions.V1.SecretVolume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mount_path, 1, type: :string, json_name: "mountPath"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :secret, 3, type: :string
  field :versions, 4, repeated: true, type: Google.Cloud.Functions.V1.SecretVolume.SecretVersion
end

defmodule Google.Cloud.Functions.V1.CreateFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :function, 2, type: Google.Cloud.Functions.V1.CloudFunction, deprecated: false
end

defmodule Google.Cloud.Functions.V1.UpdateFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function, 1, type: Google.Cloud.Functions.V1.CloudFunction, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Functions.V1.GetFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version_id, 2, type: :int64, json_name: "versionId", deprecated: false
end

defmodule Google.Cloud.Functions.V1.ListFunctionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Functions.V1.ListFunctionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :functions, 1, repeated: true, type: Google.Cloud.Functions.V1.CloudFunction
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Functions.V1.DeleteFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V1.CallFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Functions.V1.CallFunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :execution_id, 1, type: :string, json_name: "executionId"
  field :result, 2, type: :string
  field :error, 3, type: :string
end

defmodule Google.Cloud.Functions.V1.GenerateUploadUrlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Cloud.Functions.V1.GenerateUploadUrlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :upload_url, 1, type: :string, json_name: "uploadUrl"
end

defmodule Google.Cloud.Functions.V1.GenerateDownloadUrlRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :version_id, 2, type: :uint64, json_name: "versionId"
end

defmodule Google.Cloud.Functions.V1.GenerateDownloadUrlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :download_url, 1, type: :string, json_name: "downloadUrl"
end

defmodule Google.Cloud.Functions.V1.CloudFunctionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.functions.v1.CloudFunctionsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListFunctions,
      Google.Cloud.Functions.V1.ListFunctionsRequest,
      Google.Cloud.Functions.V1.ListFunctionsResponse

  rpc :GetFunction,
      Google.Cloud.Functions.V1.GetFunctionRequest,
      Google.Cloud.Functions.V1.CloudFunction

  rpc :CreateFunction,
      Google.Cloud.Functions.V1.CreateFunctionRequest,
      Google.Longrunning.Operation

  rpc :UpdateFunction,
      Google.Cloud.Functions.V1.UpdateFunctionRequest,
      Google.Longrunning.Operation

  rpc :DeleteFunction,
      Google.Cloud.Functions.V1.DeleteFunctionRequest,
      Google.Longrunning.Operation

  rpc :CallFunction,
      Google.Cloud.Functions.V1.CallFunctionRequest,
      Google.Cloud.Functions.V1.CallFunctionResponse

  rpc :GenerateUploadUrl,
      Google.Cloud.Functions.V1.GenerateUploadUrlRequest,
      Google.Cloud.Functions.V1.GenerateUploadUrlResponse

  rpc :GenerateDownloadUrl,
      Google.Cloud.Functions.V1.GenerateDownloadUrlRequest,
      Google.Cloud.Functions.V1.GenerateDownloadUrlResponse

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Functions.V1.CloudFunctionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Functions.V1.CloudFunctionsService.Service
end