defmodule Google.Cloud.Clouddms.V1.DatabaseEngine do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DATABASE_ENGINE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :POSTGRESQL, 2
end
defmodule Google.Cloud.Clouddms.V1.DatabaseProvider do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DATABASE_PROVIDER_UNSPECIFIED, 0
  field :CLOUDSQL, 1
  field :RDS, 2
end
defmodule Google.Cloud.Clouddms.V1.SslConfig.SslType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SSL_TYPE_UNSPECIFIED, 0
  field :SERVER_ONLY, 1
  field :SERVER_CLIENT, 2
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlActivationPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0
  field :ALWAYS, 1
  field :NEVER, 2
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlDataDiskType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0
  field :PD_SSD, 1
  field :PD_HDD, 2
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlDatabaseVersion do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SQL_DATABASE_VERSION_UNSPECIFIED, 0
  field :MYSQL_5_6, 1
  field :MYSQL_5_7, 2
  field :POSTGRES_9_6, 3
  field :POSTGRES_11, 4
  field :POSTGRES_10, 5
  field :MYSQL_8_0, 6
  field :POSTGRES_12, 7
  field :POSTGRES_13, 8
end
defmodule Google.Cloud.Clouddms.V1.MigrationJob.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Clouddms.V1.MigrationJob.Phase do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PHASE_UNSPECIFIED, 0
  field :FULL_DUMP, 1
  field :CDC, 2
  field :PROMOTE_IN_PROGRESS, 3
  field :WAITING_FOR_SOURCE_WRITES_TO_STOP, 4
  field :PREPARING_THE_DUMP, 5
end
defmodule Google.Cloud.Clouddms.V1.MigrationJob.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ONE_TIME, 1
  field :CONTINUOUS, 2
end
defmodule Google.Cloud.Clouddms.V1.ConnectionProfile.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :CREATING, 2
  field :READY, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :DELETED, 6
  field :FAILED, 7
end
defmodule Google.Cloud.Clouddms.V1.MigrationJobVerificationError.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :CONNECTION_FAILURE, 1
  field :AUTHENTICATION_FAILURE, 2
  field :INVALID_CONNECTION_PROFILE_CONFIG, 3
  field :VERSION_INCOMPATIBILITY, 4
  field :CONNECTION_PROFILE_TYPES_INCOMPATIBILITY, 5
  field :NO_PGLOGICAL_INSTALLED, 7
  field :PGLOGICAL_NODE_ALREADY_EXISTS, 8
  field :INVALID_WAL_LEVEL, 9
  field :INVALID_SHARED_PRELOAD_LIBRARY, 10
  field :INSUFFICIENT_MAX_REPLICATION_SLOTS, 11
  field :INSUFFICIENT_MAX_WAL_SENDERS, 12
  field :INSUFFICIENT_MAX_WORKER_PROCESSES, 13
  field :UNSUPPORTED_EXTENSIONS, 14
  field :UNSUPPORTED_MIGRATION_TYPE, 15
  field :INVALID_RDS_LOGICAL_REPLICATION, 16
  field :UNSUPPORTED_GTID_MODE, 17
  field :UNSUPPORTED_TABLE_DEFINITION, 18
  field :UNSUPPORTED_DEFINER, 19
  field :CANT_RESTART_RUNNING_MIGRATION, 21
end
defmodule Google.Cloud.Clouddms.V1.SslConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Clouddms.V1.SslConfig.SslType, enum: true, deprecated: false
  field :client_key, 2, type: :string, json_name: "clientKey", deprecated: false
  field :client_certificate, 3, type: :string, json_name: "clientCertificate", deprecated: false
  field :ca_certificate, 4, type: :string, json_name: "caCertificate", deprecated: false
end
defmodule Google.Cloud.Clouddms.V1.MySqlConnectionProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :host, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :password_set, 5, type: :bool, json_name: "passwordSet", deprecated: false
  field :ssl, 6, type: Google.Cloud.Clouddms.V1.SslConfig
  field :cloud_sql_id, 7, type: :string, json_name: "cloudSqlId"
end
defmodule Google.Cloud.Clouddms.V1.PostgreSqlConnectionProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :host, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :password_set, 5, type: :bool, json_name: "passwordSet", deprecated: false
  field :ssl, 6, type: Google.Cloud.Clouddms.V1.SslConfig
  field :cloud_sql_id, 7, type: :string, json_name: "cloudSqlId"
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlConnectionProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cloud_sql_id, 1, type: :string, json_name: "cloudSqlId", deprecated: false
  field :settings, 2, type: Google.Cloud.Clouddms.V1.CloudSqlSettings, deprecated: false
  field :private_ip, 3, type: :string, json_name: "privateIp", deprecated: false
  field :public_ip, 4, type: :string, json_name: "publicIp", deprecated: false
end
defmodule Google.Cloud.Clouddms.V1.SqlAclEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :expiration, 0

  field :value, 1, type: :string
  field :expire_time, 10, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 11, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :label, 3, type: :string
end
defmodule Google.Cloud.Clouddms.V1.SqlIpConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :enable_ipv4, 1, type: Google.Protobuf.BoolValue, json_name: "enableIpv4"
  field :private_network, 2, type: :string, json_name: "privateNetwork"
  field :require_ssl, 3, type: Google.Protobuf.BoolValue, json_name: "requireSsl"

  field :authorized_networks, 4,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.SqlAclEntry,
    json_name: "authorizedNetworks"
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings.DatabaseFlagsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Clouddms.V1.CloudSqlSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database_version, 1,
    type: Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :user_labels, 2,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.CloudSqlSettings.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :tier, 3, type: :string

  field :storage_auto_resize_limit, 4,
    type: Google.Protobuf.Int64Value,
    json_name: "storageAutoResizeLimit"

  field :activation_policy, 5,
    type: Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlActivationPolicy,
    json_name: "activationPolicy",
    enum: true

  field :ip_config, 6, type: Google.Cloud.Clouddms.V1.SqlIpConfig, json_name: "ipConfig"

  field :auto_storage_increase, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "autoStorageIncrease"

  field :database_flags, 8,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.CloudSqlSettings.DatabaseFlagsEntry,
    json_name: "databaseFlags",
    map: true

  field :data_disk_type, 9,
    type: Google.Cloud.Clouddms.V1.CloudSqlSettings.SqlDataDiskType,
    json_name: "dataDiskType",
    enum: true

  field :data_disk_size_gb, 10, type: Google.Protobuf.Int64Value, json_name: "dataDiskSizeGb"
  field :zone, 11, type: :string
  field :source_id, 12, type: :string, json_name: "sourceId"
  field :root_password, 13, type: :string, json_name: "rootPassword", deprecated: false
  field :root_password_set, 14, type: :bool, json_name: "rootPasswordSet", deprecated: false
  field :collation, 15, type: :string
end
defmodule Google.Cloud.Clouddms.V1.StaticIpConnectivity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Clouddms.V1.ReverseSshConnectivity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :vm_ip, 1, type: :string, json_name: "vmIp", deprecated: false
  field :vm_port, 2, type: :int32, json_name: "vmPort", deprecated: false
  field :vm, 3, type: :string
  field :vpc, 4, type: :string
end
defmodule Google.Cloud.Clouddms.V1.VpcPeeringConnectivity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :vpc, 1, type: :string
end
defmodule Google.Cloud.Clouddms.V1.DatabaseType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :provider, 1, type: Google.Cloud.Clouddms.V1.DatabaseProvider, enum: true
  field :engine, 2, type: Google.Cloud.Clouddms.V1.DatabaseEngine, enum: true
end
defmodule Google.Cloud.Clouddms.V1.MigrationJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Clouddms.V1.MigrationJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :connectivity, 0

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.MigrationJob.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName"
  field :state, 6, type: Google.Cloud.Clouddms.V1.MigrationJob.State, enum: true

  field :phase, 7,
    type: Google.Cloud.Clouddms.V1.MigrationJob.Phase,
    enum: true,
    deprecated: false

  field :type, 8, type: Google.Cloud.Clouddms.V1.MigrationJob.Type, enum: true, deprecated: false
  field :dump_path, 9, type: :string, json_name: "dumpPath"
  field :source, 10, type: :string, deprecated: false
  field :destination, 11, type: :string, deprecated: false

  field :reverse_ssh_connectivity, 101,
    type: Google.Cloud.Clouddms.V1.ReverseSshConnectivity,
    json_name: "reverseSshConnectivity",
    oneof: 0

  field :vpc_peering_connectivity, 102,
    type: Google.Cloud.Clouddms.V1.VpcPeeringConnectivity,
    json_name: "vpcPeeringConnectivity",
    oneof: 0

  field :static_ip_connectivity, 103,
    type: Google.Cloud.Clouddms.V1.StaticIpConnectivity,
    json_name: "staticIpConnectivity",
    oneof: 0

  field :duration, 12, type: Google.Protobuf.Duration, deprecated: false
  field :error, 13, type: Google.Rpc.Status, deprecated: false

  field :source_database, 14,
    type: Google.Cloud.Clouddms.V1.DatabaseType,
    json_name: "sourceDatabase"

  field :destination_database, 15,
    type: Google.Cloud.Clouddms.V1.DatabaseType,
    json_name: "destinationDatabase"

  field :end_time, 16, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end
defmodule Google.Cloud.Clouddms.V1.ConnectionProfile.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Clouddms.V1.ConnectionProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :connection_profile, 0

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile.LabelsEntry,
    map: true

  field :state, 5, type: Google.Cloud.Clouddms.V1.ConnectionProfile.State, enum: true
  field :display_name, 6, type: :string, json_name: "displayName"
  field :mysql, 100, type: Google.Cloud.Clouddms.V1.MySqlConnectionProfile, oneof: 0
  field :postgresql, 101, type: Google.Cloud.Clouddms.V1.PostgreSqlConnectionProfile, oneof: 0
  field :cloudsql, 102, type: Google.Cloud.Clouddms.V1.CloudSqlConnectionProfile, oneof: 0
  field :error, 7, type: Google.Rpc.Status, deprecated: false
  field :provider, 8, type: Google.Cloud.Clouddms.V1.DatabaseProvider, enum: true
end
defmodule Google.Cloud.Clouddms.V1.MigrationJobVerificationError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :error_code, 1,
    type: Google.Cloud.Clouddms.V1.MigrationJobVerificationError.ErrorCode,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :error_message, 2, type: :string, json_name: "errorMessage", deprecated: false

  field :error_detail_message, 3,
    type: :string,
    json_name: "errorDetailMessage",
    deprecated: false
end
