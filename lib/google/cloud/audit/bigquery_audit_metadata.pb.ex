defmodule Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CREATE_DISPOSITION_UNSPECIFIED, 0
  field :CREATE_NEVER, 1
  field :CREATE_IF_NEEDED, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_EMPTY, 1
  field :WRITE_TRUNCATE, 2
  field :WRITE_APPEND, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.OperationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :COPY, 1
  field :SNAPSHOT, 2
  field :RESTORE, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :JOB_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.QueryStatementType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :QUERY_STATEMENT_TYPE_UNSPECIFIED, 0
  field :SELECT, 1
  field :ASSERT, 23
  field :INSERT, 2
  field :UPDATE, 3
  field :DELETE, 4
  field :MERGE, 5
  field :CREATE_TABLE, 6
  field :CREATE_TABLE_AS_SELECT, 7
  field :CREATE_VIEW, 8
  field :CREATE_MODEL, 9
  field :CREATE_MATERIALIZED_VIEW, 13
  field :CREATE_FUNCTION, 14
  field :CREATE_TABLE_FUNCTION, 56
  field :CREATE_PROCEDURE, 20
  field :CREATE_ROW_ACCESS_POLICY, 24
  field :CREATE_SCHEMA, 53
  field :CREATE_SNAPSHOT_TABLE, 59
  field :DROP_TABLE, 10
  field :DROP_EXTERNAL_TABLE, 33
  field :DROP_VIEW, 11
  field :DROP_MODEL, 12
  field :DROP_MATERIALIZED_VIEW, 15
  field :DROP_FUNCTION, 16
  field :DROP_PROCEDURE, 21
  field :DROP_SCHEMA, 54
  field :DROP_ROW_ACCESS_POLICY, 25
  field :DROP_SNAPSHOT_TABLE, 62
  field :ALTER_TABLE, 17
  field :ALTER_VIEW, 18
  field :ALTER_MATERIALIZED_VIEW, 22
  field :ALTER_SCHEMA, 55
  field :SCRIPT, 19
  field :TRUNCATE_TABLE, 26
  field :CREATE_EXTERNAL_TABLE, 27
  field :EXPORT_DATA, 28
  field :CALL, 29
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB_INSERT_REQUEST, 1
  field :QUERY_REQUEST, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB_DELETE_REQUEST, 1
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :CREATE, 1
  field :QUERY, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :UPDATE, 1
  field :SET_IAM_POLICY, 2
  field :QUERY, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :DELETE, 1
  field :QUERY, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
  field :QUERY, 2
  field :TABLE_INSERT_REQUEST, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_INSERT_REQUEST, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
  field :TABLEDATA_LIST_REQUEST, 2
  field :GET_QUERY_RESULTS_REQUEST, 3
  field :QUERY_REQUEST, 4
  field :CREATE_READ_SESSION, 5
  field :MATERIALIZED_VIEW_REFRESH, 6
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :TABLE_UPDATE_REQUEST, 1
  field :JOB, 2
  field :QUERY, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :MODEL_PATCH_REQUEST, 1
  field :QUERY, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_UPDATE_REQUEST, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
  field :QUERY, 2
  field :MATERIALIZED_VIEW_REFRESH, 3
  field :WRITE_API, 4
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :TABLE_DELETE_REQUEST, 2
  field :EXPIRED, 3
  field :QUERY, 4
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :MODEL_DELETE_REQUEST, 1
  field :EXPIRED, 2
  field :QUERY, 3
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_DELETE_REQUEST, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.UnlinkDataset.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :UNLINK_API, 1
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :QUERY, 1
  field :COPY, 2
  field :EXPORT, 3
  field :IMPORT, 4
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.Priority do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :QUERY_INTERACTIVE, 1
  field :QUERY_BATCH, 2
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Job
  field :reason, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion.Reason, enum: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :before, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState, enum: true
  field :after, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState, enum: true
  field :job, 3, type: Google.Cloud.Audit.BigQueryAuditMetadata.Job
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName"
  field :reason, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobDeletion.Reason, enum: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fields, 2, repeated: true, type: :string
  field :fields_truncated, 8, type: :bool, json_name: "fieldsTruncated"
  field :policy_tags, 9, repeated: true, type: :string, json_name: "policyTags"
  field :policy_tags_truncated, 10, type: :bool, json_name: "policyTagsTruncated"

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
  field :session_name, 5, type: :string, json_name: "sessionName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table
  field :truncated, 4, type: :bool
  field :reason, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.Reason, enum: true
  field :job_name, 6, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deleted_rows_count, 1, type: :int64, json_name: "deletedRowsCount"
  field :inserted_rows_count, 2, type: :int64, json_name: "insertedRowsCount"
  field :truncated, 3, type: :bool

  field :reason, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.Reason,
    enum: true

  field :job_name, 5, type: :string, json_name: "jobName"
  field :stream_name, 6, type: :string, json_name: "streamName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyCreation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_access_policy, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicy,
    json_name: "rowAccessPolicy"

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_access_policy, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicy,
    json_name: "rowAccessPolicy"

  field :job_name, 2, type: :string, json_name: "jobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyDeletion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_access_policies, 1,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicy,
    json_name: "rowAccessPolicies"

  field :job_name, 2, type: :string, json_name: "jobName"
  field :all_row_access_policies_dropped, 3, type: :bool, json_name: "allRowAccessPoliciesDropped"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.UnlinkDataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :linked_dataset, 1, type: :string, json_name: "linkedDataset"
  field :source_dataset, 2, type: :string, json_name: "sourceDataset"

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.UnlinkDataset.Reason,
    enum: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Job do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName"

  field :job_config, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig,
    json_name: "jobConfig"

  field :job_status, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus,
    json_name: "jobStatus"

  field :job_stats, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats,
    json_name: "jobStats"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query, 1, type: :string
  field :query_truncated, 10, type: :bool, json_name: "queryTruncated"
  field :destination_table, 2, type: :string, json_name: "destinationTable"

  field :create_disposition, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    json_name: "createDisposition",
    enum: true

  field :write_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    json_name: "writeDisposition",
    enum: true

  field :default_dataset, 5, type: :string, json_name: "defaultDataset"

  field :table_definitions, 6,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDefinition,
    json_name: "tableDefinitions"

  field :priority, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.Priority,
    enum: true

  field :destination_table_encryption, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo,
    json_name: "destinationTableEncryption"

  field :statement_type, 9,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.QueryStatementType,
    json_name: "statementType",
    enum: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Load do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_uris, 1, repeated: true, type: :string, json_name: "sourceUris"
  field :source_uris_truncated, 7, type: :bool, json_name: "sourceUrisTruncated"
  field :schema_json, 2, type: :string, json_name: "schemaJson"
  field :schema_json_truncated, 8, type: :bool, json_name: "schemaJsonTruncated"
  field :destination_table, 3, type: :string, json_name: "destinationTable"

  field :create_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    json_name: "createDisposition",
    enum: true

  field :write_disposition, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    json_name: "writeDisposition",
    enum: true

  field :destination_table_encryption, 6,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo,
    json_name: "destinationTableEncryption"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Extract do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :destination_uris, 1, repeated: true, type: :string, json_name: "destinationUris"
  field :destination_uris_truncated, 3, type: :bool, json_name: "destinationUrisTruncated"
  field :source_table, 2, type: :string, json_name: "sourceTable", oneof: 0
  field :source_model, 4, type: :string, json_name: "sourceModel", oneof: 0
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.TableCopy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_tables, 1, repeated: true, type: :string, json_name: "sourceTables"
  field :source_tables_truncated, 6, type: :bool, json_name: "sourceTablesTruncated"
  field :destination_table, 2, type: :string, json_name: "destinationTable"

  field :create_disposition, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    json_name: "createDisposition",
    enum: true

  field :write_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    json_name: "writeDisposition",
    enum: true

  field :destination_table_encryption, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo,
    json_name: "destinationTableEncryption"

  field :operation_type, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.OperationType,
    json_name: "operationType",
    enum: true

  field :destination_expiration_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "destinationExpirationTime"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :config, 0

  field :type, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type, enum: true

  field :query_config, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query,
    json_name: "queryConfig",
    oneof: 0

  field :load_config, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Load,
    json_name: "loadConfig",
    oneof: 0

  field :extract_config, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Extract,
    json_name: "extractConfig",
    oneof: 0

  field :table_copy_config, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.TableCopy,
    json_name: "tableCopyConfig",
    oneof: 0

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDefinition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :job_state, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState,
    json_name: "jobState",
    enum: true

  field :error_result, 2, type: Google.Rpc.Status, json_name: "errorResult"
  field :errors, 3, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_processed_bytes, 1, type: :int64, json_name: "totalProcessedBytes"
  field :total_billed_bytes, 2, type: :int64, json_name: "totalBilledBytes"
  field :billing_tier, 3, type: :int32, json_name: "billingTier"
  field :referenced_tables, 6, repeated: true, type: :string, json_name: "referencedTables"
  field :referenced_views, 7, repeated: true, type: :string, json_name: "referencedViews"
  field :referenced_routines, 10, repeated: true, type: :string, json_name: "referencedRoutines"
  field :output_row_count, 8, type: :int64, json_name: "outputRowCount"
  field :cache_hit, 9, type: :bool, json_name: "cacheHit"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Load do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_output_bytes, 1, type: :int64, json_name: "totalOutputBytes"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_input_bytes, 1, type: :int64, json_name: "totalInputBytes"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :slot_ms, 2, type: :int64, json_name: "slotMs"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :extended, 0

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :query_stats, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Query,
    json_name: "queryStats",
    oneof: 0

  field :load_stats, 9,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Load,
    json_name: "loadStats",
    oneof: 0

  field :extract_stats, 13,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract,
    json_name: "extractStats",
    oneof: 0

  field :total_slot_ms, 10, type: :int64, json_name: "totalSlotMs"

  field :reservation_usage, 11,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage,
    json_name: "reservationUsage"

  field :parent_job_name, 12, type: :string, json_name: "parentJobName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Table do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :table_name, 1, type: :string, json_name: "tableName"

  field :table_info, 10,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "tableInfo"

  field :schema_json, 3, type: :string, json_name: "schemaJson"
  field :schema_json_truncated, 11, type: :bool, json_name: "schemaJsonTruncated"
  field :view, 4, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :truncate_time, 8, type: Google.Protobuf.Timestamp, json_name: "truncateTime"
  field :encryption, 9, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Model do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName"

  field :model_info, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "modelInfo"

  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :encryption, 8, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Routine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :routine_name, 1, type: :string, json_name: "routineName"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :friendly_name, 1, type: :string, json_name: "friendlyName"
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query, 1, type: :string
  field :query_truncated, 2, type: :bool, json_name: "queryTruncated"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Dataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset_name, 1, type: :string, json_name: "datasetName"

  field :dataset_info, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "datasetInfo"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :acl, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl

  field :default_table_expire_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "defaultTableExpireDuration"

  field :default_encryption, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo,
    json_name: "defaultEncryption"

  field :default_collation, 9, type: :string, json_name: "defaultCollation"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy, 1, type: Google.Iam.V1.Policy
  field :authorized_views, 2, repeated: true, type: :string, json_name: "authorizedViews"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :row_access_policy_name, 1, type: :string, json_name: "rowAccessPolicyName"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.FirstPartyAppMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :metadata, 0

  field :sheets_metadata, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.SheetsMetadata,
    json_name: "sheetsMetadata",
    oneof: 0
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.SheetsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :doc_id, 1, type: :string, json_name: "docId"
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :event, 0

  field :job_insertion, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion,
    json_name: "jobInsertion",
    oneof: 0

  field :job_change, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobChange,
    json_name: "jobChange",
    oneof: 0

  field :job_deletion, 23,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobDeletion,
    json_name: "jobDeletion",
    oneof: 0

  field :dataset_creation, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation,
    json_name: "datasetCreation",
    oneof: 0

  field :dataset_change, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange,
    json_name: "datasetChange",
    oneof: 0

  field :dataset_deletion, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion,
    json_name: "datasetDeletion",
    oneof: 0

  field :table_creation, 6,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation,
    json_name: "tableCreation",
    oneof: 0

  field :table_change, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange,
    json_name: "tableChange",
    oneof: 0

  field :table_deletion, 9,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion,
    json_name: "tableDeletion",
    oneof: 0

  field :table_data_read, 10,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead,
    json_name: "tableDataRead",
    oneof: 0

  field :table_data_change, 11,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange,
    json_name: "tableDataChange",
    oneof: 0

  field :model_deletion, 12,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion,
    json_name: "modelDeletion",
    oneof: 0

  field :model_creation, 13,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation,
    json_name: "modelCreation",
    oneof: 0

  field :model_metadata_change, 14,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange,
    json_name: "modelMetadataChange",
    oneof: 0

  field :model_data_change, 15,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange,
    json_name: "modelDataChange",
    oneof: 0

  field :model_data_read, 19,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead,
    json_name: "modelDataRead",
    oneof: 0

  field :routine_creation, 16,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation,
    json_name: "routineCreation",
    oneof: 0

  field :routine_change, 17,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange,
    json_name: "routineChange",
    oneof: 0

  field :routine_deletion, 18,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion,
    json_name: "routineDeletion",
    oneof: 0

  field :row_access_policy_creation, 20,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyCreation,
    json_name: "rowAccessPolicyCreation",
    oneof: 0

  field :row_access_policy_change, 21,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyChange,
    json_name: "rowAccessPolicyChange",
    oneof: 0

  field :row_access_policy_deletion, 22,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RowAccessPolicyDeletion,
    json_name: "rowAccessPolicyDeletion",
    oneof: 0

  field :unlink_dataset, 25,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.UnlinkDataset,
    json_name: "unlinkDataset",
    oneof: 0

  field :first_party_app_metadata, 24,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.FirstPartyAppMetadata,
    json_name: "firstPartyAppMetadata"
end