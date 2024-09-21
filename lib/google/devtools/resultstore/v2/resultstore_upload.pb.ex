defmodule Google.Devtools.Resultstore.V2.UploadRequest.UploadOperation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UPLOAD_OPERATION_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :MERGE, 3
  field :FINALIZE, 4
end

defmodule Google.Devtools.Resultstore.V2.CreateInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :invocation_id, 2, type: :string, json_name: "invocationId"
  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation, deprecated: false
  field :authorization_token, 4, type: :string, json_name: "authorizationToken"
  field :auto_finalize_time, 6, type: Google.Protobuf.Timestamp, json_name: "autoFinalizeTime"
  field :initial_resume_token, 7, type: :string, json_name: "initialResumeToken"
  field :uploader_state, 8, type: :bytes, json_name: "uploaderState"
end

defmodule Google.Devtools.Resultstore.V2.UpdateInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.MergeInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :invocation, 3, type: Google.Devtools.Resultstore.V2.Invocation
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.TouchInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authorization_token, 2, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.TouchInvocationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Invocation.Id
end

defmodule Google.Devtools.Resultstore.V2.DeleteInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Resultstore.V2.FinalizeInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authorization_token, 3, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.FinalizeInvocationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Invocation.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :parent, 2, type: :string, deprecated: false
  field :target_id, 3, type: :string, json_name: "targetId"
  field :target, 4, type: Google.Devtools.Resultstore.V2.Target, deprecated: false
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.UpdateTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target, 3, type: Google.Devtools.Resultstore.V2.Target
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.MergeTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :target, 3, type: Google.Devtools.Resultstore.V2.Target
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.FinalizeTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authorization_token, 3, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.FinalizeTargetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Target.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateConfiguredTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :parent, 2, type: :string, deprecated: false
  field :config_id, 3, type: :string, json_name: "configId"

  field :configured_target, 4,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTarget",
    deprecated: false

  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.UpdateConfiguredTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :configured_target, 3,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTarget"

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.MergeConfiguredTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"

  field :configured_target, 3,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTarget"

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authorization_token, 3, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id
end

defmodule Google.Devtools.Resultstore.V2.CreateActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :parent, 2, type: :string, deprecated: false
  field :action_id, 3, type: :string, json_name: "actionId"
  field :action, 4, type: Google.Devtools.Resultstore.V2.Action, deprecated: false
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.UpdateActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action, 3, type: Google.Devtools.Resultstore.V2.Action
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.MergeActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :action, 3, type: Google.Devtools.Resultstore.V2.Action
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.CreateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :parent, 2, type: :string, deprecated: false
  field :config_id, 3, type: :string, json_name: "configId"
  field :configuration, 4, type: Google.Devtools.Resultstore.V2.Configuration, deprecated: false
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.UpdateConfigurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :configuration, 3, type: Google.Devtools.Resultstore.V2.Configuration
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 6, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.CreateFileSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :parent, 2, type: :string, deprecated: false
  field :file_set_id, 3, type: :string, json_name: "fileSetId"

  field :file_set, 4,
    type: Google.Devtools.Resultstore.V2.FileSet,
    json_name: "fileSet",
    deprecated: false

  field :authorization_token, 5, type: :string, json_name: "authorizationToken"
end

defmodule Google.Devtools.Resultstore.V2.UpdateFileSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :file_set, 1, type: Google.Devtools.Resultstore.V2.FileSet, json_name: "fileSet"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 3, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 4, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.MergeFileSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :file_set, 2, type: Google.Devtools.Resultstore.V2.FileSet, json_name: "fileSet"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :authorization_token, 4, type: :string, json_name: "authorizationToken"
  field :create_if_not_found, 5, type: :bool, json_name: "createIfNotFound"
end

defmodule Google.Devtools.Resultstore.V2.UploadBatchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :authorization_token, 2, type: :string, json_name: "authorizationToken", deprecated: false
  field :next_resume_token, 3, type: :string, json_name: "nextResumeToken", deprecated: false
  field :resume_token, 4, type: :string, json_name: "resumeToken", deprecated: false
  field :uploader_state, 6, type: :bytes, json_name: "uploaderState"

  field :upload_requests, 5,
    repeated: true,
    type: Google.Devtools.Resultstore.V2.UploadRequest,
    json_name: "uploadRequests"
end

defmodule Google.Devtools.Resultstore.V2.UploadBatchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Devtools.Resultstore.V2.UploadRequest.Id do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_id, 1, type: :string, json_name: "targetId"
  field :configuration_id, 2, type: :string, json_name: "configurationId"
  field :action_id, 3, type: :string, json_name: "actionId"
  field :file_set_id, 4, type: :string, json_name: "fileSetId"
end

defmodule Google.Devtools.Resultstore.V2.UploadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :resource, 0

  field :id, 1, type: Google.Devtools.Resultstore.V2.UploadRequest.Id

  field :upload_operation, 2,
    type: Google.Devtools.Resultstore.V2.UploadRequest.UploadOperation,
    json_name: "uploadOperation",
    enum: true

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create_if_not_found, 10, type: :bool, json_name: "createIfNotFound"
  field :invocation, 4, type: Google.Devtools.Resultstore.V2.Invocation, oneof: 0
  field :target, 5, type: Google.Devtools.Resultstore.V2.Target, oneof: 0
  field :configuration, 6, type: Google.Devtools.Resultstore.V2.Configuration, oneof: 0

  field :configured_target, 7,
    type: Google.Devtools.Resultstore.V2.ConfiguredTarget,
    json_name: "configuredTarget",
    oneof: 0

  field :action, 8, type: Google.Devtools.Resultstore.V2.Action, oneof: 0
  field :file_set, 9, type: Google.Devtools.Resultstore.V2.FileSet, json_name: "fileSet", oneof: 0
end

defmodule Google.Devtools.Resultstore.V2.GetInvocationUploadMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :authorization_token, 2, type: :string, json_name: "authorizationToken", deprecated: false
end

defmodule Google.Devtools.Resultstore.V2.ResultStoreUpload.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.resultstore.v2.ResultStoreUpload",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateInvocation,
      Google.Devtools.Resultstore.V2.CreateInvocationRequest,
      Google.Devtools.Resultstore.V2.Invocation

  rpc :UpdateInvocation,
      Google.Devtools.Resultstore.V2.UpdateInvocationRequest,
      Google.Devtools.Resultstore.V2.Invocation

  rpc :MergeInvocation,
      Google.Devtools.Resultstore.V2.MergeInvocationRequest,
      Google.Devtools.Resultstore.V2.Invocation

  rpc :TouchInvocation,
      Google.Devtools.Resultstore.V2.TouchInvocationRequest,
      Google.Devtools.Resultstore.V2.TouchInvocationResponse

  rpc :FinalizeInvocation,
      Google.Devtools.Resultstore.V2.FinalizeInvocationRequest,
      Google.Devtools.Resultstore.V2.FinalizeInvocationResponse

  rpc :DeleteInvocation,
      Google.Devtools.Resultstore.V2.DeleteInvocationRequest,
      Google.Protobuf.Empty

  rpc :CreateTarget,
      Google.Devtools.Resultstore.V2.CreateTargetRequest,
      Google.Devtools.Resultstore.V2.Target

  rpc :UpdateTarget,
      Google.Devtools.Resultstore.V2.UpdateTargetRequest,
      Google.Devtools.Resultstore.V2.Target

  rpc :MergeTarget,
      Google.Devtools.Resultstore.V2.MergeTargetRequest,
      Google.Devtools.Resultstore.V2.Target

  rpc :FinalizeTarget,
      Google.Devtools.Resultstore.V2.FinalizeTargetRequest,
      Google.Devtools.Resultstore.V2.FinalizeTargetResponse

  rpc :CreateConfiguredTarget,
      Google.Devtools.Resultstore.V2.CreateConfiguredTargetRequest,
      Google.Devtools.Resultstore.V2.ConfiguredTarget

  rpc :UpdateConfiguredTarget,
      Google.Devtools.Resultstore.V2.UpdateConfiguredTargetRequest,
      Google.Devtools.Resultstore.V2.ConfiguredTarget

  rpc :MergeConfiguredTarget,
      Google.Devtools.Resultstore.V2.MergeConfiguredTargetRequest,
      Google.Devtools.Resultstore.V2.ConfiguredTarget

  rpc :FinalizeConfiguredTarget,
      Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetRequest,
      Google.Devtools.Resultstore.V2.FinalizeConfiguredTargetResponse

  rpc :CreateAction,
      Google.Devtools.Resultstore.V2.CreateActionRequest,
      Google.Devtools.Resultstore.V2.Action

  rpc :UpdateAction,
      Google.Devtools.Resultstore.V2.UpdateActionRequest,
      Google.Devtools.Resultstore.V2.Action

  rpc :MergeAction,
      Google.Devtools.Resultstore.V2.MergeActionRequest,
      Google.Devtools.Resultstore.V2.Action

  rpc :CreateConfiguration,
      Google.Devtools.Resultstore.V2.CreateConfigurationRequest,
      Google.Devtools.Resultstore.V2.Configuration

  rpc :UpdateConfiguration,
      Google.Devtools.Resultstore.V2.UpdateConfigurationRequest,
      Google.Devtools.Resultstore.V2.Configuration

  rpc :CreateFileSet,
      Google.Devtools.Resultstore.V2.CreateFileSetRequest,
      Google.Devtools.Resultstore.V2.FileSet

  rpc :UpdateFileSet,
      Google.Devtools.Resultstore.V2.UpdateFileSetRequest,
      Google.Devtools.Resultstore.V2.FileSet

  rpc :MergeFileSet,
      Google.Devtools.Resultstore.V2.MergeFileSetRequest,
      Google.Devtools.Resultstore.V2.FileSet

  rpc :UploadBatch,
      Google.Devtools.Resultstore.V2.UploadBatchRequest,
      Google.Devtools.Resultstore.V2.UploadBatchResponse

  rpc :GetInvocationUploadMetadata,
      Google.Devtools.Resultstore.V2.GetInvocationUploadMetadataRequest,
      Google.Devtools.Resultstore.V2.UploadMetadata
end

defmodule Google.Devtools.Resultstore.V2.ResultStoreUpload.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Resultstore.V2.ResultStoreUpload.Service
end