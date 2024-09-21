defmodule Google.Cloud.Dataform.V1alpha2.Repository.GitRemoteSettings.TokenStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TOKEN_STATUS_UNSPECIFIED, 0
  field :NOT_FOUND, 1
  field :INVALID, 2
  field :VALID, 3
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse.UncommittedFileChange.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDED, 1
  field :DELETED, 2
  field :MODIFIED, 3
  field :HAS_CONFLICTS, 4
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.RelationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RELATION_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :VIEW, 2
  field :INCREMENTAL_TABLE, 3
  field :MATERIALIZED_VIEW, 4
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :CANCELLED, 3
  field :FAILED, 4
  field :CANCELING, 5
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PENDING, 0
  field :RUNNING, 1
  field :SKIPPED, 2
  field :DISABLED, 3
  field :SUCCEEDED, 4
  field :CANCELLED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Dataform.V1alpha2.Repository.GitRemoteSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
  field :default_branch, 2, type: :string, json_name: "defaultBranch", deprecated: false

  field :authentication_token_secret_version, 3,
    type: :string,
    json_name: "authenticationTokenSecretVersion",
    deprecated: false

  field :token_status, 4,
    type: Google.Cloud.Dataform.V1alpha2.Repository.GitRemoteSettings.TokenStatus,
    json_name: "tokenStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :git_remote_settings, 2,
    type: Google.Cloud.Dataform.V1alpha2.Repository.GitRemoteSettings,
    json_name: "gitRemoteSettings",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Cloud.Dataform.V1alpha2.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository, 2, type: Google.Cloud.Dataform.V1alpha2.Repository, deprecated: false
  field :repository_id, 3, type: :string, json_name: "repositoryId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.UpdateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :repository, 2, type: Google.Cloud.Dataform.V1alpha2.Repository, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchRemoteBranchesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchRemoteBranchesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :branches, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.Workspace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListWorkspacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListWorkspacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspaces, 1, repeated: true, type: Google.Cloud.Dataform.V1alpha2.Workspace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.GetWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CreateWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workspace, 2, type: Google.Cloud.Dataform.V1alpha2.Workspace, deprecated: false
  field :workspace_id, 3, type: :string, json_name: "workspaceId", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.DeleteWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CommitAuthor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email_address, 2, type: :string, json_name: "emailAddress", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.PullGitCommitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
  field :author, 3, type: Google.Cloud.Dataform.V1alpha2.CommitAuthor, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.PushGitCommitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse.UncommittedFileChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string

  field :state, 2,
    type: Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse.UncommittedFileChange.State,
    enum: true
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uncommitted_file_changes, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse.UncommittedFileChange,
    json_name: "uncommittedFileChanges"
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchGitAheadBehindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_branch, 2, type: :string, json_name: "remoteBranch", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchGitAheadBehindResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :commits_ahead, 1, type: :int32, json_name: "commitsAhead"
  field :commits_behind, 2, type: :int32, json_name: "commitsBehind"
end

defmodule Google.Cloud.Dataform.V1alpha2.CommitWorkspaceChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :author, 4, type: Google.Cloud.Dataform.V1alpha2.CommitAuthor, deprecated: false
  field :commit_message, 2, type: :string, json_name: "commitMessage", deprecated: false
  field :paths, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ResetWorkspaceChangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :paths, 2, repeated: true, type: :string, deprecated: false
  field :clean, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileDiffRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.FetchFileDiffResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :formatted_diff, 1, type: :string, json_name: "formattedDiff"
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsResponse.DirectoryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :entry, 0

  field :file, 1, type: :string, oneof: 0
  field :directory, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :directory_entries, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsResponse.DirectoryEntry,
    json_name: "directoryEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1alpha2.MakeDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.MakeDirectoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1alpha2.RemoveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.MoveDirectoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :new_path, 3, type: :string, json_name: "newPath", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.MoveDirectoryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1alpha2.ReadFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ReadFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :file_contents, 1, type: :bytes, json_name: "fileContents"
end

defmodule Google.Cloud.Dataform.V1alpha2.RemoveFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.MoveFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :new_path, 3, type: :string, json_name: "newPath", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.MoveFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1alpha2.WriteFileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :contents, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.WriteFileResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1alpha2.InstallNpmPackagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.InstallNpmPackagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResult.CodeCompilationConfig.VarsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResult.CodeCompilationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase", deprecated: false
  field :default_schema, 2, type: :string, json_name: "defaultSchema", deprecated: false
  field :default_location, 8, type: :string, json_name: "defaultLocation", deprecated: false
  field :assertion_schema, 3, type: :string, json_name: "assertionSchema", deprecated: false

  field :vars, 4,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResult.CodeCompilationConfig.VarsEntry,
    map: true,
    deprecated: false

  field :database_suffix, 5, type: :string, json_name: "databaseSuffix", deprecated: false
  field :schema_suffix, 6, type: :string, json_name: "schemaSuffix", deprecated: false
  field :table_prefix, 7, type: :string, json_name: "tablePrefix", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResult.CompilationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
  field :stack, 2, type: :string, deprecated: false
  field :path, 3, type: :string, deprecated: false

  field :action_target, 4,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "actionTarget",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :git_commitish, 2, type: :string, json_name: "gitCommitish", oneof: 0, deprecated: false
  field :workspace, 3, type: :string, oneof: 0, deprecated: false

  field :code_compilation_config, 4,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResult.CodeCompilationConfig,
    json_name: "codeCompilationConfig",
    deprecated: false

  field :dataform_core_version, 5,
    type: :string,
    json_name: "dataformCoreVersion",
    deprecated: false

  field :compilation_errors, 6,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResult.CompilationError,
    json_name: "compilationErrors",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListCompilationResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListCompilationResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :compilation_results, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResult,
    json_name: "compilationResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.GetCompilationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CreateCompilationResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :compilation_result, 2,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResult,
    json_name: "compilationResult",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :database, 1, type: :string
  field :schema, 2, type: :string
  field :name, 3, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.RelationDescriptor.ColumnDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, repeated: true, type: :string
  field :description, 2, type: :string
  field :bigquery_policy_tags, 3, repeated: true, type: :string, json_name: "bigqueryPolicyTags"
end

defmodule Google.Cloud.Dataform.V1alpha2.RelationDescriptor.BigqueryLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.RelationDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :description, 1, type: :string

  field :columns, 2,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor.ColumnDescriptor

  field :bigquery_labels, 3,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor.BigqueryLabelsEntry,
    json_name: "bigqueryLabels",
    map: true
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.IncrementalTableConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.AdditionalOptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string

  field :relation_descriptor, 4,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor,
    json_name: "relationDescriptor"

  field :relation_type, 5,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.RelationType,
    json_name: "relationType",
    enum: true

  field :select_query, 6, type: :string, json_name: "selectQuery"
  field :pre_operations, 7, repeated: true, type: :string, json_name: "preOperations"
  field :post_operations, 8, repeated: true, type: :string, json_name: "postOperations"

  field :incremental_table_config, 9,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.IncrementalTableConfig,
    json_name: "incrementalTableConfig"

  field :partition_expression, 10, type: :string, json_name: "partitionExpression"
  field :cluster_expressions, 11, repeated: true, type: :string, json_name: "clusterExpressions"
  field :partition_expiration_days, 12, type: :int32, json_name: "partitionExpirationDays"
  field :require_partition_filter, 13, type: :bool, json_name: "requirePartitionFilter"

  field :additional_options, 14,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation.AdditionalOptionsEntry,
    json_name: "additionalOptions",
    map: true
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Operations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "dependencyTargets"

  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string

  field :relation_descriptor, 6,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor,
    json_name: "relationDescriptor"

  field :queries, 4, repeated: true, type: :string
  field :has_output, 5, type: :bool, json_name: "hasOutput"
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Assertion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dependency_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "dependencyTargets"

  field :parent_action, 5, type: Google.Cloud.Dataform.V1alpha2.Target, json_name: "parentAction"
  field :disabled, 2, type: :bool
  field :tags, 3, repeated: true, type: :string
  field :select_query, 4, type: :string, json_name: "selectQuery"

  field :relation_descriptor, 6,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor,
    json_name: "relationDescriptor"
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Declaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :relation_descriptor, 1,
    type: Google.Cloud.Dataform.V1alpha2.RelationDescriptor,
    json_name: "relationDescriptor"
end

defmodule Google.Cloud.Dataform.V1alpha2.CompilationResultAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :compiled_object, 0

  field :target, 1, type: Google.Cloud.Dataform.V1alpha2.Target

  field :canonical_target, 2,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "canonicalTarget"

  field :file_path, 3, type: :string, json_name: "filePath"

  field :relation, 4,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Relation,
    oneof: 0

  field :operations, 5,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Operations,
    oneof: 0

  field :assertion, 6,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Assertion,
    oneof: 0

  field :declaration, 7,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction.Declaration,
    oneof: 0
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryCompilationResultActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryCompilationResultActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :compilation_result_actions, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.CompilationResultAction,
    json_name: "compilationResultActions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocation.InvocationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :included_targets, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.Target,
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
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :compilation_result, 2, type: :string, json_name: "compilationResult", deprecated: false

  field :invocation_config, 3,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocation.InvocationConfig,
    json_name: "invocationConfig",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocation.State,
    enum: true,
    deprecated: false

  field :invocation_timing, 5,
    type: Google.Type.Interval,
    json_name: "invocationTiming",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListWorkflowInvocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.ListWorkflowInvocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workflow_invocations, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocation,
    json_name: "workflowInvocations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataform.V1alpha2.GetWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CreateWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :workflow_invocation, 2,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocation,
    json_name: "workflowInvocation",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.DeleteWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.CancelWorkflowInvocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction.BigQueryAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_script, 1, type: :string, json_name: "sqlScript", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target, 1, type: Google.Cloud.Dataform.V1alpha2.Target, deprecated: false

  field :canonical_target, 2,
    type: Google.Cloud.Dataform.V1alpha2.Target,
    json_name: "canonicalTarget",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction.State,
    enum: true,
    deprecated: false

  field :failure_reason, 7, type: :string, json_name: "failureReason", deprecated: false

  field :invocation_timing, 5,
    type: Google.Type.Interval,
    json_name: "invocationTiming",
    deprecated: false

  field :bigquery_action, 6,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction.BigQueryAction,
    json_name: "bigqueryAction",
    deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryWorkflowInvocationActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataform.V1alpha2.QueryWorkflowInvocationActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workflow_invocation_actions, 1,
    repeated: true,
    type: Google.Cloud.Dataform.V1alpha2.WorkflowInvocationAction,
    json_name: "workflowInvocationActions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataform.V1alpha2.Dataform.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataform.v1alpha2.Dataform",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListRepositories,
      Google.Cloud.Dataform.V1alpha2.ListRepositoriesRequest,
      Google.Cloud.Dataform.V1alpha2.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Cloud.Dataform.V1alpha2.GetRepositoryRequest,
      Google.Cloud.Dataform.V1alpha2.Repository

  rpc :CreateRepository,
      Google.Cloud.Dataform.V1alpha2.CreateRepositoryRequest,
      Google.Cloud.Dataform.V1alpha2.Repository

  rpc :UpdateRepository,
      Google.Cloud.Dataform.V1alpha2.UpdateRepositoryRequest,
      Google.Cloud.Dataform.V1alpha2.Repository

  rpc :DeleteRepository,
      Google.Cloud.Dataform.V1alpha2.DeleteRepositoryRequest,
      Google.Protobuf.Empty

  rpc :FetchRemoteBranches,
      Google.Cloud.Dataform.V1alpha2.FetchRemoteBranchesRequest,
      Google.Cloud.Dataform.V1alpha2.FetchRemoteBranchesResponse

  rpc :ListWorkspaces,
      Google.Cloud.Dataform.V1alpha2.ListWorkspacesRequest,
      Google.Cloud.Dataform.V1alpha2.ListWorkspacesResponse

  rpc :GetWorkspace,
      Google.Cloud.Dataform.V1alpha2.GetWorkspaceRequest,
      Google.Cloud.Dataform.V1alpha2.Workspace

  rpc :CreateWorkspace,
      Google.Cloud.Dataform.V1alpha2.CreateWorkspaceRequest,
      Google.Cloud.Dataform.V1alpha2.Workspace

  rpc :DeleteWorkspace,
      Google.Cloud.Dataform.V1alpha2.DeleteWorkspaceRequest,
      Google.Protobuf.Empty

  rpc :InstallNpmPackages,
      Google.Cloud.Dataform.V1alpha2.InstallNpmPackagesRequest,
      Google.Cloud.Dataform.V1alpha2.InstallNpmPackagesResponse

  rpc :PullGitCommits, Google.Cloud.Dataform.V1alpha2.PullGitCommitsRequest, Google.Protobuf.Empty

  rpc :PushGitCommits, Google.Cloud.Dataform.V1alpha2.PushGitCommitsRequest, Google.Protobuf.Empty

  rpc :FetchFileGitStatuses,
      Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesRequest,
      Google.Cloud.Dataform.V1alpha2.FetchFileGitStatusesResponse

  rpc :FetchGitAheadBehind,
      Google.Cloud.Dataform.V1alpha2.FetchGitAheadBehindRequest,
      Google.Cloud.Dataform.V1alpha2.FetchGitAheadBehindResponse

  rpc :CommitWorkspaceChanges,
      Google.Cloud.Dataform.V1alpha2.CommitWorkspaceChangesRequest,
      Google.Protobuf.Empty

  rpc :ResetWorkspaceChanges,
      Google.Cloud.Dataform.V1alpha2.ResetWorkspaceChangesRequest,
      Google.Protobuf.Empty

  rpc :FetchFileDiff,
      Google.Cloud.Dataform.V1alpha2.FetchFileDiffRequest,
      Google.Cloud.Dataform.V1alpha2.FetchFileDiffResponse

  rpc :QueryDirectoryContents,
      Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsRequest,
      Google.Cloud.Dataform.V1alpha2.QueryDirectoryContentsResponse

  rpc :MakeDirectory,
      Google.Cloud.Dataform.V1alpha2.MakeDirectoryRequest,
      Google.Cloud.Dataform.V1alpha2.MakeDirectoryResponse

  rpc :RemoveDirectory,
      Google.Cloud.Dataform.V1alpha2.RemoveDirectoryRequest,
      Google.Protobuf.Empty

  rpc :MoveDirectory,
      Google.Cloud.Dataform.V1alpha2.MoveDirectoryRequest,
      Google.Cloud.Dataform.V1alpha2.MoveDirectoryResponse

  rpc :ReadFile,
      Google.Cloud.Dataform.V1alpha2.ReadFileRequest,
      Google.Cloud.Dataform.V1alpha2.ReadFileResponse

  rpc :RemoveFile, Google.Cloud.Dataform.V1alpha2.RemoveFileRequest, Google.Protobuf.Empty

  rpc :MoveFile,
      Google.Cloud.Dataform.V1alpha2.MoveFileRequest,
      Google.Cloud.Dataform.V1alpha2.MoveFileResponse

  rpc :WriteFile,
      Google.Cloud.Dataform.V1alpha2.WriteFileRequest,
      Google.Cloud.Dataform.V1alpha2.WriteFileResponse

  rpc :ListCompilationResults,
      Google.Cloud.Dataform.V1alpha2.ListCompilationResultsRequest,
      Google.Cloud.Dataform.V1alpha2.ListCompilationResultsResponse

  rpc :GetCompilationResult,
      Google.Cloud.Dataform.V1alpha2.GetCompilationResultRequest,
      Google.Cloud.Dataform.V1alpha2.CompilationResult

  rpc :CreateCompilationResult,
      Google.Cloud.Dataform.V1alpha2.CreateCompilationResultRequest,
      Google.Cloud.Dataform.V1alpha2.CompilationResult

  rpc :QueryCompilationResultActions,
      Google.Cloud.Dataform.V1alpha2.QueryCompilationResultActionsRequest,
      Google.Cloud.Dataform.V1alpha2.QueryCompilationResultActionsResponse

  rpc :ListWorkflowInvocations,
      Google.Cloud.Dataform.V1alpha2.ListWorkflowInvocationsRequest,
      Google.Cloud.Dataform.V1alpha2.ListWorkflowInvocationsResponse

  rpc :GetWorkflowInvocation,
      Google.Cloud.Dataform.V1alpha2.GetWorkflowInvocationRequest,
      Google.Cloud.Dataform.V1alpha2.WorkflowInvocation

  rpc :CreateWorkflowInvocation,
      Google.Cloud.Dataform.V1alpha2.CreateWorkflowInvocationRequest,
      Google.Cloud.Dataform.V1alpha2.WorkflowInvocation

  rpc :DeleteWorkflowInvocation,
      Google.Cloud.Dataform.V1alpha2.DeleteWorkflowInvocationRequest,
      Google.Protobuf.Empty

  rpc :CancelWorkflowInvocation,
      Google.Cloud.Dataform.V1alpha2.CancelWorkflowInvocationRequest,
      Google.Protobuf.Empty

  rpc :QueryWorkflowInvocationActions,
      Google.Cloud.Dataform.V1alpha2.QueryWorkflowInvocationActionsRequest,
      Google.Cloud.Dataform.V1alpha2.QueryWorkflowInvocationActionsResponse
end

defmodule Google.Cloud.Dataform.V1alpha2.Dataform.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataform.V1alpha2.Dataform.Service
end