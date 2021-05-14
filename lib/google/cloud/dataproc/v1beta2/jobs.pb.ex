defmodule Google.Cloud.Dataproc.V1beta2.LoggingConfig.Level do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LEVEL_UNSPECIFIED
          | :ALL
          | :TRACE
          | :DEBUG
          | :INFO
          | :WARN
          | :ERROR
          | :FATAL
          | :OFF

  field :LEVEL_UNSPECIFIED, 0

  field :ALL, 1

  field :TRACE, 2

  field :DEBUG, 3

  field :INFO, 4

  field :WARN, 5

  field :ERROR, 6

  field :FATAL, 7

  field :OFF, 8
end

defmodule Google.Cloud.Dataproc.V1beta2.JobStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :SETUP_DONE
          | :RUNNING
          | :CANCEL_PENDING
          | :CANCEL_STARTED
          | :CANCELLED
          | :DONE
          | :ERROR
          | :ATTEMPT_FAILURE

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :SETUP_DONE, 8

  field :RUNNING, 2

  field :CANCEL_PENDING, 3

  field :CANCEL_STARTED, 7

  field :CANCELLED, 4

  field :DONE, 5

  field :ERROR, 6

  field :ATTEMPT_FAILURE, 9
end

defmodule Google.Cloud.Dataproc.V1beta2.JobStatus.Substate do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :SUBMITTED | :QUEUED | :STALE_STATUS

  field :UNSPECIFIED, 0

  field :SUBMITTED, 1

  field :QUEUED, 2

  field :STALE_STATUS, 3
end

defmodule Google.Cloud.Dataproc.V1beta2.YarnApplication.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :NEW
          | :NEW_SAVING
          | :SUBMITTED
          | :ACCEPTED
          | :RUNNING
          | :FINISHED
          | :FAILED
          | :KILLED

  field :STATE_UNSPECIFIED, 0

  field :NEW, 1

  field :NEW_SAVING, 2

  field :SUBMITTED, 3

  field :ACCEPTED, 4

  field :RUNNING, 5

  field :FINISHED, 6

  field :FAILED, 7

  field :KILLED, 8
end

defmodule Google.Cloud.Dataproc.V1beta2.ListJobsRequest.JobStateMatcher do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ALL | :ACTIVE | :NON_ACTIVE

  field :ALL, 0

  field :ACTIVE, 1

  field :NON_ACTIVE, 2
end

defmodule Google.Cloud.Dataproc.V1beta2.LoggingConfig.DriverLogLevelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Dataproc.V1beta2.LoggingConfig.Level.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig.Level, enum: true
end

defmodule Google.Cloud.Dataproc.V1beta2.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver_log_levels: %{
            String.t() => Google.Cloud.Dataproc.V1beta2.LoggingConfig.Level.t()
          }
        }

  defstruct [:driver_log_levels]

  field :driver_log_levels, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.LoggingConfig.DriverLogLevelsEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1beta2.HadoopJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.HadoopJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver: {atom, any},
          args: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [
    :driver,
    :args,
    :jar_file_uris,
    :file_uris,
    :archive_uris,
    :properties,
    :logging_config
  ]

  oneof :driver, 0
  field :main_jar_file_uri, 1, type: :string, oneof: 0
  field :main_class, 2, type: :string, oneof: 0
  field :args, 3, repeated: true, type: :string
  field :jar_file_uris, 4, repeated: true, type: :string
  field :file_uris, 5, repeated: true, type: :string
  field :archive_uris, 6, repeated: true, type: :string

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.HadoopJob.PropertiesEntry,
    map: true

  field :logging_config, 8, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.SparkJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.SparkJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          driver: {atom, any},
          args: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [
    :driver,
    :args,
    :jar_file_uris,
    :file_uris,
    :archive_uris,
    :properties,
    :logging_config
  ]

  oneof :driver, 0
  field :main_jar_file_uri, 1, type: :string, oneof: 0
  field :main_class, 2, type: :string, oneof: 0
  field :args, 3, repeated: true, type: :string
  field :jar_file_uris, 4, repeated: true, type: :string
  field :file_uris, 5, repeated: true, type: :string
  field :archive_uris, 6, repeated: true, type: :string

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.SparkJob.PropertiesEntry,
    map: true

  field :logging_config, 8, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.PySparkJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.PySparkJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_python_file_uri: String.t(),
          args: [String.t()],
          python_file_uris: [String.t()],
          jar_file_uris: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [
    :main_python_file_uri,
    :args,
    :python_file_uris,
    :jar_file_uris,
    :file_uris,
    :archive_uris,
    :properties,
    :logging_config
  ]

  field :main_python_file_uri, 1, type: :string
  field :args, 2, repeated: true, type: :string
  field :python_file_uris, 3, repeated: true, type: :string
  field :jar_file_uris, 4, repeated: true, type: :string
  field :file_uris, 5, repeated: true, type: :string
  field :archive_uris, 6, repeated: true, type: :string

  field :properties, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.PySparkJob.PropertiesEntry,
    map: true

  field :logging_config, 8, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.QueryList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: [String.t()]
        }

  defstruct [:queries]

  field :queries, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.HiveJob.ScriptVariablesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.HiveJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.HiveJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: {atom, any},
          continue_on_failure: boolean,
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()]
        }

  defstruct [:queries, :continue_on_failure, :script_variables, :properties, :jar_file_uris]

  oneof :queries, 0
  field :query_file_uri, 1, type: :string, oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1beta2.QueryList, oneof: 0
  field :continue_on_failure, 3, type: :bool

  field :script_variables, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.HiveJob.ScriptVariablesEntry,
    map: true

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.HiveJob.PropertiesEntry,
    map: true

  field :jar_file_uris, 6, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.SparkSqlJob.ScriptVariablesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.SparkSqlJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.SparkSqlJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: {atom, any},
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()],
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [:queries, :script_variables, :properties, :jar_file_uris, :logging_config]

  oneof :queries, 0
  field :query_file_uri, 1, type: :string, oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1beta2.QueryList, oneof: 0

  field :script_variables, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.SparkSqlJob.ScriptVariablesEntry,
    map: true

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.SparkSqlJob.PropertiesEntry,
    map: true

  field :jar_file_uris, 56, repeated: true, type: :string
  field :logging_config, 6, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.PigJob.ScriptVariablesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.PigJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.PigJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: {atom, any},
          continue_on_failure: boolean,
          script_variables: %{String.t() => String.t()},
          properties: %{String.t() => String.t()},
          jar_file_uris: [String.t()],
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [
    :queries,
    :continue_on_failure,
    :script_variables,
    :properties,
    :jar_file_uris,
    :logging_config
  ]

  oneof :queries, 0
  field :query_file_uri, 1, type: :string, oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1beta2.QueryList, oneof: 0
  field :continue_on_failure, 3, type: :bool

  field :script_variables, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.PigJob.ScriptVariablesEntry,
    map: true

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.PigJob.PropertiesEntry,
    map: true

  field :jar_file_uris, 6, repeated: true, type: :string
  field :logging_config, 7, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.SparkRJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.SparkRJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          main_r_file_uri: String.t(),
          args: [String.t()],
          file_uris: [String.t()],
          archive_uris: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [:main_r_file_uri, :args, :file_uris, :archive_uris, :properties, :logging_config]

  field :main_r_file_uri, 1, type: :string
  field :args, 2, repeated: true, type: :string
  field :file_uris, 3, repeated: true, type: :string
  field :archive_uris, 4, repeated: true, type: :string

  field :properties, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.SparkRJob.PropertiesEntry,
    map: true

  field :logging_config, 6, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.PrestoJob.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.PrestoJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          queries: {atom, any},
          continue_on_failure: boolean,
          output_format: String.t(),
          client_tags: [String.t()],
          properties: %{String.t() => String.t()},
          logging_config: Google.Cloud.Dataproc.V1beta2.LoggingConfig.t() | nil
        }

  defstruct [
    :queries,
    :continue_on_failure,
    :output_format,
    :client_tags,
    :properties,
    :logging_config
  ]

  oneof :queries, 0
  field :query_file_uri, 1, type: :string, oneof: 0
  field :query_list, 2, type: Google.Cloud.Dataproc.V1beta2.QueryList, oneof: 0
  field :continue_on_failure, 3, type: :bool
  field :output_format, 4, type: :string
  field :client_tags, 5, repeated: true, type: :string

  field :properties, 6,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.PrestoJob.PropertiesEntry,
    map: true

  field :logging_config, 7, type: Google.Cloud.Dataproc.V1beta2.LoggingConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.JobPlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_name: String.t(),
          cluster_uuid: String.t()
        }

  defstruct [:cluster_name, :cluster_uuid]

  field :cluster_name, 1, type: :string
  field :cluster_uuid, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.JobStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1beta2.JobStatus.State.t(),
          details: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil,
          substate: Google.Cloud.Dataproc.V1beta2.JobStatus.Substate.t()
        }

  defstruct [:state, :details, :state_start_time, :substate]

  field :state, 1, type: Google.Cloud.Dataproc.V1beta2.JobStatus.State, enum: true
  field :details, 2, type: :string
  field :state_start_time, 6, type: Google.Protobuf.Timestamp
  field :substate, 7, type: Google.Cloud.Dataproc.V1beta2.JobStatus.Substate, enum: true
end

defmodule Google.Cloud.Dataproc.V1beta2.JobReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t()
        }

  defstruct [:project_id, :job_id]

  field :project_id, 1, type: :string
  field :job_id, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.YarnApplication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Dataproc.V1beta2.YarnApplication.State.t(),
          progress: float | :infinity | :negative_infinity | :nan,
          tracking_url: String.t()
        }

  defstruct [:name, :state, :progress, :tracking_url]

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Dataproc.V1beta2.YarnApplication.State, enum: true
  field :progress, 3, type: :float
  field :tracking_url, 4, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.Job.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type_job: {atom, any},
          reference: Google.Cloud.Dataproc.V1beta2.JobReference.t() | nil,
          placement: Google.Cloud.Dataproc.V1beta2.JobPlacement.t() | nil,
          status: Google.Cloud.Dataproc.V1beta2.JobStatus.t() | nil,
          status_history: [Google.Cloud.Dataproc.V1beta2.JobStatus.t()],
          yarn_applications: [Google.Cloud.Dataproc.V1beta2.YarnApplication.t()],
          submitted_by: String.t(),
          driver_output_resource_uri: String.t(),
          driver_control_files_uri: String.t(),
          labels: %{String.t() => String.t()},
          scheduling: Google.Cloud.Dataproc.V1beta2.JobScheduling.t() | nil,
          job_uuid: String.t(),
          done: boolean
        }

  defstruct [
    :type_job,
    :reference,
    :placement,
    :status,
    :status_history,
    :yarn_applications,
    :submitted_by,
    :driver_output_resource_uri,
    :driver_control_files_uri,
    :labels,
    :scheduling,
    :job_uuid,
    :done
  ]

  oneof :type_job, 0
  field :reference, 1, type: Google.Cloud.Dataproc.V1beta2.JobReference
  field :placement, 2, type: Google.Cloud.Dataproc.V1beta2.JobPlacement
  field :hadoop_job, 3, type: Google.Cloud.Dataproc.V1beta2.HadoopJob, oneof: 0
  field :spark_job, 4, type: Google.Cloud.Dataproc.V1beta2.SparkJob, oneof: 0
  field :pyspark_job, 5, type: Google.Cloud.Dataproc.V1beta2.PySparkJob, oneof: 0
  field :hive_job, 6, type: Google.Cloud.Dataproc.V1beta2.HiveJob, oneof: 0
  field :pig_job, 7, type: Google.Cloud.Dataproc.V1beta2.PigJob, oneof: 0
  field :spark_r_job, 21, type: Google.Cloud.Dataproc.V1beta2.SparkRJob, oneof: 0
  field :spark_sql_job, 12, type: Google.Cloud.Dataproc.V1beta2.SparkSqlJob, oneof: 0
  field :presto_job, 23, type: Google.Cloud.Dataproc.V1beta2.PrestoJob, oneof: 0
  field :status, 8, type: Google.Cloud.Dataproc.V1beta2.JobStatus
  field :status_history, 13, repeated: true, type: Google.Cloud.Dataproc.V1beta2.JobStatus
  field :yarn_applications, 9, repeated: true, type: Google.Cloud.Dataproc.V1beta2.YarnApplication
  field :submitted_by, 10, type: :string
  field :driver_output_resource_uri, 17, type: :string
  field :driver_control_files_uri, 15, type: :string

  field :labels, 18,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.Job.LabelsEntry,
    map: true

  field :scheduling, 20, type: Google.Cloud.Dataproc.V1beta2.JobScheduling
  field :job_uuid, 22, type: :string
  field :done, 24, type: :bool
end

defmodule Google.Cloud.Dataproc.V1beta2.JobScheduling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_failures_per_hour: integer
        }

  defstruct [:max_failures_per_hour]

  field :max_failures_per_hour, 1, type: :int32
end

defmodule Google.Cloud.Dataproc.V1beta2.JobMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_id: String.t(),
          status: Google.Cloud.Dataproc.V1beta2.JobStatus.t() | nil,
          operation_type: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:job_id, :status, :operation_type, :start_time]

  field :job_id, 1, type: :string
  field :status, 2, type: Google.Cloud.Dataproc.V1beta2.JobStatus
  field :operation_type, 3, type: :string
  field :start_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dataproc.V1beta2.SubmitJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job: Google.Cloud.Dataproc.V1beta2.Job.t() | nil,
          request_id: String.t()
        }

  defstruct [:project_id, :region, :job, :request_id]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :job, 2, type: Google.Cloud.Dataproc.V1beta2.Job
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct [:project_id, :region, :job_id]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :job_id, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          page_size: integer,
          page_token: String.t(),
          cluster_name: String.t(),
          job_state_matcher: Google.Cloud.Dataproc.V1beta2.ListJobsRequest.JobStateMatcher.t(),
          filter: String.t()
        }

  defstruct [
    :project_id,
    :region,
    :page_size,
    :page_token,
    :cluster_name,
    :job_state_matcher,
    :filter
  ]

  field :project_id, 1, type: :string
  field :region, 6, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :cluster_name, 4, type: :string

  field :job_state_matcher, 5,
    type: Google.Cloud.Dataproc.V1beta2.ListJobsRequest.JobStateMatcher,
    enum: true

  field :filter, 7, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.UpdateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t(),
          job: Google.Cloud.Dataproc.V1beta2.Job.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:project_id, :region, :job_id, :job, :update_mask]

  field :project_id, 1, type: :string
  field :region, 2, type: :string
  field :job_id, 3, type: :string
  field :job, 4, type: Google.Cloud.Dataproc.V1beta2.Job
  field :update_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dataproc.V1beta2.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Dataproc.V1beta2.Job.t()],
          next_page_token: String.t()
        }

  defstruct [:jobs, :next_page_token]

  field :jobs, 1, repeated: true, type: Google.Cloud.Dataproc.V1beta2.Job
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.CancelJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct [:project_id, :region, :job_id]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :job_id, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          job_id: String.t()
        }

  defstruct [:project_id, :region, :job_id]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :job_id, 2, type: :string
end
