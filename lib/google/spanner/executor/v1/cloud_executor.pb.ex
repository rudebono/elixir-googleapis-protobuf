defmodule Google.Spanner.Executor.V1.KeyRange.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CLOSED_CLOSED, 1
  field :CLOSED_OPEN, 2
  field :OPEN_CLOSED, 3
  field :OPEN_OPEN, 4
end

defmodule Google.Spanner.Executor.V1.FinishTransactionAction.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :COMMIT, 1
  field :ABANDON, 2
end

defmodule Google.Spanner.Executor.V1.SpannerAsyncActionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
  field :action, 2, type: Google.Spanner.Executor.V1.SpannerAction
end

defmodule Google.Spanner.Executor.V1.SpannerAsyncActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
  field :outcome, 2, type: Google.Spanner.Executor.V1.SpannerActionOutcome
end

defmodule Google.Spanner.Executor.V1.SpannerAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :action, 0

  field :database_path, 1, type: :string, json_name: "databasePath"

  field :spanner_options, 2,
    type: Google.Spanner.Executor.V1.SpannerOptions,
    json_name: "spannerOptions"

  field :start, 10, type: Google.Spanner.Executor.V1.StartTransactionAction, oneof: 0
  field :finish, 11, type: Google.Spanner.Executor.V1.FinishTransactionAction, oneof: 0
  field :read, 20, type: Google.Spanner.Executor.V1.ReadAction, oneof: 0
  field :query, 21, type: Google.Spanner.Executor.V1.QueryAction, oneof: 0
  field :mutation, 22, type: Google.Spanner.Executor.V1.MutationAction, oneof: 0
  field :dml, 23, type: Google.Spanner.Executor.V1.DmlAction, oneof: 0

  field :batch_dml, 24,
    type: Google.Spanner.Executor.V1.BatchDmlAction,
    json_name: "batchDml",
    oneof: 0

  field :write, 25, type: Google.Spanner.Executor.V1.WriteMutationsAction, oneof: 0

  field :partitioned_update, 27,
    type: Google.Spanner.Executor.V1.PartitionedUpdateAction,
    json_name: "partitionedUpdate",
    oneof: 0

  field :admin, 30, type: Google.Spanner.Executor.V1.AdminAction, oneof: 0

  field :start_batch_txn, 40,
    type: Google.Spanner.Executor.V1.StartBatchTransactionAction,
    json_name: "startBatchTxn",
    oneof: 0

  field :close_batch_txn, 41,
    type: Google.Spanner.Executor.V1.CloseBatchTransactionAction,
    json_name: "closeBatchTxn",
    oneof: 0

  field :generate_db_partitions_read, 42,
    type: Google.Spanner.Executor.V1.GenerateDbPartitionsForReadAction,
    json_name: "generateDbPartitionsRead",
    oneof: 0

  field :generate_db_partitions_query, 43,
    type: Google.Spanner.Executor.V1.GenerateDbPartitionsForQueryAction,
    json_name: "generateDbPartitionsQuery",
    oneof: 0

  field :execute_partition, 44,
    type: Google.Spanner.Executor.V1.ExecutePartitionAction,
    json_name: "executePartition",
    oneof: 0

  field :execute_change_stream_query, 50,
    type: Google.Spanner.Executor.V1.ExecuteChangeStreamQuery,
    json_name: "executeChangeStreamQuery",
    oneof: 0

  field :query_cancellation, 51,
    type: Google.Spanner.Executor.V1.QueryCancellationAction,
    json_name: "queryCancellation",
    oneof: 0
end

defmodule Google.Spanner.Executor.V1.ReadAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: :string
  field :index, 2, proto3_optional: true, type: :string
  field :column, 3, repeated: true, type: :string
  field :keys, 4, type: Google.Spanner.Executor.V1.KeySet
  field :limit, 5, type: :int32
end

defmodule Google.Spanner.Executor.V1.QueryAction.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Spanner.V1.Type
  field :value, 3, type: Google.Spanner.Executor.V1.Value
end

defmodule Google.Spanner.Executor.V1.QueryAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sql, 1, type: :string
  field :params, 2, repeated: true, type: Google.Spanner.Executor.V1.QueryAction.Parameter
end

defmodule Google.Spanner.Executor.V1.DmlAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update, 1, type: Google.Spanner.Executor.V1.QueryAction

  field :autocommit_if_supported, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "autocommitIfSupported"
end

defmodule Google.Spanner.Executor.V1.BatchDmlAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :updates, 1, repeated: true, type: Google.Spanner.Executor.V1.QueryAction
end

defmodule Google.Spanner.Executor.V1.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value_type, 0

  field :is_null, 1, type: :bool, json_name: "isNull", oneof: 0
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :bool_value, 3, type: :bool, json_name: "boolValue", oneof: 0
  field :double_value, 4, type: :double, json_name: "doubleValue", oneof: 0
  field :bytes_value, 5, type: :bytes, json_name: "bytesValue", oneof: 0
  field :string_value, 6, type: :string, json_name: "stringValue", oneof: 0

  field :struct_value, 7,
    type: Google.Spanner.Executor.V1.ValueList,
    json_name: "structValue",
    oneof: 0

  field :timestamp_value, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :date_days_value, 9, type: :int32, json_name: "dateDaysValue", oneof: 0
  field :is_commit_timestamp, 10, type: :bool, json_name: "isCommitTimestamp", oneof: 0

  field :array_value, 11,
    type: Google.Spanner.Executor.V1.ValueList,
    json_name: "arrayValue",
    oneof: 0

  field :array_type, 12,
    proto3_optional: true,
    type: Google.Spanner.V1.Type,
    json_name: "arrayType"
end

defmodule Google.Spanner.Executor.V1.KeyRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: Google.Spanner.Executor.V1.ValueList
  field :limit, 2, type: Google.Spanner.Executor.V1.ValueList

  field :type, 3,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.KeyRange.Type,
    enum: true
end

defmodule Google.Spanner.Executor.V1.KeySet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :point, 1, repeated: true, type: Google.Spanner.Executor.V1.ValueList
  field :range, 2, repeated: true, type: Google.Spanner.Executor.V1.KeyRange
  field :all, 3, type: :bool
end

defmodule Google.Spanner.Executor.V1.ValueList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, repeated: true, type: Google.Spanner.Executor.V1.Value
end

defmodule Google.Spanner.Executor.V1.MutationAction.InsertArgs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column, 1, repeated: true, type: :string
  field :type, 2, repeated: true, type: Google.Spanner.V1.Type
  field :values, 3, repeated: true, type: Google.Spanner.Executor.V1.ValueList
end

defmodule Google.Spanner.Executor.V1.MutationAction.UpdateArgs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column, 1, repeated: true, type: :string
  field :type, 2, repeated: true, type: Google.Spanner.V1.Type
  field :values, 3, repeated: true, type: Google.Spanner.Executor.V1.ValueList
end

defmodule Google.Spanner.Executor.V1.MutationAction.Mod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: :string
  field :insert, 2, type: Google.Spanner.Executor.V1.MutationAction.InsertArgs
  field :update, 3, type: Google.Spanner.Executor.V1.MutationAction.UpdateArgs

  field :insert_or_update, 4,
    type: Google.Spanner.Executor.V1.MutationAction.InsertArgs,
    json_name: "insertOrUpdate"

  field :replace, 5, type: Google.Spanner.Executor.V1.MutationAction.InsertArgs
  field :delete_keys, 6, type: Google.Spanner.Executor.V1.KeySet, json_name: "deleteKeys"
end

defmodule Google.Spanner.Executor.V1.MutationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mod, 1, repeated: true, type: Google.Spanner.Executor.V1.MutationAction.Mod
end

defmodule Google.Spanner.Executor.V1.WriteMutationsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mutation, 1, type: Google.Spanner.Executor.V1.MutationAction
end

defmodule Google.Spanner.Executor.V1.PartitionedUpdateAction.ExecutePartitionedUpdateOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rpc_priority, 1,
    proto3_optional: true,
    type: Google.Spanner.V1.RequestOptions.Priority,
    json_name: "rpcPriority",
    enum: true

  field :tag, 2, proto3_optional: true, type: :string
end

defmodule Google.Spanner.Executor.V1.PartitionedUpdateAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :options, 1,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.PartitionedUpdateAction.ExecutePartitionedUpdateOptions

  field :update, 2, type: Google.Spanner.Executor.V1.QueryAction
end

defmodule Google.Spanner.Executor.V1.StartTransactionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :concurrency, 1, proto3_optional: true, type: Google.Spanner.Executor.V1.Concurrency
  field :table, 2, repeated: true, type: Google.Spanner.Executor.V1.TableMetadata
  field :transaction_seed, 3, type: :string, json_name: "transactionSeed"

  field :execution_options, 4,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.TransactionExecutionOptions,
    json_name: "executionOptions"
end

defmodule Google.Spanner.Executor.V1.Concurrency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :concurrency_mode, 0

  field :staleness_seconds, 1, type: :double, json_name: "stalenessSeconds", oneof: 0
  field :min_read_timestamp_micros, 2, type: :int64, json_name: "minReadTimestampMicros", oneof: 0
  field :max_staleness_seconds, 3, type: :double, json_name: "maxStalenessSeconds", oneof: 0
  field :exact_timestamp_micros, 4, type: :int64, json_name: "exactTimestampMicros", oneof: 0
  field :strong, 5, type: :bool, oneof: 0
  field :batch, 6, type: :bool, oneof: 0
  field :snapshot_epoch_read, 7, type: :bool, json_name: "snapshotEpochRead"
  field :snapshot_epoch_root_table, 8, type: :string, json_name: "snapshotEpochRootTable"
  field :batch_read_timestamp_micros, 9, type: :int64, json_name: "batchReadTimestampMicros"
end

defmodule Google.Spanner.Executor.V1.TableMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :column, 2, repeated: true, type: Google.Spanner.Executor.V1.ColumnMetadata

  field :key_column, 3,
    repeated: true,
    type: Google.Spanner.Executor.V1.ColumnMetadata,
    json_name: "keyColumn"
end

defmodule Google.Spanner.Executor.V1.ColumnMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.Executor.V1.TransactionExecutionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :optimistic, 1, type: :bool
end

defmodule Google.Spanner.Executor.V1.FinishTransactionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1, type: Google.Spanner.Executor.V1.FinishTransactionAction.Mode, enum: true
end

defmodule Google.Spanner.Executor.V1.AdminAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :action, 0

  field :create_user_instance_config, 1,
    type: Google.Spanner.Executor.V1.CreateUserInstanceConfigAction,
    json_name: "createUserInstanceConfig",
    oneof: 0

  field :update_user_instance_config, 2,
    type: Google.Spanner.Executor.V1.UpdateUserInstanceConfigAction,
    json_name: "updateUserInstanceConfig",
    oneof: 0

  field :delete_user_instance_config, 3,
    type: Google.Spanner.Executor.V1.DeleteUserInstanceConfigAction,
    json_name: "deleteUserInstanceConfig",
    oneof: 0

  field :get_cloud_instance_config, 4,
    type: Google.Spanner.Executor.V1.GetCloudInstanceConfigAction,
    json_name: "getCloudInstanceConfig",
    oneof: 0

  field :list_instance_configs, 5,
    type: Google.Spanner.Executor.V1.ListCloudInstanceConfigsAction,
    json_name: "listInstanceConfigs",
    oneof: 0

  field :create_cloud_instance, 6,
    type: Google.Spanner.Executor.V1.CreateCloudInstanceAction,
    json_name: "createCloudInstance",
    oneof: 0

  field :update_cloud_instance, 7,
    type: Google.Spanner.Executor.V1.UpdateCloudInstanceAction,
    json_name: "updateCloudInstance",
    oneof: 0

  field :delete_cloud_instance, 8,
    type: Google.Spanner.Executor.V1.DeleteCloudInstanceAction,
    json_name: "deleteCloudInstance",
    oneof: 0

  field :list_cloud_instances, 9,
    type: Google.Spanner.Executor.V1.ListCloudInstancesAction,
    json_name: "listCloudInstances",
    oneof: 0

  field :get_cloud_instance, 10,
    type: Google.Spanner.Executor.V1.GetCloudInstanceAction,
    json_name: "getCloudInstance",
    oneof: 0

  field :create_cloud_database, 11,
    type: Google.Spanner.Executor.V1.CreateCloudDatabaseAction,
    json_name: "createCloudDatabase",
    oneof: 0

  field :update_cloud_database_ddl, 12,
    type: Google.Spanner.Executor.V1.UpdateCloudDatabaseDdlAction,
    json_name: "updateCloudDatabaseDdl",
    oneof: 0

  field :update_cloud_database, 27,
    type: Google.Spanner.Executor.V1.UpdateCloudDatabaseAction,
    json_name: "updateCloudDatabase",
    oneof: 0

  field :drop_cloud_database, 13,
    type: Google.Spanner.Executor.V1.DropCloudDatabaseAction,
    json_name: "dropCloudDatabase",
    oneof: 0

  field :list_cloud_databases, 14,
    type: Google.Spanner.Executor.V1.ListCloudDatabasesAction,
    json_name: "listCloudDatabases",
    oneof: 0

  field :list_cloud_database_operations, 15,
    type: Google.Spanner.Executor.V1.ListCloudDatabaseOperationsAction,
    json_name: "listCloudDatabaseOperations",
    oneof: 0

  field :restore_cloud_database, 16,
    type: Google.Spanner.Executor.V1.RestoreCloudDatabaseAction,
    json_name: "restoreCloudDatabase",
    oneof: 0

  field :get_cloud_database, 17,
    type: Google.Spanner.Executor.V1.GetCloudDatabaseAction,
    json_name: "getCloudDatabase",
    oneof: 0

  field :create_cloud_backup, 18,
    type: Google.Spanner.Executor.V1.CreateCloudBackupAction,
    json_name: "createCloudBackup",
    oneof: 0

  field :copy_cloud_backup, 19,
    type: Google.Spanner.Executor.V1.CopyCloudBackupAction,
    json_name: "copyCloudBackup",
    oneof: 0

  field :get_cloud_backup, 20,
    type: Google.Spanner.Executor.V1.GetCloudBackupAction,
    json_name: "getCloudBackup",
    oneof: 0

  field :update_cloud_backup, 21,
    type: Google.Spanner.Executor.V1.UpdateCloudBackupAction,
    json_name: "updateCloudBackup",
    oneof: 0

  field :delete_cloud_backup, 22,
    type: Google.Spanner.Executor.V1.DeleteCloudBackupAction,
    json_name: "deleteCloudBackup",
    oneof: 0

  field :list_cloud_backups, 23,
    type: Google.Spanner.Executor.V1.ListCloudBackupsAction,
    json_name: "listCloudBackups",
    oneof: 0

  field :list_cloud_backup_operations, 24,
    type: Google.Spanner.Executor.V1.ListCloudBackupOperationsAction,
    json_name: "listCloudBackupOperations",
    oneof: 0

  field :get_operation, 25,
    type: Google.Spanner.Executor.V1.GetOperationAction,
    json_name: "getOperation",
    oneof: 0

  field :cancel_operation, 26,
    type: Google.Spanner.Executor.V1.CancelOperationAction,
    json_name: "cancelOperation",
    oneof: 0

  field :change_quorum_cloud_database, 28,
    type: Google.Spanner.Executor.V1.ChangeQuorumCloudDatabaseAction,
    json_name: "changeQuorumCloudDatabase",
    oneof: 0
end

defmodule Google.Spanner.Executor.V1.CreateUserInstanceConfigAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_config_id, 1, type: :string, json_name: "userConfigId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :base_config_id, 3, type: :string, json_name: "baseConfigId"
  field :replicas, 4, repeated: true, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo
end

defmodule Google.Spanner.Executor.V1.UpdateUserInstanceConfigAction.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Executor.V1.UpdateUserInstanceConfigAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_config_id, 1, type: :string, json_name: "userConfigId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :display_name, 3, proto3_optional: true, type: :string, json_name: "displayName"

  field :labels, 4,
    repeated: true,
    type: Google.Spanner.Executor.V1.UpdateUserInstanceConfigAction.LabelsEntry,
    map: true
end

defmodule Google.Spanner.Executor.V1.GetCloudInstanceConfigAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_config_id, 1, type: :string, json_name: "instanceConfigId"
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Spanner.Executor.V1.DeleteUserInstanceConfigAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_config_id, 1, type: :string, json_name: "userConfigId"
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Spanner.Executor.V1.ListCloudInstanceConfigsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :page_size, 2, proto3_optional: true, type: :int32, json_name: "pageSize"
  field :page_token, 3, proto3_optional: true, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.CreateCloudInstanceAction.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Executor.V1.CreateCloudInstanceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :instance_config_id, 3, type: :string, json_name: "instanceConfigId"
  field :node_count, 4, proto3_optional: true, type: :int32, json_name: "nodeCount"
  field :processing_units, 6, proto3_optional: true, type: :int32, json_name: "processingUnits"

  field :autoscaling_config, 7,
    proto3_optional: true,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig,
    json_name: "autoscalingConfig"

  field :labels, 5,
    repeated: true,
    type: Google.Spanner.Executor.V1.CreateCloudInstanceAction.LabelsEntry,
    map: true
end

defmodule Google.Spanner.Executor.V1.UpdateCloudInstanceAction.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Executor.V1.UpdateCloudInstanceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :display_name, 3, proto3_optional: true, type: :string, json_name: "displayName"
  field :node_count, 4, proto3_optional: true, type: :int32, json_name: "nodeCount"
  field :processing_units, 5, proto3_optional: true, type: :int32, json_name: "processingUnits"

  field :autoscaling_config, 7,
    proto3_optional: true,
    type: Google.Spanner.Admin.Instance.V1.AutoscalingConfig,
    json_name: "autoscalingConfig"

  field :labels, 6,
    repeated: true,
    type: Google.Spanner.Executor.V1.UpdateCloudInstanceAction.LabelsEntry,
    map: true
end

defmodule Google.Spanner.Executor.V1.DeleteCloudInstanceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Spanner.Executor.V1.CreateCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :database_id, 3, type: :string, json_name: "databaseId"
  field :sdl_statement, 4, repeated: true, type: :string, json_name: "sdlStatement"

  field :encryption_config, 5,
    type: Google.Spanner.Admin.Database.V1.EncryptionConfig,
    json_name: "encryptionConfig"

  field :dialect, 6, proto3_optional: true, type: :string
  field :proto_descriptors, 7, proto3_optional: true, type: :bytes, json_name: "protoDescriptors"
end

defmodule Google.Spanner.Executor.V1.UpdateCloudDatabaseDdlAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :database_id, 3, type: :string, json_name: "databaseId"
  field :sdl_statement, 4, repeated: true, type: :string, json_name: "sdlStatement"
  field :operation_id, 5, type: :string, json_name: "operationId"
  field :proto_descriptors, 6, proto3_optional: true, type: :bytes, json_name: "protoDescriptors"
end

defmodule Google.Spanner.Executor.V1.UpdateCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :database_name, 3, type: :string, json_name: "databaseName"
  field :enable_drop_protection, 4, type: :bool, json_name: "enableDropProtection"
end

defmodule Google.Spanner.Executor.V1.DropCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :database_id, 3, type: :string, json_name: "databaseId"
end

defmodule Google.Spanner.Executor.V1.ChangeQuorumCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :database_uri, 1, proto3_optional: true, type: :string, json_name: "databaseUri"
  field :serving_locations, 2, repeated: true, type: :string, json_name: "servingLocations"
end

defmodule Google.Spanner.Executor.V1.ListCloudDatabasesAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.ListCloudInstancesAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :filter, 2, proto3_optional: true, type: :string
  field :page_size, 3, proto3_optional: true, type: :int32, json_name: "pageSize"
  field :page_token, 4, proto3_optional: true, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.GetCloudInstanceAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
end

defmodule Google.Spanner.Executor.V1.ListCloudDatabaseOperationsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.RestoreCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :backup_instance_id, 2, type: :string, json_name: "backupInstanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"
  field :database_instance_id, 4, type: :string, json_name: "databaseInstanceId"
  field :database_id, 5, type: :string, json_name: "databaseId"

  field :encryption_config, 7,
    type: Google.Spanner.Admin.Database.V1.EncryptionConfig,
    json_name: "encryptionConfig"
end

defmodule Google.Spanner.Executor.V1.GetCloudDatabaseAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :database_id, 3, type: :string, json_name: "databaseId"
end

defmodule Google.Spanner.Executor.V1.CreateCloudBackupAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"
  field :database_id, 4, type: :string, json_name: "databaseId"

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :version_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "versionTime"

  field :encryption_config, 7,
    type: Google.Spanner.Admin.Database.V1.EncryptionConfig,
    json_name: "encryptionConfig"
end

defmodule Google.Spanner.Executor.V1.CopyCloudBackupAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"
  field :source_backup, 4, type: :string, json_name: "sourceBackup"

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Spanner.Executor.V1.GetCloudBackupAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"
end

defmodule Google.Spanner.Executor.V1.UpdateCloudBackupAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"

  field :expire_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Spanner.Executor.V1.DeleteCloudBackupAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :backup_id, 3, type: :string, json_name: "backupId"
end

defmodule Google.Spanner.Executor.V1.ListCloudBackupsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.ListCloudBackupOperationsAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Spanner.Executor.V1.GetOperationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: :string
end

defmodule Google.Spanner.Executor.V1.QueryCancellationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :long_running_sql, 1, type: :string, json_name: "longRunningSql"
  field :cancel_query, 2, type: :string, json_name: "cancelQuery"
end

defmodule Google.Spanner.Executor.V1.CancelOperationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: :string
end

defmodule Google.Spanner.Executor.V1.StartBatchTransactionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :param, 0

  field :batch_txn_time, 1, type: Google.Protobuf.Timestamp, json_name: "batchTxnTime", oneof: 0
  field :tid, 2, type: :bytes, oneof: 0
  field :cloud_database_role, 3, type: :string, json_name: "cloudDatabaseRole"
end

defmodule Google.Spanner.Executor.V1.CloseBatchTransactionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cleanup, 1, type: :bool
end

defmodule Google.Spanner.Executor.V1.GenerateDbPartitionsForReadAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :read, 1, type: Google.Spanner.Executor.V1.ReadAction
  field :table, 2, repeated: true, type: Google.Spanner.Executor.V1.TableMetadata

  field :desired_bytes_per_partition, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "desiredBytesPerPartition"

  field :max_partition_count, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "maxPartitionCount"
end

defmodule Google.Spanner.Executor.V1.GenerateDbPartitionsForQueryAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query, 1, type: Google.Spanner.Executor.V1.QueryAction

  field :desired_bytes_per_partition, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "desiredBytesPerPartition"
end

defmodule Google.Spanner.Executor.V1.BatchPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partition, 1, type: :bytes
  field :partition_token, 2, type: :bytes, json_name: "partitionToken"
  field :table, 3, proto3_optional: true, type: :string
  field :index, 4, proto3_optional: true, type: :string
end

defmodule Google.Spanner.Executor.V1.ExecutePartitionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partition, 1, type: Google.Spanner.Executor.V1.BatchPartition
end

defmodule Google.Spanner.Executor.V1.ExecuteChangeStreamQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, proto3_optional: true, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :partition_token, 4, proto3_optional: true, type: :string, json_name: "partitionToken"
  field :read_options, 5, repeated: true, type: :string, json_name: "readOptions"

  field :heartbeat_milliseconds, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "heartbeatMilliseconds"

  field :deadline_seconds, 7, proto3_optional: true, type: :int64, json_name: "deadlineSeconds"

  field :cloud_database_role, 8,
    proto3_optional: true,
    type: :string,
    json_name: "cloudDatabaseRole"
end

defmodule Google.Spanner.Executor.V1.SpannerActionOutcome do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status, 1, proto3_optional: true, type: Google.Rpc.Status

  field :commit_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "commitTime"

  field :read_result, 3,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.ReadResult,
    json_name: "readResult"

  field :query_result, 4,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.QueryResult,
    json_name: "queryResult"

  field :transaction_restarted, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "transactionRestarted"

  field :batch_txn_id, 6, proto3_optional: true, type: :bytes, json_name: "batchTxnId"

  field :db_partition, 7,
    repeated: true,
    type: Google.Spanner.Executor.V1.BatchPartition,
    json_name: "dbPartition"

  field :admin_result, 8,
    proto3_optional: true,
    type: Google.Spanner.Executor.V1.AdminResult,
    json_name: "adminResult"

  field :dml_rows_modified, 9, repeated: true, type: :int64, json_name: "dmlRowsModified"

  field :change_stream_records, 10,
    repeated: true,
    type: Google.Spanner.Executor.V1.ChangeStreamRecord,
    json_name: "changeStreamRecords"
end

defmodule Google.Spanner.Executor.V1.AdminResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_response, 1,
    type: Google.Spanner.Executor.V1.CloudBackupResponse,
    json_name: "backupResponse"

  field :operation_response, 2,
    type: Google.Spanner.Executor.V1.OperationResponse,
    json_name: "operationResponse"

  field :database_response, 3,
    type: Google.Spanner.Executor.V1.CloudDatabaseResponse,
    json_name: "databaseResponse"

  field :instance_response, 4,
    type: Google.Spanner.Executor.V1.CloudInstanceResponse,
    json_name: "instanceResponse"

  field :instance_config_response, 5,
    type: Google.Spanner.Executor.V1.CloudInstanceConfigResponse,
    json_name: "instanceConfigResponse"
end

defmodule Google.Spanner.Executor.V1.CloudBackupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :listed_backups, 1,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.Backup,
    json_name: "listedBackups"

  field :listed_backup_operations, 2,
    repeated: true,
    type: Google.Longrunning.Operation,
    json_name: "listedBackupOperations"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :backup, 4, type: Google.Spanner.Admin.Database.V1.Backup
end

defmodule Google.Spanner.Executor.V1.OperationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :listed_operations, 1,
    repeated: true,
    type: Google.Longrunning.Operation,
    json_name: "listedOperations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :operation, 3, type: Google.Longrunning.Operation
end

defmodule Google.Spanner.Executor.V1.CloudInstanceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :listed_instances, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.Instance,
    json_name: "listedInstances"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :instance, 3, type: Google.Spanner.Admin.Instance.V1.Instance
end

defmodule Google.Spanner.Executor.V1.CloudInstanceConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :listed_instance_configs, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "listedInstanceConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :instance_config, 3,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfig"
end

defmodule Google.Spanner.Executor.V1.CloudDatabaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :listed_databases, 1,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.Database,
    json_name: "listedDatabases"

  field :listed_database_operations, 2,
    repeated: true,
    type: Google.Longrunning.Operation,
    json_name: "listedDatabaseOperations"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :database, 4, type: Google.Spanner.Admin.Database.V1.Database
end

defmodule Google.Spanner.Executor.V1.ReadResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table, 1, type: :string
  field :index, 2, proto3_optional: true, type: :string
  field :request_index, 3, proto3_optional: true, type: :int32, json_name: "requestIndex"
  field :row, 4, repeated: true, type: Google.Spanner.Executor.V1.ValueList

  field :row_type, 5,
    proto3_optional: true,
    type: Google.Spanner.V1.StructType,
    json_name: "rowType"
end

defmodule Google.Spanner.Executor.V1.QueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :row, 1, repeated: true, type: Google.Spanner.Executor.V1.ValueList

  field :row_type, 2,
    proto3_optional: true,
    type: Google.Spanner.V1.StructType,
    json_name: "rowType"
end

defmodule Google.Spanner.Executor.V1.ChangeStreamRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :record, 0

  field :data_change, 1,
    type: Google.Spanner.Executor.V1.DataChangeRecord,
    json_name: "dataChange",
    oneof: 0

  field :child_partition, 2,
    type: Google.Spanner.Executor.V1.ChildPartitionsRecord,
    json_name: "childPartition",
    oneof: 0

  field :heartbeat, 3, type: Google.Spanner.Executor.V1.HeartbeatRecord, oneof: 0
end

defmodule Google.Spanner.Executor.V1.DataChangeRecord.ColumnType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :is_primary_key, 3, type: :bool, json_name: "isPrimaryKey"
  field :ordinal_position, 4, type: :int64, json_name: "ordinalPosition"
end

defmodule Google.Spanner.Executor.V1.DataChangeRecord.Mod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :keys, 1, type: :string
  field :new_values, 2, type: :string, json_name: "newValues"
  field :old_values, 3, type: :string, json_name: "oldValues"
end

defmodule Google.Spanner.Executor.V1.DataChangeRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :commit_time, 1, type: Google.Protobuf.Timestamp, json_name: "commitTime"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"
  field :transaction_id, 3, type: :string, json_name: "transactionId"
  field :is_last_record, 4, type: :bool, json_name: "isLastRecord"
  field :table, 5, type: :string

  field :column_types, 6,
    repeated: true,
    type: Google.Spanner.Executor.V1.DataChangeRecord.ColumnType,
    json_name: "columnTypes"

  field :mods, 7, repeated: true, type: Google.Spanner.Executor.V1.DataChangeRecord.Mod
  field :mod_type, 8, type: :string, json_name: "modType"
  field :value_capture_type, 9, type: :string, json_name: "valueCaptureType"
  field :record_count, 10, type: :int64, json_name: "recordCount"
  field :partition_count, 11, type: :int64, json_name: "partitionCount"
  field :transaction_tag, 12, type: :string, json_name: "transactionTag"
  field :is_system_transaction, 13, type: :bool, json_name: "isSystemTransaction"
end

defmodule Google.Spanner.Executor.V1.ChildPartitionsRecord.ChildPartition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string

  field :parent_partition_tokens, 2,
    repeated: true,
    type: :string,
    json_name: "parentPartitionTokens"
end

defmodule Google.Spanner.Executor.V1.ChildPartitionsRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"

  field :child_partitions, 3,
    repeated: true,
    type: Google.Spanner.Executor.V1.ChildPartitionsRecord.ChildPartition,
    json_name: "childPartitions"
end

defmodule Google.Spanner.Executor.V1.HeartbeatRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :heartbeat_time, 1, type: Google.Protobuf.Timestamp, json_name: "heartbeatTime"
end

defmodule Google.Spanner.Executor.V1.SpannerOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_pool_options, 1,
    type: Google.Spanner.Executor.V1.SessionPoolOptions,
    json_name: "sessionPoolOptions"
end

defmodule Google.Spanner.Executor.V1.SessionPoolOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :use_multiplexed, 1, type: :bool, json_name: "useMultiplexed"
end

defmodule Google.Spanner.Executor.V1.SpannerExecutorProxy.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.spanner.executor.v1.SpannerExecutorProxy",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ExecuteActionAsync,
      stream(Google.Spanner.Executor.V1.SpannerAsyncActionRequest),
      stream(Google.Spanner.Executor.V1.SpannerAsyncActionResponse)
end

defmodule Google.Spanner.Executor.V1.SpannerExecutorProxy.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Spanner.Executor.V1.SpannerExecutorProxy.Service
end
