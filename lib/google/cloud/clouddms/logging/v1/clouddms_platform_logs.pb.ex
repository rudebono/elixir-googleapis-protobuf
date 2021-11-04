defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseEngine do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATABASE_ENGINE_UNSPECIFIED | :MYSQL | :POSTGRESQL | :SQLSERVER

  field :DATABASE_ENGINE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :POSTGRESQL, 2
  field :SQLSERVER, 3
end

defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseProvider do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATABASE_PROVIDER_UNSPECIFIED | :CLOUDSQL | :RDS

  field :DATABASE_PROVIDER_UNSPECIFIED, 0
  field :CLOUDSQL, 1
  field :RDS, 2
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :MAINTENANCE
          | :DRAFT
          | :CREATING
          | :NOT_STARTED
          | :RUNNING
          | :FAILED
          | :COMPLETED
          | :DELETING
          | :STOPPING
          | :STOPPED
          | :DELETED
          | :UPDATING
          | :STARTING
          | :RESTARTING
          | :RESUMING

  field :STATE_UNSPECIFIED, 0
  field :MAINTENANCE, 1
  field :DRAFT, 2
  field :CREATING, 3
  field :NOT_STARTED, 4
  field :RUNNING, 5
  field :FAILED, 6
  field :COMPLETED, 7
  field :DELETING, 8
  field :STOPPING, 9
  field :STOPPED, 10
  field :DELETED, 11
  field :UPDATING, 12
  field :STARTING, 13
  field :RESTARTING, 14
  field :RESUMING, 15
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Phase do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PHASE_UNSPECIFIED
          | :FULL_DUMP
          | :CDC
          | :PROMOTE_IN_PROGRESS
          | :WAITING_FOR_SOURCE_WRITES_TO_STOP
          | :PREPARING_THE_DUMP

  field :PHASE_UNSPECIFIED, 0
  field :FULL_DUMP, 1
  field :CDC, 2
  field :PROMOTE_IN_PROGRESS, 3
  field :WAITING_FOR_SOURCE_WRITES_TO_STOP, 4
  field :PREPARING_THE_DUMP, 5
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :ONE_TIME | :CONTINUOUS

  field :TYPE_UNSPECIFIED, 0
  field :ONE_TIME, 1
  field :CONTINUOUS, 2
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.ConnectivityType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONNECTIVITY_TYPE_UNSPECIFIED | :STATIC_IP | :REVERSE_SSH | :VPC_PEERING

  field :CONNECTIVITY_TYPE_UNSPECIFIED, 0
  field :STATIC_IP, 1
  field :REVERSE_SSH, 2
  field :VPC_PEERING, 3
end

defmodule Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.Version do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_UNSPECIFIED | :V5_5 | :V5_6 | :V5_7 | :V8_0

  field :VERSION_UNSPECIFIED, 0
  field :V5_5, 1
  field :V5_6, 2
  field :V5_7, 3
  field :V8_0, 4
end

defmodule Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.Version do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VERSION_UNSPECIFIED | :V9_6 | :V11 | :V10 | :V12 | :V13

  field :VERSION_UNSPECIFIED, 0
  field :V9_6, 1
  field :V11, 2
  field :V10, 3
  field :V12, 4
  field :V13, 5
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :DRAFT
          | :CREATING
          | :READY
          | :UPDATING
          | :DELETING
          | :DELETED
          | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :CREATING, 2
  field :READY, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :DELETED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provider: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider.t(),
          engine: Google.Cloud.Clouddms.Logging.V1.DatabaseEngine.t()
        }

  defstruct [:provider, :engine]

  field :provider, 1, type: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider, enum: true
  field :engine, 2, type: Google.Cloud.Clouddms.Logging.V1.DatabaseEngine, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          state: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.State.t(),
          phase: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Phase.t(),
          type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Type.t(),
          dump_path: String.t(),
          source: String.t(),
          destination: String.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          connectivity_type:
            Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.ConnectivityType.t(),
          error: Google.Rpc.Status.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          source_database: Google.Cloud.Clouddms.Logging.V1.DatabaseType.t() | nil,
          destination_database: Google.Cloud.Clouddms.Logging.V1.DatabaseType.t() | nil
        }

  defstruct [
    :name,
    :labels,
    :display_name,
    :state,
    :phase,
    :type,
    :dump_path,
    :source,
    :destination,
    :duration,
    :connectivity_type,
    :error,
    :end_time,
    :source_database,
    :destination_database
  ]

  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.LabelsEntry,
    map: true

  field :display_name, 3, type: :string, json_name: "displayName"
  field :state, 4, type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.State, enum: true
  field :phase, 5, type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Phase, enum: true
  field :type, 6, type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Type, enum: true
  field :dump_path, 7, type: :string, json_name: "dumpPath"
  field :source, 8, type: :string
  field :destination, 9, type: :string
  field :duration, 10, type: Google.Protobuf.Duration

  field :connectivity_type, 11,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.ConnectivityType,
    enum: true,
    json_name: "connectivityType"

  field :error, 12, type: Google.Rpc.Status
  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :source_database, 14,
    type: Google.Cloud.Clouddms.Logging.V1.DatabaseType,
    json_name: "sourceDatabase"

  field :destination_database, 15,
    type: Google.Cloud.Clouddms.Logging.V1.DatabaseType,
    json_name: "destinationDatabase"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.Version.t(),
          cloud_sql_id: String.t()
        }

  defstruct [:version, :cloud_sql_id]

  field :version, 1,
    type: Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.Version,
    enum: true

  field :cloud_sql_id, 2, type: :string, json_name: "cloudSqlId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.Version.t(),
          cloud_sql_id: String.t()
        }

  defstruct [:version, :cloud_sql_id]

  field :version, 1,
    type: Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.Version,
    enum: true

  field :cloud_sql_id, 2, type: :string, json_name: "cloudSqlId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.CloudSqlConnectionProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cloud_sql_id: String.t()
        }

  defstruct [:cloud_sql_id]

  field :cloud_sql_id, 1, type: :string, json_name: "cloudSqlId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connection_profile:
            {:mysql, Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.t() | nil}
            | {:postgresql,
               Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.t() | nil}
            | {:cloudsql, Google.Cloud.Clouddms.Logging.V1.CloudSqlConnectionProfile.t() | nil},
          name: String.t(),
          labels: %{String.t() => String.t()},
          state: Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.State.t(),
          display_name: String.t(),
          error: Google.Rpc.Status.t() | nil,
          provider: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider.t()
        }

  defstruct [:connection_profile, :name, :labels, :state, :display_name, :error, :provider]

  oneof :connection_profile, 0

  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.LabelsEntry,
    map: true

  field :state, 3,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.State,
    enum: true

  field :display_name, 4, type: :string, json_name: "displayName"
  field :mysql, 100, type: Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile, oneof: 0

  field :postgresql, 101,
    type: Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile,
    oneof: 0

  field :cloudsql, 102, type: Google.Cloud.Clouddms.Logging.V1.CloudSqlConnectionProfile, oneof: 0
  field :error, 5, type: Google.Rpc.Status
  field :provider, 6, type: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.MigrationJobEventLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_cause: {:original_code, integer} | {:original_message, String.t()},
          migration_job: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.t() | nil,
          occurrence_timestamp: Google.Protobuf.Timestamp.t() | nil,
          code: integer,
          text_message: String.t()
        }

  defstruct [:original_cause, :migration_job, :occurrence_timestamp, :code, :text_message]

  oneof :original_cause, 0

  field :migration_job, 1,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob,
    json_name: "migrationJob"

  field :occurrence_timestamp, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "occurrenceTimestamp"

  field :code, 3, type: :int32
  field :text_message, 4, type: :string, json_name: "textMessage"
  field :original_code, 200, type: :int32, json_name: "originalCode", oneof: 0
  field :original_message, 201, type: :string, json_name: "originalMessage", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.Logging.V1.ConnectionProfileEventLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_cause: {:original_code, integer} | {:original_message, String.t()},
          connection_profile: Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.t() | nil,
          occurrence_timestamp: Google.Protobuf.Timestamp.t() | nil,
          code: integer,
          text_message: String.t()
        }

  defstruct [:original_cause, :connection_profile, :occurrence_timestamp, :code, :text_message]

  oneof :original_cause, 0

  field :connection_profile, 1,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile,
    json_name: "connectionProfile"

  field :occurrence_timestamp, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "occurrenceTimestamp"

  field :code, 3, type: :int32
  field :text_message, 4, type: :string, json_name: "textMessage"
  field :original_code, 200, type: :int32, json_name: "originalCode", oneof: 0
  field :original_message, 201, type: :string, json_name: "originalMessage", oneof: 0

  def transform_module(), do: nil
end
