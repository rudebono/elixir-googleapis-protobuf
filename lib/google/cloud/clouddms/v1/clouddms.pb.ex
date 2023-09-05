defmodule Google.Cloud.Clouddms.V1.DatabaseEntityView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATABASE_ENTITY_VIEW_UNSPECIFIED, 0
  field :DATABASE_ENTITY_VIEW_BASIC, 1
  field :DATABASE_ENTITY_VIEW_FULL, 2
  field :DATABASE_ENTITY_VIEW_ROOT_SUMMARY, 3
end

defmodule Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesRequest.DBTreeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DB_TREE_TYPE_UNSPECIFIED, 0
  field :SOURCE_TREE, 1
  field :DRAFT_TREE, 2
  field :DESTINATION_TREE, 3
end

defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :migration_jobs, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.CreateMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :migration_job_id, 2, type: :string, json_name: "migrationJobId", deprecated: false

  field :migration_job, 3,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJob",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :migration_job, 2,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJob",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.StartMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :skip_validation, 2, type: :bool, json_name: "skipValidation", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.StopMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :migration_job, 3,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJob",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.RestartMigrationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :skip_validation, 2, type: :bool, json_name: "skipValidation", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.GenerateSshScriptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :vm_config, 0

  field :migration_job, 1, type: :string, json_name: "migrationJob", deprecated: false
  field :vm, 2, type: :string, deprecated: false

  field :vm_creation_config, 100,
    type: Google.Cloud.Clouddms.V1.VmCreationConfig,
    json_name: "vmCreationConfig",
    oneof: 0

  field :vm_selection_config, 101,
    type: Google.Cloud.Clouddms.V1.VmSelectionConfig,
    json_name: "vmSelectionConfig",
    oneof: 0

  field :vm_port, 3, type: :int32, json_name: "vmPort"
end

defmodule Google.Cloud.Clouddms.V1.VmCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm_machine_type, 1, type: :string, json_name: "vmMachineType", deprecated: false
  field :vm_zone, 2, type: :string, json_name: "vmZone"
  field :subnet, 3, type: :string
end

defmodule Google.Cloud.Clouddms.V1.VmSelectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm_zone, 1, type: :string, json_name: "vmZone", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SshScript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :script, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GenerateTcpProxyScriptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :migration_job, 1, type: :string, json_name: "migrationJob", deprecated: false
  field :vm_name, 2, type: :string, json_name: "vmName", deprecated: false
  field :vm_machine_type, 3, type: :string, json_name: "vmMachineType", deprecated: false
  field :vm_zone, 4, type: :string, json_name: "vmZone", deprecated: false
  field :vm_subnet, 5, type: :string, json_name: "vmSubnet", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.TcpProxyScript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :script, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :connection_profile_id, 2,
    type: :string,
    json_name: "connectionProfileId",
    deprecated: false

  field :connection_profile, 3,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :skip_validation, 6, type: :bool, json_name: "skipValidation", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connection_profile, 2,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :skip_validation, 5, type: :bool, json_name: "skipValidation", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.CreatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :private_connection_id, 2,
    type: :string,
    json_name: "privateConnectionId",
    deprecated: false

  field :private_connection, 3,
    type: Google.Cloud.Clouddms.V1.PrivateConnection,
    json_name: "privateConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :skip_validation, 5, type: :bool, json_name: "skipValidation", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ListPrivateConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Clouddms.V1.ListPrivateConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.DeletePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.GetPrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.OperationMetadata do
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

defmodule Google.Cloud.Clouddms.V1.ListConversionWorkspacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ListConversionWorkspacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversion_workspaces, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConversionWorkspace,
    json_name: "conversionWorkspaces"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.CreateConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversion_workspace_id, 2,
    type: :string,
    json_name: "conversionWorkspaceId",
    deprecated: false

  field :conversion_workspace, 3,
    type: Google.Cloud.Clouddms.V1.ConversionWorkspace,
    json_name: "conversionWorkspace",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.UpdateConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :conversion_workspace, 2,
    type: Google.Cloud.Clouddms.V1.ConversionWorkspace,
    json_name: "conversionWorkspace",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.DeleteConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.CommitConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :commit_name, 2, type: :string, json_name: "commitName", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.RollbackConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ApplyConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :dry_run, 3, type: :bool, json_name: "dryRun", deprecated: false
  field :auto_commit, 4, type: :bool, json_name: "autoCommit", deprecated: false

  field :connection_profile, 100,
    type: :string,
    json_name: "connectionProfile",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ListMappingRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Clouddms.V1.ListMappingRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mapping_rules, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.MappingRule,
    json_name: "mappingRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Clouddms.V1.GetMappingRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SeedConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :seed_from, 0

  field :name, 1, type: :string, deprecated: false
  field :auto_commit, 2, type: :bool, json_name: "autoCommit"

  field :source_connection_profile, 100,
    type: :string,
    json_name: "sourceConnectionProfile",
    oneof: 0,
    deprecated: false

  field :destination_connection_profile, 101,
    type: :string,
    json_name: "destinationConnectionProfile",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ConvertConversionWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :auto_commit, 4, type: :bool, json_name: "autoCommit", deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :convert_full_path, 6, type: :bool, json_name: "convertFullPath", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ImportMappingRulesRequest.RulesFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rules_source_filename, 1,
    type: :string,
    json_name: "rulesSourceFilename",
    deprecated: false

  field :rules_content, 2, type: :string, json_name: "rulesContent", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ImportMappingRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :rules_format, 2,
    type: Google.Cloud.Clouddms.V1.ImportRulesFileFormat,
    json_name: "rulesFormat",
    enum: true,
    deprecated: false

  field :rules_files, 3,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ImportMappingRulesRequest.RulesFile,
    json_name: "rulesFiles",
    deprecated: false

  field :auto_commit, 6, type: :bool, json_name: "autoCommit", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversion_workspace, 1,
    type: :string,
    json_name: "conversionWorkspace",
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false

  field :tree, 6,
    type: Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesRequest.DBTreeType,
    enum: true,
    deprecated: false

  field :uncommitted, 11, type: :bool, deprecated: false
  field :commit_id, 12, type: :string, json_name: "commitId", deprecated: false
  field :filter, 13, type: :string, deprecated: false

  field :view, 14,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database_entities, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.DatabaseEntity,
    json_name: "databaseEntities"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Clouddms.V1.SearchBackgroundJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversion_workspace, 1,
    type: :string,
    json_name: "conversionWorkspace",
    deprecated: false

  field :return_most_recent_per_job_type, 2,
    type: :bool,
    json_name: "returnMostRecentPerJobType",
    deprecated: false

  field :max_size, 3, type: :int32, json_name: "maxSize", deprecated: false

  field :completed_until_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "completedUntilTime",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SearchBackgroundJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry
end

defmodule Google.Cloud.Clouddms.V1.DescribeConversionWorkspaceRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversion_workspace, 1,
    type: :string,
    json_name: "conversionWorkspace",
    deprecated: false

  field :commit_id, 2, type: :string, json_name: "commitId", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DescribeConversionWorkspaceRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revisions, 1, repeated: true, type: Google.Cloud.Clouddms.V1.ConversionWorkspace
end

defmodule Google.Cloud.Clouddms.V1.CreateMappingRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :mapping_rule_id, 2, type: :string, json_name: "mappingRuleId", deprecated: false

  field :mapping_rule, 3,
    type: Google.Cloud.Clouddms.V1.MappingRule,
    json_name: "mappingRule",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Clouddms.V1.DeleteMappingRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.FetchStaticIpsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Clouddms.V1.FetchStaticIpsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :static_ips, 1, repeated: true, type: :string, json_name: "staticIps"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.clouddms.v1.DataMigrationService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListMigrationJobs,
      Google.Cloud.Clouddms.V1.ListMigrationJobsRequest,
      Google.Cloud.Clouddms.V1.ListMigrationJobsResponse

  rpc :GetMigrationJob,
      Google.Cloud.Clouddms.V1.GetMigrationJobRequest,
      Google.Cloud.Clouddms.V1.MigrationJob

  rpc :CreateMigrationJob,
      Google.Cloud.Clouddms.V1.CreateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :UpdateMigrationJob,
      Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteMigrationJob,
      Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StartMigrationJob,
      Google.Cloud.Clouddms.V1.StartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StopMigrationJob,
      Google.Cloud.Clouddms.V1.StopMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :ResumeMigrationJob,
      Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :PromoteMigrationJob,
      Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :VerifyMigrationJob,
      Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :RestartMigrationJob,
      Google.Cloud.Clouddms.V1.RestartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :GenerateSshScript,
      Google.Cloud.Clouddms.V1.GenerateSshScriptRequest,
      Google.Cloud.Clouddms.V1.SshScript

  rpc :GenerateTcpProxyScript,
      Google.Cloud.Clouddms.V1.GenerateTcpProxyScriptRequest,
      Google.Cloud.Clouddms.V1.TcpProxyScript

  rpc :ListConnectionProfiles,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse

  rpc :GetConnectionProfile,
      Google.Cloud.Clouddms.V1.GetConnectionProfileRequest,
      Google.Cloud.Clouddms.V1.ConnectionProfile

  rpc :CreateConnectionProfile,
      Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectionProfile,
      Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectionProfile,
      Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :CreatePrivateConnection,
      Google.Cloud.Clouddms.V1.CreatePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetPrivateConnection,
      Google.Cloud.Clouddms.V1.GetPrivateConnectionRequest,
      Google.Cloud.Clouddms.V1.PrivateConnection

  rpc :ListPrivateConnections,
      Google.Cloud.Clouddms.V1.ListPrivateConnectionsRequest,
      Google.Cloud.Clouddms.V1.ListPrivateConnectionsResponse

  rpc :DeletePrivateConnection,
      Google.Cloud.Clouddms.V1.DeletePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetConversionWorkspace,
      Google.Cloud.Clouddms.V1.GetConversionWorkspaceRequest,
      Google.Cloud.Clouddms.V1.ConversionWorkspace

  rpc :ListConversionWorkspaces,
      Google.Cloud.Clouddms.V1.ListConversionWorkspacesRequest,
      Google.Cloud.Clouddms.V1.ListConversionWorkspacesResponse

  rpc :CreateConversionWorkspace,
      Google.Cloud.Clouddms.V1.CreateConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :UpdateConversionWorkspace,
      Google.Cloud.Clouddms.V1.UpdateConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :DeleteConversionWorkspace,
      Google.Cloud.Clouddms.V1.DeleteConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :CreateMappingRule,
      Google.Cloud.Clouddms.V1.CreateMappingRuleRequest,
      Google.Cloud.Clouddms.V1.MappingRule

  rpc :DeleteMappingRule, Google.Cloud.Clouddms.V1.DeleteMappingRuleRequest, Google.Protobuf.Empty

  rpc :ListMappingRules,
      Google.Cloud.Clouddms.V1.ListMappingRulesRequest,
      Google.Cloud.Clouddms.V1.ListMappingRulesResponse

  rpc :GetMappingRule,
      Google.Cloud.Clouddms.V1.GetMappingRuleRequest,
      Google.Cloud.Clouddms.V1.MappingRule

  rpc :SeedConversionWorkspace,
      Google.Cloud.Clouddms.V1.SeedConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :ImportMappingRules,
      Google.Cloud.Clouddms.V1.ImportMappingRulesRequest,
      Google.Longrunning.Operation

  rpc :ConvertConversionWorkspace,
      Google.Cloud.Clouddms.V1.ConvertConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :CommitConversionWorkspace,
      Google.Cloud.Clouddms.V1.CommitConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :RollbackConversionWorkspace,
      Google.Cloud.Clouddms.V1.RollbackConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :ApplyConversionWorkspace,
      Google.Cloud.Clouddms.V1.ApplyConversionWorkspaceRequest,
      Google.Longrunning.Operation

  rpc :DescribeDatabaseEntities,
      Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesRequest,
      Google.Cloud.Clouddms.V1.DescribeDatabaseEntitiesResponse

  rpc :SearchBackgroundJobs,
      Google.Cloud.Clouddms.V1.SearchBackgroundJobsRequest,
      Google.Cloud.Clouddms.V1.SearchBackgroundJobsResponse

  rpc :DescribeConversionWorkspaceRevisions,
      Google.Cloud.Clouddms.V1.DescribeConversionWorkspaceRevisionsRequest,
      Google.Cloud.Clouddms.V1.DescribeConversionWorkspaceRevisionsResponse

  rpc :FetchStaticIps,
      Google.Cloud.Clouddms.V1.FetchStaticIpsRequest,
      Google.Cloud.Clouddms.V1.FetchStaticIpsResponse
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Clouddms.V1.DataMigrationService.Service
end