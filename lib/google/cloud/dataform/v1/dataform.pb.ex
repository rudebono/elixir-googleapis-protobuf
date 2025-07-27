defmodule Google.Cloud.Dataform.V1.Repository.GitRemoteSettings.TokenStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TOKEN_STATUS_UNSPECIFIED, 0
  field :NOT_FOUND, 1
  field :INVALID, 2
  field :VALID, 3
end

defmodule Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusResponse.TokenStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TOKEN_STATUS_UNSPECIFIED, 0
  field :NOT_FOUND, 1
  field :INVALID, 2
  field :VALID, 3
end

defmodule Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse.UncommittedFileChange.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDED, 1
  field :DELETED, 2
  field :MODIFIED, 3
  field :HAS_CONFLICTS, 4
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Relation.RelationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RELATION_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :VIEW, 2
  field :INCREMENTAL_TABLE, 3
  field :MATERIALIZED_VIEW, 4
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :CANCELLED, 3
  field :FAILED, 4
  field :CANCELING, 5
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PENDING, 0
  field :RUNNING, 1
  field :SKIPPED, 2
  field :DISABLED, 3
  field :SUCCEEDED, 4
  field :CANCELLED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Dataform.V1.DataEncryptionState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kms_key_version_name, 1, type: :string, json_name: "kmsKeyVersionName", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.Repository.GitRemoteSettings.SshAuthenticationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_private_key_secret_version, 1,
    type: :string,
    json_name: "userPrivateKeySecretVersion",
    deprecated: false

  field :host_public_key, 2, type: :string, json_name: "hostPublicKey", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.Repository.GitRemoteSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
  field :default_branch, 2, type: :string, json_name: "defaultBranch", deprecated: false

  field :authentication_token_secret_version, 3,
    type: :string,
    json_name: "authenticationTokenSecretVersion",
    deprecated: false

  field :ssh_authentication_config, 5,
    type: Google.Cloud.Dataform.V1.Repository.GitRemoteSettings.SshAuthenticationConfig,
    json_name: "sshAuthenticationConfig",
    deprecated: false

  field :token_status, 4,
    type: Google.Cloud.Dataform.V1.Repository.GitRemoteSettings.TokenStatus,
    json_name: "tokenStatus",
    enum: true,
    deprecated: true
end

defmodule Google.Cloud.Dataform.V1.Repository.WorkspaceCompilationOverrides do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase", deprecated: false
  field :schema_suffix, 2, type: :string, json_name: "schemaSuffix", deprecated: false
  field :table_prefix, 3, type: :string, json_name: "tablePrefix", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.Repository.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false

  field :git_remote_settings, 2,
    type: Google.Cloud.Dataform.V1.Repository.GitRemoteSettings,
    json_name: "gitRemoteSettings",
    deprecated: false

  field :npmrc_environment_variables_secret_version, 3,
    type: :string,
    json_name: "npmrcEnvironmentVariablesSecretVersion",
    deprecated: false

  field :workspace_compilation_overrides, 4,
    type: Google.Cloud.Dataform.V1.Repository.WorkspaceCompilationOverrides,
    json_name: "workspaceCompilationOverrides",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Repository.LabelsEntry,
    map: true,
    deprecated: false

  field :set_authenticated_user_admin, 9,
    type: :bool,
    json_name: "setAuthenticatedUserAdmin",
    deprecated: false

  field :service_account, 10, type: :string, json_name: "serviceAccount", deprecated: false
  field :kms_key_name, 11, type: :string, json_name: "kmsKeyName", deprecated: false

  field :data_encryption_state, 12,
    type: Google.Cloud.Dataform.V1.DataEncryptionState,
    json_name: "dataEncryptionState",
    deprecated: false

  field :internal_metadata, 15,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Cloud.Dataform.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository, 2, type: Google.Cloud.Dataform.V1.Repository, deprecated: false
  field :repository_id, 3, type: :string, json_name: "repositoryId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.UpdateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :repository, 2, type: Google.Cloud.Dataform.V1.Repository, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation.WriteFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1, type: :bytes
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation.DeleteFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :write_file, 1,
    type: Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation.WriteFile,
    json_name: "writeFile",
    oneof: 0

  field :delete_file, 2,
    type: Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation.DeleteFile,
    json_name: "deleteFile",
    oneof: 0
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperation
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :commit_metadata, 2,
    type: Google.Cloud.Dataform.V1.CommitMetadata,
    json_name: "commitMetadata",
    deprecated: false

  field :required_head_commit_sha, 4,
    type: :string,
    json_name: "requiredHeadCommitSha",
    deprecated: false

  field :file_operations, 3,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest.FileOperationsEntry,
    json_name: "fileOperations",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CommitRepositoryChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commit_sha, 1, type: :string, json_name: "commitSha"
end

defmodule Google.Cloud.Dataform.V1.ReadRepositoryFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :commit_sha, 2, type: :string, json_name: "commitSha", deprecated: false
  field :path, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ReadRepositoryFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1, type: :bytes
end

defmodule Google.Cloud.Dataform.V1.QueryRepositoryDirectoryContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :commit_sha, 2, type: :string, json_name: "commitSha", deprecated: false
  field :path, 3, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryRepositoryDirectoryContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :directory_entries, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.DirectoryEntry,
    json_name: "directoryEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1.FetchRepositoryHistoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchRepositoryHistoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commits, 1, repeated: true, type: Google.Cloud.Dataform.V1.CommitLogEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1.CommitLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commit_time, 1, type: Google.Protobuf.Timestamp, json_name: "commitTime"
  field :commit_sha, 2, type: :string, json_name: "commitSha"
  field :author, 3, type: Google.Cloud.Dataform.V1.CommitAuthor
  field :commit_message, 4, type: :string, json_name: "commitMessage"
end

defmodule Google.Cloud.Dataform.V1.CommitMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :author, 1, type: Google.Cloud.Dataform.V1.CommitAuthor, deprecated: false
  field :commit_message, 2, type: :string, json_name: "commitMessage", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_status, 1,
    type: Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusResponse.TokenStatus,
    json_name: "tokenStatus",
    enum: true
end

defmodule Google.Cloud.Dataform.V1.FetchRemoteBranchesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchRemoteBranchesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :branches, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.Workspace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :data_encryption_state, 2,
    type: Google.Cloud.Dataform.V1.DataEncryptionState,
    json_name: "dataEncryptionState",
    deprecated: false

  field :internal_metadata, 5,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkspacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkspacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspaces, 1, repeated: true, type: Google.Cloud.Dataform.V1.Workspace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workspace, 2, type: Google.Cloud.Dataform.V1.Workspace, deprecated: false
  field :workspace_id, 3, type: :string, json_name: "workspaceId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.DeleteWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CommitAuthor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email_address, 2, type: :string, json_name: "emailAddress", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.PullGitCommitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
  field :author, 3, type: Google.Cloud.Dataform.V1.CommitAuthor, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.PullGitCommitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.PushGitCommitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.PushGitCommitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.FetchFileGitStatusesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse.UncommittedFileChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string

  field :state, 2,
    type: Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse.UncommittedFileChange.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uncommitted_file_changes, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse.UncommittedFileChange,
    json_name: "uncommittedFileChanges"
end

defmodule Google.Cloud.Dataform.V1.FetchGitAheadBehindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchGitAheadBehindResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :commits_ahead, 1, type: :int32, json_name: "commitsAhead"
  field :commits_behind, 2, type: :int32, json_name: "commitsBehind"
end

defmodule Google.Cloud.Dataform.V1.CommitWorkspaceChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :author, 4, type: Google.Cloud.Dataform.V1.CommitAuthor, deprecated: false
  field :commit_message, 2, type: :string, json_name: "commitMessage", deprecated: false
  field :paths, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CommitWorkspaceChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.ResetWorkspaceChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :paths, 2, repeated: true, type: :string, deprecated: false
  field :clean, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ResetWorkspaceChangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.FetchFileDiffRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.FetchFileDiffResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :formatted_diff, 1, type: :string, json_name: "formattedDiff"
end

defmodule Google.Cloud.Dataform.V1.QueryDirectoryContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryDirectoryContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :directory_entries, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.DirectoryEntry,
    json_name: "directoryEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1.DirectoryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :entry, 0

  field :file, 1, type: :string, oneof: 0
  field :directory, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Dataform.V1.SearchFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.SearchFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_results, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.SearchResult,
    json_name: "searchResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :entry, 0

  field :file, 1, type: Google.Cloud.Dataform.V1.FileSearchResult, oneof: 0
  field :directory, 2, type: Google.Cloud.Dataform.V1.DirectorySearchResult, oneof: 0
end

defmodule Google.Cloud.Dataform.V1.FileSearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string
end

defmodule Google.Cloud.Dataform.V1.DirectorySearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string
end

defmodule Google.Cloud.Dataform.V1.MakeDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.MakeDirectoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.RemoveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.RemoveDirectoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.MoveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :new_path, 3, type: :string, json_name: "newPath", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.MoveDirectoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.ReadFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :revision, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ReadFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_contents, 1, type: :bytes, json_name: "fileContents"
end

defmodule Google.Cloud.Dataform.V1.RemoveFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.RemoveFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.MoveFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :new_path, 3, type: :string, json_name: "newPath", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.MoveFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.WriteFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :contents, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WriteFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.InstallNpmPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.InstallNpmPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.ReleaseConfig.ScheduledReleaseRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :result, 0

  field :compilation_result, 2,
    type: :string,
    json_name: "compilationResult",
    oneof: 0,
    deprecated: false

  field :error_status, 3, type: Google.Rpc.Status, json_name: "errorStatus", oneof: 0

  field :release_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "releaseTime",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ReleaseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :git_commitish, 2, type: :string, json_name: "gitCommitish", deprecated: false

  field :code_compilation_config, 3,
    type: Google.Cloud.Dataform.V1.CodeCompilationConfig,
    json_name: "codeCompilationConfig",
    deprecated: false

  field :cron_schedule, 4, type: :string, json_name: "cronSchedule", deprecated: false
  field :time_zone, 7, type: :string, json_name: "timeZone", deprecated: false

  field :recent_scheduled_release_records, 5,
    repeated: true,
    type: Google.Cloud.Dataform.V1.ReleaseConfig.ScheduledReleaseRecord,
    json_name: "recentScheduledReleaseRecords",
    deprecated: false

  field :release_compilation_result, 6,
    type: :string,
    json_name: "releaseCompilationResult",
    deprecated: false

  field :disabled, 8, type: :bool, deprecated: false

  field :internal_metadata, 9,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListReleaseConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListReleaseConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release_configs, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.ReleaseConfig,
    json_name: "releaseConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetReleaseConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateReleaseConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :release_config, 2,
    type: Google.Cloud.Dataform.V1.ReleaseConfig,
    json_name: "releaseConfig",
    deprecated: false

  field :release_config_id, 3, type: :string, json_name: "releaseConfigId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.UpdateReleaseConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :release_config, 2,
    type: Google.Cloud.Dataform.V1.ReleaseConfig,
    json_name: "releaseConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.DeleteReleaseConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CompilationResult.CompilationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
  field :stack, 2, type: :string, deprecated: false
  field :path, 3, type: :string, deprecated: false

  field :action_target, 4,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "actionTarget",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CompilationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :git_commitish, 2, type: :string, json_name: "gitCommitish", oneof: 0, deprecated: false
  field :workspace, 3, type: :string, oneof: 0, deprecated: false
  field :release_config, 7, type: :string, json_name: "releaseConfig", oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false

  field :code_compilation_config, 4,
    type: Google.Cloud.Dataform.V1.CodeCompilationConfig,
    json_name: "codeCompilationConfig",
    deprecated: false

  field :resolved_git_commit_sha, 8,
    type: :string,
    json_name: "resolvedGitCommitSha",
    deprecated: false

  field :dataform_core_version, 5,
    type: :string,
    json_name: "dataformCoreVersion",
    deprecated: false

  field :compilation_errors, 6,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CompilationResult.CompilationError,
    json_name: "compilationErrors",
    deprecated: false

  field :data_encryption_state, 9,
    type: Google.Cloud.Dataform.V1.DataEncryptionState,
    json_name: "dataEncryptionState",
    deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :internal_metadata, 11,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CodeCompilationConfig.VarsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1.CodeCompilationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase", deprecated: false
  field :default_schema, 2, type: :string, json_name: "defaultSchema", deprecated: false
  field :default_location, 8, type: :string, json_name: "defaultLocation", deprecated: false
  field :assertion_schema, 3, type: :string, json_name: "assertionSchema", deprecated: false

  field :vars, 4,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CodeCompilationConfig.VarsEntry,
    map: true,
    deprecated: false

  field :database_suffix, 5, type: :string, json_name: "databaseSuffix", deprecated: false
  field :schema_suffix, 6, type: :string, json_name: "schemaSuffix", deprecated: false
  field :table_prefix, 7, type: :string, json_name: "tablePrefix", deprecated: false

  field :builtin_assertion_name_prefix, 10,
    type: :string,
    json_name: "builtinAssertionNamePrefix",
    deprecated: false

  field :default_notebook_runtime_options, 9,
    type: Google.Cloud.Dataform.V1.NotebookRuntimeOptions,
    json_name: "defaultNotebookRuntimeOptions",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.NotebookRuntimeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :execution_sink, 0

  field :gcs_output_bucket, 1,
    type: :string,
    json_name: "gcsOutputBucket",
    oneof: 0,
    deprecated: false

  field :ai_platform_notebook_runtime_template, 2,
    type: :string,
    json_name: "aiPlatformNotebookRuntimeTemplate",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListCompilationResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListCompilationResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :compilation_results, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CompilationResult,
    json_name: "compilationResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetCompilationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateCompilationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :compilation_result, 2,
    type: Google.Cloud.Dataform.V1.CompilationResult,
    json_name: "compilationResult",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :schema, 2, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.RelationDescriptor.ColumnDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, repeated: true, type: :string
  field :description, 2, type: :string
  field :bigquery_policy_tags, 3, repeated: true, type: :string, json_name: "bigqueryPolicyTags"
end

defmodule Google.Cloud.Dataform.V1.RelationDescriptor.BigqueryLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1.RelationDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :description, 1, type: :string

  field :columns, 2,
    repeated: true,
    type: Google.Cloud.Dataform.V1.RelationDescriptor.ColumnDescriptor

  field :bigquery_labels, 3,
    repeated: true,
    type: Google.Cloud.Dataform.V1.RelationDescriptor.BigqueryLabelsEntry,
    json_name: "bigqueryLabels",
    map: true
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Relation.IncrementalTableConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :incremental_select_query, 1, type: :string, json_name: "incrementalSelectQuery"
  field :refresh_disabled, 2, type: :bool, json_name: "refreshDisabled"
  field :unique_key_parts, 3, repeated: true, type: :string, json_name: "uniqueKeyParts"
  field :update_partition_filter, 4, type: :string, json_name: "updatePartitionFilter"

  field :incremental_pre_operations, 5,
    repeated: true,
    type: :string,
    json_name: "incrementalPreOperations"

  field :incremental_post_operations, 6,
    repeated: true,
    type: :string,
    json_name: "incrementalPostOperations"
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Relation.AdditionalOptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Relation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string

  field :relation_descriptor, 4,
    type: Google.Cloud.Dataform.V1.RelationDescriptor,
    json_name: "relationDescriptor"

  field :relation_type, 5,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.Relation.RelationType,
    json_name: "relationType",
    enum: true

  field :select_query, 6, type: :string, json_name: "selectQuery"
  field :pre_operations, 7, repeated: true, type: :string, json_name: "preOperations"
  field :post_operations, 8, repeated: true, type: :string, json_name: "postOperations"

  field :incremental_table_config, 9,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.Relation.IncrementalTableConfig,
    json_name: "incrementalTableConfig"

  field :partition_expression, 10, type: :string, json_name: "partitionExpression"
  field :cluster_expressions, 11, repeated: true, type: :string, json_name: "clusterExpressions"
  field :partition_expiration_days, 12, type: :int32, json_name: "partitionExpirationDays"
  field :require_partition_filter, 13, type: :bool, json_name: "requirePartitionFilter"

  field :additional_options, 14,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.Relation.AdditionalOptionsEntry,
    json_name: "additionalOptions",
    map: true
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Operations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string

  field :relation_descriptor, 6,
    type: Google.Cloud.Dataform.V1.RelationDescriptor,
    json_name: "relationDescriptor"

  field :queries, 4, repeated: true, type: :string
  field :has_output, 5, type: :bool, json_name: "hasOutput"
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Assertion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "dependencyTargets"

  field :parent_action, 5, type: Google.Cloud.Dataform.V1.Target, json_name: "parentAction"
  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string
  field :select_query, 4, type: :string, json_name: "selectQuery"

  field :relation_descriptor, 6,
    type: Google.Cloud.Dataform.V1.RelationDescriptor,
    json_name: "relationDescriptor"
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Declaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :relation_descriptor, 1,
    type: Google.Cloud.Dataform.V1.RelationDescriptor,
    json_name: "relationDescriptor"
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.Notebook do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :contents, 3, type: :string
  field :tags, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation.SqlDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string

  field :error_table, 2,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation.ErrorTable,
    json_name: "errorTable"

  field :load, 3, type: Google.Cloud.Dataform.V1.CompilationResultAction.LoadConfig
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation.ErrorTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target, 1, type: Google.Cloud.Dataform.V1.Target
  field :retention_days, 2, type: :int32, json_name: "retentionDays"
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :definition, 0

  field :contents_yaml, 5, type: :string, json_name: "contentsYaml", oneof: 0

  field :contents_sql, 6,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation.SqlDefinition,
    json_name: "contentsSql",
    oneof: 0

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :tags, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.LoadConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mode, 0

  field :replace, 1,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.SimpleLoadMode,
    oneof: 0

  field :append, 2,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.SimpleLoadMode,
    oneof: 0

  field :maximum, 3,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.IncrementalLoadMode,
    oneof: 0

  field :unique, 4,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.IncrementalLoadMode,
    oneof: 0
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.SimpleLoadMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction.IncrementalLoadMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
end

defmodule Google.Cloud.Dataform.V1.CompilationResultAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :compiled_object, 0

  field :relation, 4, type: Google.Cloud.Dataform.V1.CompilationResultAction.Relation, oneof: 0

  field :operations, 5,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.Operations,
    oneof: 0

  field :assertion, 6, type: Google.Cloud.Dataform.V1.CompilationResultAction.Assertion, oneof: 0

  field :declaration, 7,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.Declaration,
    oneof: 0

  field :notebook, 8, type: Google.Cloud.Dataform.V1.CompilationResultAction.Notebook, oneof: 0

  field :data_preparation, 9,
    type: Google.Cloud.Dataform.V1.CompilationResultAction.DataPreparation,
    json_name: "dataPreparation",
    oneof: 0

  field :target, 1, type: Google.Cloud.Dataform.V1.Target
  field :canonical_target, 2, type: Google.Cloud.Dataform.V1.Target, json_name: "canonicalTarget"
  field :file_path, 3, type: :string, json_name: "filePath"

  field :internal_metadata, 10,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryCompilationResultActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryCompilationResultActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :compilation_result_actions, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.CompilationResultAction,
    json_name: "compilationResultActions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1.WorkflowConfig.ScheduledExecutionRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :result, 0

  field :workflow_invocation, 2,
    type: :string,
    json_name: "workflowInvocation",
    oneof: 0,
    deprecated: false

  field :error_status, 3, type: Google.Rpc.Status, json_name: "errorStatus", oneof: 0

  field :execution_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "executionTime",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WorkflowConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :release_config, 2, type: :string, json_name: "releaseConfig", deprecated: false

  field :invocation_config, 3,
    type: Google.Cloud.Dataform.V1.InvocationConfig,
    json_name: "invocationConfig",
    deprecated: false

  field :cron_schedule, 4, type: :string, json_name: "cronSchedule", deprecated: false
  field :time_zone, 7, type: :string, json_name: "timeZone", deprecated: false

  field :recent_scheduled_execution_records, 5,
    repeated: true,
    type: Google.Cloud.Dataform.V1.WorkflowConfig.ScheduledExecutionRecord,
    json_name: "recentScheduledExecutionRecords",
    deprecated: false

  field :disabled, 8, type: :bool, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :internal_metadata, 11,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.InvocationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :included_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "includedTargets",
    deprecated: false

  field :included_tags, 2,
    repeated: true,
    type: :string,
    json_name: "includedTags",
    deprecated: false

  field :transitive_dependencies_included, 3,
    type: :bool,
    json_name: "transitiveDependenciesIncluded",
    deprecated: false

  field :transitive_dependents_included, 4,
    type: :bool,
    json_name: "transitiveDependentsIncluded",
    deprecated: false

  field :fully_refresh_incremental_tables_enabled, 5,
    type: :bool,
    json_name: "fullyRefreshIncrementalTablesEnabled",
    deprecated: false

  field :service_account, 6, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkflowConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkflowConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_configs, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.WorkflowConfig,
    json_name: "workflowConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetWorkflowConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateWorkflowConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :workflow_config, 2,
    type: Google.Cloud.Dataform.V1.WorkflowConfig,
    json_name: "workflowConfig",
    deprecated: false

  field :workflow_config_id, 3, type: :string, json_name: "workflowConfigId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.UpdateWorkflowConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :workflow_config, 2,
    type: Google.Cloud.Dataform.V1.WorkflowConfig,
    json_name: "workflowConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.DeleteWorkflowConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :compilation_source, 0

  field :compilation_result, 2,
    type: :string,
    json_name: "compilationResult",
    oneof: 0,
    deprecated: false

  field :workflow_config, 6,
    type: :string,
    json_name: "workflowConfig",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :invocation_config, 3,
    type: Google.Cloud.Dataform.V1.InvocationConfig,
    json_name: "invocationConfig",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Dataform.V1.WorkflowInvocation.State,
    enum: true,
    deprecated: false

  field :invocation_timing, 5,
    type: Google.Type.Interval,
    json_name: "invocationTiming",
    deprecated: false

  field :resolved_compilation_result, 7,
    type: :string,
    json_name: "resolvedCompilationResult",
    deprecated: false

  field :data_encryption_state, 8,
    type: Google.Cloud.Dataform.V1.DataEncryptionState,
    json_name: "dataEncryptionState",
    deprecated: false

  field :internal_metadata, 9,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkflowInvocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.ListWorkflowInvocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_invocations, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.WorkflowInvocation,
    json_name: "workflowInvocations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1.GetWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CreateWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :workflow_invocation, 2,
    type: Google.Cloud.Dataform.V1.WorkflowInvocation,
    json_name: "workflowInvocation",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.DeleteWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CancelWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.CancelWorkflowInvocationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.BigQueryAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sql_script, 1, type: :string, json_name: "sqlScript", deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.NotebookAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionSqlDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string

  field :error_table, 2,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionErrorTable,
    json_name: "errorTable"

  field :load_config, 3,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionLoadConfig,
    json_name: "loadConfig"
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionErrorTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target, 1, type: Google.Cloud.Dataform.V1.Target
  field :retention_days, 2, type: :int32, json_name: "retentionDays"
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionLoadConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :mode, 0

  field :replace, 1,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionSimpleLoadMode,
    oneof: 0

  field :append, 2,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionSimpleLoadMode,
    oneof: 0

  field :maximum, 3,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionIncrementalLoadMode,
    oneof: 0

  field :unique, 4,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionIncrementalLoadMode,
    oneof: 0
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionSimpleLoadMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionIncrementalLoadMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :definition, 0

  field :contents_yaml, 2, type: :string, json_name: "contentsYaml", oneof: 0, deprecated: false

  field :contents_sql, 6,
    type:
      Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction.ActionSqlDefinition,
    json_name: "contentsSql",
    oneof: 0

  field :generated_sql, 3, type: :string, json_name: "generatedSql", deprecated: false
  field :job_id, 4, type: :string, json_name: "jobId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.WorkflowInvocationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action, 0

  field :bigquery_action, 6,
    type: Google.Cloud.Dataform.V1.WorkflowInvocationAction.BigQueryAction,
    json_name: "bigqueryAction",
    oneof: 0,
    deprecated: false

  field :notebook_action, 8,
    type: Google.Cloud.Dataform.V1.WorkflowInvocationAction.NotebookAction,
    json_name: "notebookAction",
    oneof: 0,
    deprecated: false

  field :data_preparation_action, 9,
    type: Google.Cloud.Dataform.V1.WorkflowInvocationAction.DataPreparationAction,
    json_name: "dataPreparationAction",
    oneof: 0,
    deprecated: false

  field :target, 1, type: Google.Cloud.Dataform.V1.Target, deprecated: false

  field :canonical_target, 2,
    type: Google.Cloud.Dataform.V1.Target,
    json_name: "canonicalTarget",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Dataform.V1.WorkflowInvocationAction.State,
    enum: true,
    deprecated: false

  field :failure_reason, 7, type: :string, json_name: "failureReason", deprecated: false

  field :invocation_timing, 5,
    type: Google.Type.Interval,
    json_name: "invocationTiming",
    deprecated: false

  field :internal_metadata, 10,
    proto3_optional: true,
    type: :string,
    json_name: "internalMetadata",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryWorkflowInvocationActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.QueryWorkflowInvocationActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_invocation_actions, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1.WorkflowInvocationAction,
    json_name: "workflowInvocationActions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :default_kms_key_name, 2, type: :string, json_name: "defaultKmsKeyName", deprecated: false
end

defmodule Google.Cloud.Dataform.V1.GetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1.UpdateConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Dataform.V1.Config, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1.Dataform.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.dataform.v1.Dataform", protoc_gen_elixir_version: "0.15.0"

  rpc :ListRepositories,
      Google.Cloud.Dataform.V1.ListRepositoriesRequest,
      Google.Cloud.Dataform.V1.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Cloud.Dataform.V1.GetRepositoryRequest,
      Google.Cloud.Dataform.V1.Repository

  rpc :CreateRepository,
      Google.Cloud.Dataform.V1.CreateRepositoryRequest,
      Google.Cloud.Dataform.V1.Repository

  rpc :UpdateRepository,
      Google.Cloud.Dataform.V1.UpdateRepositoryRequest,
      Google.Cloud.Dataform.V1.Repository

  rpc :DeleteRepository, Google.Cloud.Dataform.V1.DeleteRepositoryRequest, Google.Protobuf.Empty

  rpc :CommitRepositoryChanges,
      Google.Cloud.Dataform.V1.CommitRepositoryChangesRequest,
      Google.Cloud.Dataform.V1.CommitRepositoryChangesResponse

  rpc :ReadRepositoryFile,
      Google.Cloud.Dataform.V1.ReadRepositoryFileRequest,
      Google.Cloud.Dataform.V1.ReadRepositoryFileResponse

  rpc :QueryRepositoryDirectoryContents,
      Google.Cloud.Dataform.V1.QueryRepositoryDirectoryContentsRequest,
      Google.Cloud.Dataform.V1.QueryRepositoryDirectoryContentsResponse

  rpc :FetchRepositoryHistory,
      Google.Cloud.Dataform.V1.FetchRepositoryHistoryRequest,
      Google.Cloud.Dataform.V1.FetchRepositoryHistoryResponse

  rpc :ComputeRepositoryAccessTokenStatus,
      Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusRequest,
      Google.Cloud.Dataform.V1.ComputeRepositoryAccessTokenStatusResponse

  rpc :FetchRemoteBranches,
      Google.Cloud.Dataform.V1.FetchRemoteBranchesRequest,
      Google.Cloud.Dataform.V1.FetchRemoteBranchesResponse

  rpc :ListWorkspaces,
      Google.Cloud.Dataform.V1.ListWorkspacesRequest,
      Google.Cloud.Dataform.V1.ListWorkspacesResponse

  rpc :GetWorkspace,
      Google.Cloud.Dataform.V1.GetWorkspaceRequest,
      Google.Cloud.Dataform.V1.Workspace

  rpc :CreateWorkspace,
      Google.Cloud.Dataform.V1.CreateWorkspaceRequest,
      Google.Cloud.Dataform.V1.Workspace

  rpc :DeleteWorkspace, Google.Cloud.Dataform.V1.DeleteWorkspaceRequest, Google.Protobuf.Empty

  rpc :InstallNpmPackages,
      Google.Cloud.Dataform.V1.InstallNpmPackagesRequest,
      Google.Cloud.Dataform.V1.InstallNpmPackagesResponse

  rpc :PullGitCommits,
      Google.Cloud.Dataform.V1.PullGitCommitsRequest,
      Google.Cloud.Dataform.V1.PullGitCommitsResponse

  rpc :PushGitCommits,
      Google.Cloud.Dataform.V1.PushGitCommitsRequest,
      Google.Cloud.Dataform.V1.PushGitCommitsResponse

  rpc :FetchFileGitStatuses,
      Google.Cloud.Dataform.V1.FetchFileGitStatusesRequest,
      Google.Cloud.Dataform.V1.FetchFileGitStatusesResponse

  rpc :FetchGitAheadBehind,
      Google.Cloud.Dataform.V1.FetchGitAheadBehindRequest,
      Google.Cloud.Dataform.V1.FetchGitAheadBehindResponse

  rpc :CommitWorkspaceChanges,
      Google.Cloud.Dataform.V1.CommitWorkspaceChangesRequest,
      Google.Cloud.Dataform.V1.CommitWorkspaceChangesResponse

  rpc :ResetWorkspaceChanges,
      Google.Cloud.Dataform.V1.ResetWorkspaceChangesRequest,
      Google.Cloud.Dataform.V1.ResetWorkspaceChangesResponse

  rpc :FetchFileDiff,
      Google.Cloud.Dataform.V1.FetchFileDiffRequest,
      Google.Cloud.Dataform.V1.FetchFileDiffResponse

  rpc :QueryDirectoryContents,
      Google.Cloud.Dataform.V1.QueryDirectoryContentsRequest,
      Google.Cloud.Dataform.V1.QueryDirectoryContentsResponse

  rpc :SearchFiles,
      Google.Cloud.Dataform.V1.SearchFilesRequest,
      Google.Cloud.Dataform.V1.SearchFilesResponse

  rpc :MakeDirectory,
      Google.Cloud.Dataform.V1.MakeDirectoryRequest,
      Google.Cloud.Dataform.V1.MakeDirectoryResponse

  rpc :RemoveDirectory,
      Google.Cloud.Dataform.V1.RemoveDirectoryRequest,
      Google.Cloud.Dataform.V1.RemoveDirectoryResponse

  rpc :MoveDirectory,
      Google.Cloud.Dataform.V1.MoveDirectoryRequest,
      Google.Cloud.Dataform.V1.MoveDirectoryResponse

  rpc :ReadFile,
      Google.Cloud.Dataform.V1.ReadFileRequest,
      Google.Cloud.Dataform.V1.ReadFileResponse

  rpc :RemoveFile,
      Google.Cloud.Dataform.V1.RemoveFileRequest,
      Google.Cloud.Dataform.V1.RemoveFileResponse

  rpc :MoveFile,
      Google.Cloud.Dataform.V1.MoveFileRequest,
      Google.Cloud.Dataform.V1.MoveFileResponse

  rpc :WriteFile,
      Google.Cloud.Dataform.V1.WriteFileRequest,
      Google.Cloud.Dataform.V1.WriteFileResponse

  rpc :ListReleaseConfigs,
      Google.Cloud.Dataform.V1.ListReleaseConfigsRequest,
      Google.Cloud.Dataform.V1.ListReleaseConfigsResponse

  rpc :GetReleaseConfig,
      Google.Cloud.Dataform.V1.GetReleaseConfigRequest,
      Google.Cloud.Dataform.V1.ReleaseConfig

  rpc :CreateReleaseConfig,
      Google.Cloud.Dataform.V1.CreateReleaseConfigRequest,
      Google.Cloud.Dataform.V1.ReleaseConfig

  rpc :UpdateReleaseConfig,
      Google.Cloud.Dataform.V1.UpdateReleaseConfigRequest,
      Google.Cloud.Dataform.V1.ReleaseConfig

  rpc :DeleteReleaseConfig,
      Google.Cloud.Dataform.V1.DeleteReleaseConfigRequest,
      Google.Protobuf.Empty

  rpc :ListCompilationResults,
      Google.Cloud.Dataform.V1.ListCompilationResultsRequest,
      Google.Cloud.Dataform.V1.ListCompilationResultsResponse

  rpc :GetCompilationResult,
      Google.Cloud.Dataform.V1.GetCompilationResultRequest,
      Google.Cloud.Dataform.V1.CompilationResult

  rpc :CreateCompilationResult,
      Google.Cloud.Dataform.V1.CreateCompilationResultRequest,
      Google.Cloud.Dataform.V1.CompilationResult

  rpc :QueryCompilationResultActions,
      Google.Cloud.Dataform.V1.QueryCompilationResultActionsRequest,
      Google.Cloud.Dataform.V1.QueryCompilationResultActionsResponse

  rpc :ListWorkflowConfigs,
      Google.Cloud.Dataform.V1.ListWorkflowConfigsRequest,
      Google.Cloud.Dataform.V1.ListWorkflowConfigsResponse

  rpc :GetWorkflowConfig,
      Google.Cloud.Dataform.V1.GetWorkflowConfigRequest,
      Google.Cloud.Dataform.V1.WorkflowConfig

  rpc :CreateWorkflowConfig,
      Google.Cloud.Dataform.V1.CreateWorkflowConfigRequest,
      Google.Cloud.Dataform.V1.WorkflowConfig

  rpc :UpdateWorkflowConfig,
      Google.Cloud.Dataform.V1.UpdateWorkflowConfigRequest,
      Google.Cloud.Dataform.V1.WorkflowConfig

  rpc :DeleteWorkflowConfig,
      Google.Cloud.Dataform.V1.DeleteWorkflowConfigRequest,
      Google.Protobuf.Empty

  rpc :ListWorkflowInvocations,
      Google.Cloud.Dataform.V1.ListWorkflowInvocationsRequest,
      Google.Cloud.Dataform.V1.ListWorkflowInvocationsResponse

  rpc :GetWorkflowInvocation,
      Google.Cloud.Dataform.V1.GetWorkflowInvocationRequest,
      Google.Cloud.Dataform.V1.WorkflowInvocation

  rpc :CreateWorkflowInvocation,
      Google.Cloud.Dataform.V1.CreateWorkflowInvocationRequest,
      Google.Cloud.Dataform.V1.WorkflowInvocation

  rpc :DeleteWorkflowInvocation,
      Google.Cloud.Dataform.V1.DeleteWorkflowInvocationRequest,
      Google.Protobuf.Empty

  rpc :CancelWorkflowInvocation,
      Google.Cloud.Dataform.V1.CancelWorkflowInvocationRequest,
      Google.Cloud.Dataform.V1.CancelWorkflowInvocationResponse

  rpc :QueryWorkflowInvocationActions,
      Google.Cloud.Dataform.V1.QueryWorkflowInvocationActionsRequest,
      Google.Cloud.Dataform.V1.QueryWorkflowInvocationActionsResponse

  rpc :GetConfig, Google.Cloud.Dataform.V1.GetConfigRequest, Google.Cloud.Dataform.V1.Config

  rpc :UpdateConfig, Google.Cloud.Dataform.V1.UpdateConfigRequest, Google.Cloud.Dataform.V1.Config
end

defmodule Google.Cloud.Dataform.V1.Dataform.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataform.V1.Dataform.Service
end
