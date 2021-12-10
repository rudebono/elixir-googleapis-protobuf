defmodule Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :WRITE_DISPOSITION_UNSPECIFIED
          | :WRITE_EMPTY
          | :WRITE_TRUNCATE
          | :WRITE_APPEND

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_EMPTY, 1
  field :WRITE_TRUNCATE, 2
  field :WRITE_APPEND, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :OPERATION_TYPE_UNSPECIFIED | :COPY | :SNAPSHOT | :RESTORE

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :COPY, 1
  field :SNAPSHOT, 2
  field :RESTORE, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CREATE_DISPOSITION_UNSPECIFIED | :CREATE_NEVER | :CREATE_IF_NEEDED

  field :CREATE_DISPOSITION_UNSPECIFIED, 0
  field :CREATE_NEVER, 1
  field :CREATE_IF_NEEDED, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :JOB_STATE_UNSPECIFIED | :PENDING | :RUNNING | :DONE

  field :JOB_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.QueryStatementType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :QUERY_STATEMENT_TYPE_UNSPECIFIED
          | :SELECT
          | :ASSERT
          | :INSERT
          | :UPDATE
          | :DELETE
          | :MERGE
          | :CREATE_TABLE
          | :CREATE_TABLE_AS_SELECT
          | :CREATE_VIEW
          | :CREATE_MODEL
          | :CREATE_MATERIALIZED_VIEW
          | :CREATE_FUNCTION
          | :CREATE_PROCEDURE
          | :CREATE_SCHEMA
          | :DROP_TABLE
          | :DROP_EXTERNAL_TABLE
          | :DROP_VIEW
          | :DROP_MODEL
          | :DROP_MATERIALIZED_VIEW
          | :DROP_FUNCTION
          | :DROP_PROCEDURE
          | :DROP_SCHEMA
          | :ALTER_TABLE
          | :ALTER_VIEW
          | :ALTER_MATERIALIZED_VIEW
          | :ALTER_SCHEMA
          | :SCRIPT
          | :TRUNCATE_TABLE
          | :CREATE_EXTERNAL_TABLE
          | :EXPORT_DATA
          | :CALL

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
  field :CREATE_PROCEDURE, 20
  field :CREATE_SCHEMA, 53
  field :DROP_TABLE, 10
  field :DROP_EXTERNAL_TABLE, 33
  field :DROP_VIEW, 11
  field :DROP_MODEL, 12
  field :DROP_MATERIALIZED_VIEW, 15
  field :DROP_FUNCTION, 16
  field :DROP_PROCEDURE, 21
  field :DROP_SCHEMA, 54
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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :JOB_INSERT_REQUEST | :QUERY_REQUEST

  field :REASON_UNSPECIFIED, 0
  field :JOB_INSERT_REQUEST, 1
  field :QUERY_REQUEST, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :CREATE | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :CREATE, 1
  field :QUERY, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :UPDATE | :SET_IAM_POLICY | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :UPDATE, 1
  field :SET_IAM_POLICY, 2
  field :QUERY, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :DELETE | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :DELETE, 1
  field :QUERY, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :JOB | :QUERY | :TABLE_INSERT_REQUEST

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
  field :QUERY, 2
  field :TABLE_INSERT_REQUEST, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :QUERY | :ROUTINE_INSERT_REQUEST

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_INSERT_REQUEST, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REASON_UNSPECIFIED
          | :JOB
          | :TABLEDATA_LIST_REQUEST
          | :GET_QUERY_RESULTS_REQUEST
          | :QUERY_REQUEST
          | :CREATE_READ_SESSION
          | :MATERIALIZED_VIEW_REFRESH

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :TABLE_UPDATE_REQUEST | :JOB | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :TABLE_UPDATE_REQUEST, 1
  field :JOB, 2
  field :QUERY, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :MODEL_PATCH_REQUEST | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :MODEL_PATCH_REQUEST, 1
  field :QUERY, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :QUERY | :ROUTINE_UPDATE_REQUEST

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_UPDATE_REQUEST, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :REASON_UNSPECIFIED | :JOB | :QUERY | :MATERIALIZED_VIEW_REFRESH | :WRITE_API

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
  field :QUERY, 2
  field :MATERIALIZED_VIEW_REFRESH, 3
  field :WRITE_API, 4
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :JOB

  field :REASON_UNSPECIFIED, 0
  field :JOB, 1
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :TABLE_DELETE_REQUEST | :EXPIRED | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :TABLE_DELETE_REQUEST, 2
  field :EXPIRED, 3
  field :QUERY, 4
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :MODEL_DELETE_REQUEST | :EXPIRED | :QUERY

  field :REASON_UNSPECIFIED, 0
  field :MODEL_DELETE_REQUEST, 1
  field :EXPIRED, 2
  field :QUERY, 3
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :REASON_UNSPECIFIED | :QUERY | :ROUTINE_DELETE_REQUEST

  field :REASON_UNSPECIFIED, 0
  field :QUERY, 1
  field :ROUTINE_DELETE_REQUEST, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :QUERY | :COPY | :EXPORT | :IMPORT

  field :TYPE_UNSPECIFIED, 0
  field :QUERY, 1
  field :COPY, 2
  field :EXPORT, 3
  field :IMPORT, 4
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.Priority do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PRIORITY_UNSPECIFIED | :QUERY_INTERACTIVE | :QUERY_BATCH

  field :PRIORITY_UNSPECIFIED, 0
  field :QUERY_INTERACTIVE, 1
  field :QUERY_BATCH, 2
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Audit.BigQueryAuditMetadata.Job.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion.Reason.t()
        }

  defstruct job: nil,
            reason: :REASON_UNSPECIFIED

  field :job, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Job
  field :reason, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion.Reason, enum: true
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          before: Google.Cloud.Audit.BigQueryAuditMetadata.JobState.t(),
          after: Google.Cloud.Audit.BigQueryAuditMetadata.JobState.t(),
          job: Google.Cloud.Audit.BigQueryAuditMetadata.Job.t() | nil
        }

  defstruct before: :JOB_STATE_UNSPECIFIED,
            after: :JOB_STATE_UNSPECIFIED,
            job: nil

  field :before, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState, enum: true
  field :after, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState, enum: true
  field :job, 3, type: Google.Cloud.Audit.BigQueryAuditMetadata.Job
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct dataset: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason.t(),
          job_name: String.t()
        }

  defstruct dataset: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Cloud.Audit.BigQueryAuditMetadata.Table.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct table: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Audit.BigQueryAuditMetadata.Model.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct model: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine: Google.Cloud.Audit.BigQueryAuditMetadata.Routine.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct routine: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: [String.t()],
          fields_truncated: boolean,
          policy_tags: [String.t()],
          policy_tags_truncated: boolean,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.Reason.t(),
          job_name: String.t(),
          session_name: String.t()
        }

  defstruct fields: [],
            fields_truncated: false,
            policy_tags: [],
            policy_tags_truncated: false,
            reason: :REASON_UNSPECIFIED,
            job_name: "",
            session_name: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Cloud.Audit.BigQueryAuditMetadata.Table.t() | nil,
          truncated: boolean,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.Reason.t(),
          job_name: String.t()
        }

  defstruct table: nil,
            truncated: false,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table
  field :truncated, 4, type: :bool
  field :reason, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.Reason, enum: true
  field :job_name, 6, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Audit.BigQueryAuditMetadata.Model.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason.t(),
          job_name: String.t()
        }

  defstruct model: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason,
    enum: true

  field :job_name, 3, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine: Google.Cloud.Audit.BigQueryAuditMetadata.Routine.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason.t(),
          job_name: String.t()
        }

  defstruct routine: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deleted_rows_count: integer,
          inserted_rows_count: integer,
          truncated: boolean,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.Reason.t(),
          job_name: String.t(),
          stream_name: String.t()
        }

  defstruct deleted_rows_count: 0,
            inserted_rows_count: 0,
            truncated: false,
            reason: :REASON_UNSPECIFIED,
            job_name: "",
            stream_name: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason.t(),
          job_name: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason.t(),
          job_name: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          acl: Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl.t() | nil,
          default_table_expire_duration: Google.Protobuf.Duration.t() | nil,
          dataset_info: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.t() | nil,
          default_encryption: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil
        }

  defstruct dataset_name: "",
            create_time: nil,
            update_time: nil,
            acl: nil,
            default_table_expire_duration: nil,
            dataset_info: nil,
            default_encryption: nil

  field :dataset_name, 1, type: :string, json_name: "datasetName"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :acl, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl

  field :default_table_expire_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "defaultTableExpireDuration"

  field :dataset_info, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "datasetInfo"

  field :default_encryption, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo,
    json_name: "defaultEncryption"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_name: String.t(),
          model_info: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil
        }

  defstruct model_name: "",
            model_info: nil,
            expire_time: nil,
            create_time: nil,
            update_time: nil,
            encryption: nil

  field :model_name, 1, type: :string, json_name: "modelName"

  field :model_info, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "modelInfo"

  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :encryption, 8, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine: Google.Cloud.Audit.BigQueryAuditMetadata.Routine.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct routine: nil,
            reason: :REASON_UNSPECIFIED,
            job_name: ""

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason,
    enum: true

  field :job_name, 4, type: :string, json_name: "jobName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: String.t(),
          job_config: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.t() | nil,
          job_status: Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus.t() | nil,
          job_stats: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.t() | nil
        }

  defstruct job_name: "",
            job_config: nil,
            job_status: nil,
            job_stats: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          query_truncated: boolean,
          destination_table: String.t(),
          create_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition.t(),
          write_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition.t(),
          default_dataset: String.t(),
          table_definitions: [Google.Cloud.Audit.BigQueryAuditMetadata.TableDefinition.t()],
          priority: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.Priority.t(),
          destination_table_encryption:
            Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil,
          statement_type: Google.Cloud.Audit.BigQueryAuditMetadata.QueryStatementType.t()
        }

  defstruct query: "",
            query_truncated: false,
            destination_table: "",
            create_disposition: :CREATE_DISPOSITION_UNSPECIFIED,
            write_disposition: :WRITE_DISPOSITION_UNSPECIFIED,
            default_dataset: "",
            table_definitions: [],
            priority: :PRIORITY_UNSPECIFIED,
            destination_table_encryption: nil,
            statement_type: :QUERY_STATEMENT_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_uris: [String.t()],
          source_uris_truncated: boolean,
          schema_json: String.t(),
          schema_json_truncated: boolean,
          destination_table: String.t(),
          create_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition.t(),
          write_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition.t(),
          destination_table_encryption:
            Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil
        }

  defstruct source_uris: [],
            source_uris_truncated: false,
            schema_json: "",
            schema_json_truncated: false,
            destination_table: "",
            create_disposition: :CREATE_DISPOSITION_UNSPECIFIED,
            write_disposition: :WRITE_DISPOSITION_UNSPECIFIED,
            destination_table_encryption: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:source_table, String.t()} | {:source_model, String.t()},
          destination_uris: [String.t()],
          destination_uris_truncated: boolean
        }

  defstruct source: nil,
            destination_uris: [],
            destination_uris_truncated: false

  oneof :source, 0

  field :destination_uris, 1, repeated: true, type: :string, json_name: "destinationUris"
  field :destination_uris_truncated, 3, type: :bool, json_name: "destinationUrisTruncated"
  field :source_table, 2, type: :string, json_name: "sourceTable", oneof: 0
  field :source_model, 4, type: :string, json_name: "sourceModel", oneof: 0
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.TableCopy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_tables: [String.t()],
          source_tables_truncated: boolean,
          destination_table: String.t(),
          create_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition.t(),
          write_disposition: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition.t(),
          destination_table_encryption:
            Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil,
          operation_type: Google.Cloud.Audit.BigQueryAuditMetadata.OperationType.t(),
          destination_expiration_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct source_tables: [],
            source_tables_truncated: false,
            destination_table: "",
            create_disposition: :CREATE_DISPOSITION_UNSPECIFIED,
            write_disposition: :WRITE_DISPOSITION_UNSPECIFIED,
            destination_table_encryption: nil,
            operation_type: :OPERATION_TYPE_UNSPECIFIED,
            destination_expiration_time: nil

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
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config:
            {:query_config, Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.t() | nil}
            | {:load_config, Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Load.t() | nil}
            | {:extract_config,
               Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Extract.t() | nil}
            | {:table_copy_config,
               Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.TableCopy.t() | nil},
          type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct config: nil,
            type: :TYPE_UNSPECIFIED,
            labels: %{}

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          source_uris: [String.t()]
        }

  defstruct name: "",
            source_uris: []

  field :name, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_state: Google.Cloud.Audit.BigQueryAuditMetadata.JobState.t(),
          error_result: Google.Rpc.Status.t() | nil,
          errors: [Google.Rpc.Status.t()]
        }

  defstruct job_state: :JOB_STATE_UNSPECIFIED,
            error_result: nil,
            errors: []

  field :job_state, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState,
    json_name: "jobState",
    enum: true

  field :error_result, 2, type: Google.Rpc.Status, json_name: "errorResult"
  field :errors, 3, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Query do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_processed_bytes: integer,
          total_billed_bytes: integer,
          billing_tier: integer,
          referenced_tables: [String.t()],
          referenced_views: [String.t()],
          referenced_routines: [String.t()],
          output_row_count: integer,
          cache_hit: boolean
        }

  defstruct total_processed_bytes: 0,
            total_billed_bytes: 0,
            billing_tier: 0,
            referenced_tables: [],
            referenced_views: [],
            referenced_routines: [],
            output_row_count: 0,
            cache_hit: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_output_bytes: integer
        }

  defstruct total_output_bytes: 0

  field :total_output_bytes, 1, type: :int64, json_name: "totalOutputBytes"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_input_bytes: integer
        }

  defstruct total_input_bytes: 0

  field :total_input_bytes, 1, type: :int64, json_name: "totalInputBytes"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_ms: integer
        }

  defstruct name: "",
            slot_ms: 0

  field :name, 1, type: :string
  field :slot_ms, 2, type: :int64, json_name: "slotMs"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          extended:
            {:query_stats, Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Query.t() | nil}
            | {:load_stats, Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Load.t() | nil}
            | {:extract_stats,
               Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract.t() | nil},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          total_slot_ms: integer,
          reservation_usage: [
            Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage.t()
          ],
          parent_job_name: String.t()
        }

  defstruct extended: nil,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            total_slot_ms: 0,
            reservation_usage: [],
            parent_job_name: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          schema_json: String.t(),
          schema_json_truncated: boolean,
          view: Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          truncate_time: Google.Protobuf.Timestamp.t() | nil,
          encryption: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo.t() | nil,
          table_info: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.t() | nil
        }

  defstruct table_name: "",
            schema_json: "",
            schema_json_truncated: false,
            view: nil,
            expire_time: nil,
            create_time: nil,
            update_time: nil,
            truncate_time: nil,
            encryption: nil,
            table_info: nil

  field :table_name, 1, type: :string, json_name: "tableName"
  field :schema_json, 3, type: :string, json_name: "schemaJson"
  field :schema_json_truncated, 11, type: :bool, json_name: "schemaJsonTruncated"
  field :view, 4, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition
  field :expire_time, 5, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :truncate_time, 8, type: Google.Protobuf.Timestamp, json_name: "truncateTime"
  field :encryption, 9, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo

  field :table_info, 10,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo,
    json_name: "tableInfo"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Routine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct routine_name: "",
            create_time: nil,
            update_time: nil

  field :routine_name, 1, type: :string, json_name: "routineName"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.LabelsEntry do
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
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          friendly_name: String.t(),
          description: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct friendly_name: "",
            description: "",
            labels: %{}

  field :friendly_name, 1, type: :string, json_name: "friendlyName"
  field :description, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          query_truncated: boolean
        }

  defstruct query: "",
            query_truncated: false

  field :query, 1, type: :string
  field :query_truncated, 2, type: :bool, json_name: "queryTruncated"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Iam.V1.Policy.t() | nil,
          authorized_views: [String.t()]
        }

  defstruct policy: nil,
            authorized_views: []

  field :policy, 1, type: Google.Iam.V1.Policy
  field :authorized_views, 2, repeated: true, type: :string, json_name: "authorizedViews"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct kms_key_name: ""

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"
end
defmodule Google.Cloud.Audit.BigQueryAuditMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event:
            {:job_insertion, Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion.t() | nil}
            | {:job_change, Google.Cloud.Audit.BigQueryAuditMetadata.JobChange.t() | nil}
            | {:dataset_creation,
               Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.t() | nil}
            | {:dataset_change, Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.t() | nil}
            | {:dataset_deletion,
               Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.t() | nil}
            | {:table_creation, Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.t() | nil}
            | {:table_change, Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.t() | nil}
            | {:table_deletion, Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.t() | nil}
            | {:table_data_read, Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.t() | nil}
            | {:table_data_change,
               Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.t() | nil}
            | {:model_deletion, Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.t() | nil}
            | {:model_creation, Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.t() | nil}
            | {:model_metadata_change,
               Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.t() | nil}
            | {:model_data_change,
               Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.t() | nil}
            | {:model_data_read, Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.t() | nil}
            | {:routine_creation,
               Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.t() | nil}
            | {:routine_change, Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.t() | nil}
            | {:routine_deletion,
               Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.t() | nil}
        }

  defstruct event: nil

  oneof :event, 0

  field :job_insertion, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion,
    json_name: "jobInsertion",
    oneof: 0

  field :job_change, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobChange,
    json_name: "jobChange",
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
end
