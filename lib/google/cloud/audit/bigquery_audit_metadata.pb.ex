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

  defstruct [:job, :reason]

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

  defstruct [:before, :after, :job]

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

  defstruct [:dataset, :reason, :job_name]

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation.Reason,
    enum: true

  field :job_name, 3, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason.t(),
          job_name: String.t()
        }

  defstruct [:dataset, :reason, :job_name]

  field :dataset, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Dataset

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange.Reason,
    enum: true

  field :job_name, 3, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct [:reason, :job_name]

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table: Google.Cloud.Audit.BigQueryAuditMetadata.Table.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct [:table, :reason, :job_name]

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation.Reason,
    enum: true

  field :job_name, 4, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Audit.BigQueryAuditMetadata.Model.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct [:model, :reason, :job_name]

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation.Reason,
    enum: true

  field :job_name, 4, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine: Google.Cloud.Audit.BigQueryAuditMetadata.Routine.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason.t(),
          job_name: String.t()
        }

  defstruct [:routine, :reason, :job_name]

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation.Reason,
    enum: true

  field :job_name, 4, type: :string
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

  defstruct [
    :fields,
    :fields_truncated,
    :policy_tags,
    :policy_tags_truncated,
    :reason,
    :job_name,
    :session_name
  ]

  field :fields, 2, repeated: true, type: :string
  field :fields_truncated, 8, type: :bool
  field :policy_tags, 9, repeated: true, type: :string
  field :policy_tags_truncated, 10, type: :bool

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead.Reason,
    enum: true

  field :job_name, 4, type: :string
  field :session_name, 5, type: :string
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

  defstruct [:table, :truncated, :reason, :job_name]

  field :table, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Table
  field :truncated, 4, type: :bool
  field :reason, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange.Reason, enum: true
  field :job_name, 6, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Audit.BigQueryAuditMetadata.Model.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason.t(),
          job_name: String.t()
        }

  defstruct [:model, :reason, :job_name]

  field :model, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Model

  field :reason, 2,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange.Reason,
    enum: true

  field :job_name, 3, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine: Google.Cloud.Audit.BigQueryAuditMetadata.Routine.t() | nil,
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason.t(),
          job_name: String.t()
        }

  defstruct [:routine, :reason, :job_name]

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange.Reason,
    enum: true

  field :job_name, 4, type: :string
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

  defstruct [
    :deleted_rows_count,
    :inserted_rows_count,
    :truncated,
    :reason,
    :job_name,
    :stream_name
  ]

  field :deleted_rows_count, 1, type: :int64
  field :inserted_rows_count, 2, type: :int64
  field :truncated, 3, type: :bool

  field :reason, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange.Reason,
    enum: true

  field :job_name, 5, type: :string
  field :stream_name, 6, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason.t(),
          job_name: String.t()
        }

  defstruct [:reason, :job_name]

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange.Reason,
    enum: true

  field :job_name, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason.t(),
          job_name: String.t()
        }

  defstruct [:reason, :job_name]

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead.Reason,
    enum: true

  field :job_name, 2, type: :string
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

  defstruct [
    :dataset_name,
    :create_time,
    :update_time,
    :acl,
    :default_table_expire_duration,
    :dataset_info,
    :default_encryption
  ]

  field :dataset_name, 1, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :acl, 5, type: Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl
  field :default_table_expire_duration, 6, type: Google.Protobuf.Duration
  field :dataset_info, 7, type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo
  field :default_encryption, 8, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct [:reason, :job_name]

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason.t(),
          job_name: String.t()
        }

  defstruct [:reason, :job_name]

  field :reason, 1,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion.Reason,
    enum: true

  field :job_name, 2, type: :string
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

  defstruct [:model_name, :model_info, :expire_time, :create_time, :update_time, :encryption]

  field :model_name, 1, type: :string
  field :model_info, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo
  field :expire_time, 5, type: Google.Protobuf.Timestamp
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
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

  defstruct [:routine, :reason, :job_name]

  field :routine, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.Routine

  field :reason, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion.Reason,
    enum: true

  field :job_name, 4, type: :string
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

  defstruct [:job_name, :job_config, :job_status, :job_stats]

  field :job_name, 1, type: :string
  field :job_config, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig
  field :job_status, 3, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus
  field :job_stats, 4, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats
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

  defstruct [
    :query,
    :query_truncated,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :default_dataset,
    :table_definitions,
    :priority,
    :destination_table_encryption,
    :statement_type
  ]

  field :query, 1, type: :string
  field :query_truncated, 10, type: :bool
  field :destination_table, 2, type: :string

  field :create_disposition, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    enum: true

  field :write_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    enum: true

  field :default_dataset, 5, type: :string

  field :table_definitions, 6,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDefinition

  field :priority, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query.Priority,
    enum: true

  field :destination_table_encryption, 8,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo

  field :statement_type, 9,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.QueryStatementType,
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

  defstruct [
    :source_uris,
    :source_uris_truncated,
    :schema_json,
    :schema_json_truncated,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :destination_table_encryption
  ]

  field :source_uris, 1, repeated: true, type: :string
  field :source_uris_truncated, 7, type: :bool
  field :schema_json, 2, type: :string
  field :schema_json_truncated, 8, type: :bool
  field :destination_table, 3, type: :string

  field :create_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    enum: true

  field :write_disposition, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    enum: true

  field :destination_table_encryption, 6,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Extract do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          destination_uris: [String.t()],
          destination_uris_truncated: boolean
        }

  defstruct [:source, :destination_uris, :destination_uris_truncated]

  oneof :source, 0
  field :destination_uris, 1, repeated: true, type: :string
  field :destination_uris_truncated, 3, type: :bool
  field :source_table, 2, type: :string, oneof: 0
  field :source_model, 4, type: :string, oneof: 0
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

  defstruct [
    :source_tables,
    :source_tables_truncated,
    :destination_table,
    :create_disposition,
    :write_disposition,
    :destination_table_encryption,
    :operation_type,
    :destination_expiration_time
  ]

  field :source_tables, 1, repeated: true, type: :string
  field :source_tables_truncated, 6, type: :bool
  field :destination_table, 2, type: :string

  field :create_disposition, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.CreateDisposition,
    enum: true

  field :write_disposition, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.WriteDisposition,
    enum: true

  field :destination_table_encryption, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo

  field :operation_type, 7,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.OperationType,
    enum: true

  field :destination_expiration_time, 8, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {atom, any},
          type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:config, :type, :labels]

  oneof :config, 0
  field :type, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Type, enum: true
  field :query_config, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Query, oneof: 0
  field :load_config, 3, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Load, oneof: 0

  field :extract_config, 4,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.Extract,
    oneof: 0

  field :table_copy_config, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobConfig.TableCopy,
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

  defstruct [:name, :source_uris]

  field :name, 1, type: :string
  field :source_uris, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_state: Google.Cloud.Audit.BigQueryAuditMetadata.JobState.t(),
          error_result: Google.Rpc.Status.t() | nil,
          errors: [Google.Rpc.Status.t()]
        }

  defstruct [:job_state, :error_result, :errors]

  field :job_state, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobState, enum: true
  field :error_result, 2, type: Google.Rpc.Status
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

  defstruct [
    :total_processed_bytes,
    :total_billed_bytes,
    :billing_tier,
    :referenced_tables,
    :referenced_views,
    :referenced_routines,
    :output_row_count,
    :cache_hit
  ]

  field :total_processed_bytes, 1, type: :int64
  field :total_billed_bytes, 2, type: :int64
  field :billing_tier, 3, type: :int32
  field :referenced_tables, 6, repeated: true, type: :string
  field :referenced_views, 7, repeated: true, type: :string
  field :referenced_routines, 10, repeated: true, type: :string
  field :output_row_count, 8, type: :int64
  field :cache_hit, 9, type: :bool
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Load do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_output_bytes: integer
        }

  defstruct [:total_output_bytes]

  field :total_output_bytes, 1, type: :int64
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_input_bytes: integer
        }

  defstruct [:total_input_bytes]

  field :total_input_bytes, 1, type: :int64
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_ms: integer
        }

  defstruct [:name, :slot_ms]

  field :name, 1, type: :string
  field :slot_ms, 2, type: :int64
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.JobStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          extended: {atom, any},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          total_slot_ms: integer,
          reservation_usage: [
            Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage.t()
          ],
          parent_job_name: String.t()
        }

  defstruct [
    :extended,
    :create_time,
    :start_time,
    :end_time,
    :total_slot_ms,
    :reservation_usage,
    :parent_job_name
  ]

  oneof :extended, 0
  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :query_stats, 8, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Query, oneof: 0
  field :load_stats, 9, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Load, oneof: 0

  field :extract_stats, 13,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.Extract,
    oneof: 0

  field :total_slot_ms, 10, type: :int64

  field :reservation_usage, 11,
    repeated: true,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.JobStats.ReservationResourceUsage

  field :parent_job_name, 12, type: :string
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

  defstruct [
    :table_name,
    :schema_json,
    :schema_json_truncated,
    :view,
    :expire_time,
    :create_time,
    :update_time,
    :truncate_time,
    :encryption,
    :table_info
  ]

  field :table_name, 1, type: :string
  field :schema_json, 3, type: :string
  field :schema_json_truncated, 11, type: :bool
  field :view, 4, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableViewDefinition
  field :expire_time, 5, type: Google.Protobuf.Timestamp
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :truncate_time, 8, type: Google.Protobuf.Timestamp
  field :encryption, 9, type: Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo
  field :table_info, 10, type: Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.Routine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          routine_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:routine_name, :create_time, :update_time]

  field :routine_name, 1, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EntityInfo.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

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

  defstruct [:friendly_name, :description, :labels]

  field :friendly_name, 1, type: :string
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

  defstruct [:query, :query_truncated]

  field :query, 1, type: :string
  field :query_truncated, 2, type: :bool
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.BigQueryAcl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Iam.V1.Policy.t() | nil,
          authorized_views: [String.t()]
        }

  defstruct [:policy, :authorized_views]

  field :policy, 1, type: Google.Iam.V1.Policy
  field :authorized_views, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata.EncryptionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string
end

defmodule Google.Cloud.Audit.BigQueryAuditMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event: {atom, any}
        }

  defstruct [:event]

  oneof :event, 0
  field :job_insertion, 1, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobInsertion, oneof: 0
  field :job_change, 2, type: Google.Cloud.Audit.BigQueryAuditMetadata.JobChange, oneof: 0

  field :dataset_creation, 3,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetCreation,
    oneof: 0

  field :dataset_change, 4, type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetChange, oneof: 0

  field :dataset_deletion, 5,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.DatasetDeletion,
    oneof: 0

  field :table_creation, 6, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableCreation, oneof: 0
  field :table_change, 8, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableChange, oneof: 0
  field :table_deletion, 9, type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDeletion, oneof: 0

  field :table_data_read, 10,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataRead,
    oneof: 0

  field :table_data_change, 11,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.TableDataChange,
    oneof: 0

  field :model_deletion, 12,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDeletion,
    oneof: 0

  field :model_creation, 13,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelCreation,
    oneof: 0

  field :model_metadata_change, 14,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelMetadataChange,
    oneof: 0

  field :model_data_change, 15,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataChange,
    oneof: 0

  field :model_data_read, 19,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.ModelDataRead,
    oneof: 0

  field :routine_creation, 16,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineCreation,
    oneof: 0

  field :routine_change, 17,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineChange,
    oneof: 0

  field :routine_deletion, 18,
    type: Google.Cloud.Audit.BigQueryAuditMetadata.RoutineDeletion,
    oneof: 0
end
