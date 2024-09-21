defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseEngine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DATABASE_ENGINE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :POSTGRESQL, 2
  field :SQLSERVER, 3
  field :ORACLE, 4
  field :SPANNER, 5
end

defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DATABASE_PROVIDER_UNSPECIFIED, 0
  field :CLOUDSQL, 1
  field :RDS, 2
  field :AURORA, 3
  field :ALLOYDB, 4
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PHASE_UNSPECIFIED, 0
  field :FULL_DUMP, 1
  field :CDC, 2
  field :PROMOTE_IN_PROGRESS, 3
  field :WAITING_FOR_SOURCE_WRITES_TO_STOP, 4
  field :PREPARING_THE_DUMP, 5
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ONE_TIME, 1
  field :CONTINUOUS, 2
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.ConnectivityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONNECTIVITY_TYPE_UNSPECIFIED, 0
  field :STATIC_IP, 1
  field :REVERSE_SSH, 2
  field :VPC_PEERING, 3
end

defmodule Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.Version do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_UNSPECIFIED, 0
  field :V5_5, 1
  field :V5_6, 2
  field :V5_7, 3
  field :V8_0, 4
end

defmodule Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.Version do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_UNSPECIFIED, 0
  field :V9_6, 1
  field :V11, 2
  field :V10, 3
  field :V12, 4
  field :V13, 5
end

defmodule Google.Cloud.Clouddms.Logging.V1.OracleConnectionProfile.ConnectivityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONNECTIVITY_TYPE_UNSPECIFIED, 0
  field :STATIC_SERVICE_IP, 1
  field :FORWARD_SSH_TUNNEL, 2
  field :PRIVATE_CONNECTIVITY, 3
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :CREATING, 2
  field :READY, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :DELETED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :FAILED, 3
  field :DELETING, 4
  field :FAILED_TO_DELETE, 5
  field :DELETED, 6
end

defmodule Google.Cloud.Clouddms.Logging.V1.DatabaseType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :provider, 1, type: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider, enum: true
  field :engine, 2, type: Google.Cloud.Clouddms.Logging.V1.DatabaseEngine, enum: true
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :state, 4,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.State,
    enum: true,
    deprecated: false

  field :phase, 5,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Phase,
    enum: true,
    deprecated: false

  field :type, 6,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.Type,
    enum: true,
    deprecated: false

  field :dump_path, 7, type: :string, json_name: "dumpPath", deprecated: false
  field :source, 8, type: :string, deprecated: false
  field :destination, 9, type: :string, deprecated: false
  field :duration, 10, type: Google.Protobuf.Duration, deprecated: false

  field :connectivity_type, 11,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedMigrationJob.ConnectivityType,
    json_name: "connectivityType",
    enum: true,
    deprecated: false

  field :error, 12, type: Google.Rpc.Status, deprecated: false
  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :source_database, 14,
    type: Google.Cloud.Clouddms.Logging.V1.DatabaseType,
    json_name: "sourceDatabase",
    deprecated: false

  field :destination_database, 15,
    type: Google.Cloud.Clouddms.Logging.V1.DatabaseType,
    json_name: "destinationDatabase",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1,
    type: Google.Cloud.Clouddms.Logging.V1.MySqlConnectionProfile.Version,
    enum: true

  field :cloud_sql_id, 2, type: :string, json_name: "cloudSqlId"
end

defmodule Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1,
    type: Google.Cloud.Clouddms.Logging.V1.PostgreSqlConnectionProfile.Version,
    enum: true

  field :cloud_sql_id, 2, type: :string, json_name: "cloudSqlId"
end

defmodule Google.Cloud.Clouddms.Logging.V1.CloudSqlConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cloud_sql_id, 1, type: :string, json_name: "cloudSqlId"
end

defmodule Google.Cloud.Clouddms.Logging.V1.OracleConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :connectivity_type, 1,
    type: Google.Cloud.Clouddms.Logging.V1.OracleConnectionProfile.ConnectivityType,
    json_name: "connectivityType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
  field :oracle, 103, type: Google.Cloud.Clouddms.Logging.V1.OracleConnectionProfile, oneof: 0
  field :error, 5, type: Google.Rpc.Status
  field :provider, 6, type: Google.Cloud.Clouddms.Logging.V1.DatabaseProvider, enum: true
end

defmodule Google.Cloud.Clouddms.Logging.V1.MigrationJobEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Clouddms.Logging.V1.ConnectionProfileEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection.LabelsEntry,
    map: true

  field :display_name, 3, type: :string, json_name: "displayName"

  field :state, 4,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection.State,
    enum: true

  field :error, 5, type: Google.Rpc.Status

  field :vpc_peering_config, 100,
    type: Google.Cloud.Clouddms.Logging.V1.VpcPeeringConfig,
    json_name: "vpcPeeringConfig"
end

defmodule Google.Cloud.Clouddms.Logging.V1.VpcPeeringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vpc_name, 1, type: :string, json_name: "vpcName"
  field :subnet, 2, type: :string
end

defmodule Google.Cloud.Clouddms.Logging.V1.PrivateConnectionEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :original_cause, 0

  field :private_connection, 1,
    type: Google.Cloud.Clouddms.Logging.V1.LoggedPrivateConnection,
    json_name: "privateConnection"

  field :occurrence_timestamp, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "occurrenceTimestamp"

  field :code, 3, type: :int32
  field :text_message, 4, type: :string, json_name: "textMessage"
  field :original_code, 200, type: :int32, json_name: "originalCode", oneof: 0
  field :original_message, 201, type: :string, json_name: "originalMessage", oneof: 0
end