defmodule Google.Cloud.Datastream.V1.PrivateConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :FAILED, 3
  field :DELETING, 4
  field :FAILED_TO_DELETE, 5
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat.SchemaFileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCHEMA_FILE_FORMAT_UNSPECIFIED, 0
  field :NO_SCHEMA_FILE, 1
  field :AVRO_SCHEMA_FILE, 2
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat.JsonCompression do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :JSON_COMPRESSION_UNSPECIFIED, 0
  field :NO_COMPRESSION, 1
  field :GZIP, 2
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig.FileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FILE_FORMAT_UNSPECIFIED, 0
  field :PARQUET, 1
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig.TableFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TABLE_FORMAT_UNSPECIFIED, 0
  field :ICEBERG, 1
end

defmodule Google.Cloud.Datastream.V1.Stream.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_STARTED, 1
  field :RUNNING, 2
  field :PAUSED, 3
  field :MAINTENANCE, 4
  field :FAILED, 5
  field :FAILED_PERMANENTLY, 6
  field :STARTING, 7
  field :DRAINING, 8
end

defmodule Google.Cloud.Datastream.V1.BackfillJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_STARTED, 1
  field :PENDING, 2
  field :ACTIVE, 3
  field :STOPPED, 4
  field :FAILED, 5
  field :COMPLETED, 6
  field :UNSUPPORTED, 7
end

defmodule Google.Cloud.Datastream.V1.BackfillJob.Trigger do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRIGGER_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Datastream.V1.Validation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_EXECUTED, 1
  field :FAILED, 2
  field :PASSED, 3
  field :WARNING, 4
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage.Level do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :WARNING, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Datastream.V1.OracleProfile.ConnectionAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.OracleProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :database_service, 5, type: :string, json_name: "databaseService", deprecated: false

  field :connection_attributes, 6,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleProfile.ConnectionAttributesEntry,
    json_name: "connectionAttributes",
    map: true

  field :oracle_ssl_config, 7,
    type: Google.Cloud.Datastream.V1.OracleSslConfig,
    json_name: "oracleSslConfig",
    deprecated: false

  field :oracle_asm_config, 8,
    type: Google.Cloud.Datastream.V1.OracleAsmConfig,
    json_name: "oracleAsmConfig",
    deprecated: false

  field :secret_manager_stored_password, 9,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.OracleAsmConfig.ConnectionAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.OracleAsmConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :asm_service, 5, type: :string, json_name: "asmService", deprecated: false

  field :connection_attributes, 6,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleAsmConfig.ConnectionAttributesEntry,
    json_name: "connectionAttributes",
    map: true,
    deprecated: false

  field :oracle_ssl_config, 7,
    type: Google.Cloud.Datastream.V1.OracleSslConfig,
    json_name: "oracleSslConfig",
    deprecated: false

  field :secret_manager_stored_password, 8,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.MysqlProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :ssl_config, 5, type: Google.Cloud.Datastream.V1.MysqlSslConfig, json_name: "sslConfig"

  field :secret_manager_stored_password, 6,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PostgresqlProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :database, 5, type: :string, deprecated: false

  field :secret_manager_stored_password, 6,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false

  field :ssl_config, 7,
    type: Google.Cloud.Datastream.V1.PostgresqlSslConfig,
    json_name: "sslConfig",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SqlServerProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :database, 5, type: :string, deprecated: false

  field :secret_manager_stored_password, 7,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SalesforceProfile.UserCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
  field :password, 2, type: :string, deprecated: false
  field :security_token, 3, type: :string, json_name: "securityToken", deprecated: false

  field :secret_manager_stored_password, 4,
    type: :string,
    json_name: "secretManagerStoredPassword",
    deprecated: false

  field :secret_manager_stored_security_token, 5,
    type: :string,
    json_name: "secretManagerStoredSecurityToken",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SalesforceProfile.Oauth2ClientCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: false
  field :client_secret, 2, type: :string, json_name: "clientSecret", deprecated: false

  field :secret_manager_stored_client_secret, 3,
    type: :string,
    json_name: "secretManagerStoredClientSecret",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SalesforceProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :credentials, 0

  field :domain, 1, type: :string, deprecated: false

  field :user_credentials, 2,
    type: Google.Cloud.Datastream.V1.SalesforceProfile.UserCredentials,
    json_name: "userCredentials",
    oneof: 0

  field :oauth2_client_credentials, 3,
    type: Google.Cloud.Datastream.V1.SalesforceProfile.Oauth2ClientCredentials,
    json_name: "oauth2ClientCredentials",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.GcsProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :root_path, 2, type: :string, json_name: "rootPath"
end

defmodule Google.Cloud.Datastream.V1.BigQueryProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.StaticServiceIpConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.ForwardSshTunnelConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :authentication_method, 0

  field :hostname, 1, type: :string, deprecated: false
  field :username, 2, type: :string, deprecated: false
  field :port, 3, type: :int32
  field :password, 100, type: :string, oneof: 0, deprecated: false
  field :private_key, 101, type: :string, json_name: "privateKey", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.VpcPeeringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vpc, 1, type: :string, deprecated: false
  field :subnet, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PrivateConnection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.PrivateConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Datastream.V1.PrivateConnection.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :state, 6,
    type: Google.Cloud.Datastream.V1.PrivateConnection.State,
    enum: true,
    deprecated: false

  field :error, 7, type: Google.Cloud.Datastream.V1.Error, deprecated: false

  field :satisfies_pzs, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :vpc_peering_config, 100,
    type: Google.Cloud.Datastream.V1.VpcPeeringConfig,
    json_name: "vpcPeeringConfig"
end

defmodule Google.Cloud.Datastream.V1.PrivateConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_connection, 1, type: :string, json_name: "privateConnection", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.Route.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Route do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Datastream.V1.Route.LabelsEntry, map: true
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :destination_address, 6, type: :string, json_name: "destinationAddress", deprecated: false
  field :destination_port, 7, type: :int32, json_name: "destinationPort"
end

defmodule Google.Cloud.Datastream.V1.MysqlSslConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_key, 1, type: :string, json_name: "clientKey", deprecated: false
  field :client_key_set, 2, type: :bool, json_name: "clientKeySet", deprecated: false
  field :client_certificate, 3, type: :string, json_name: "clientCertificate", deprecated: false

  field :client_certificate_set, 4,
    type: :bool,
    json_name: "clientCertificateSet",
    deprecated: false

  field :ca_certificate, 5, type: :string, json_name: "caCertificate", deprecated: false
  field :ca_certificate_set, 6, type: :bool, json_name: "caCertificateSet", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.OracleSslConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ca_certificate, 1, type: :string, json_name: "caCertificate", deprecated: false
  field :ca_certificate_set, 2, type: :bool, json_name: "caCertificateSet", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSslConfig.ServerVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ca_certificate, 1, type: :string, json_name: "caCertificate", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSslConfig.ServerAndClientVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_certificate, 1, type: :string, json_name: "clientCertificate", deprecated: false
  field :client_key, 2, type: :string, json_name: "clientKey", deprecated: false
  field :ca_certificate, 3, type: :string, json_name: "caCertificate", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSslConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encryption_setting, 0

  field :server_verification, 1,
    type: Google.Cloud.Datastream.V1.PostgresqlSslConfig.ServerVerification,
    json_name: "serverVerification",
    oneof: 0

  field :server_and_client_verification, 2,
    type: Google.Cloud.Datastream.V1.PostgresqlSslConfig.ServerAndClientVerification,
    json_name: "serverAndClientVerification",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.ConnectionProfile.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.ConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :profile, 0

  oneof :connectivity, 1

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Datastream.V1.ConnectionProfile.LabelsEntry,
    map: true

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :satisfies_pzs, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :oracle_profile, 100,
    type: Google.Cloud.Datastream.V1.OracleProfile,
    json_name: "oracleProfile",
    oneof: 0

  field :gcs_profile, 101,
    type: Google.Cloud.Datastream.V1.GcsProfile,
    json_name: "gcsProfile",
    oneof: 0

  field :mysql_profile, 102,
    type: Google.Cloud.Datastream.V1.MysqlProfile,
    json_name: "mysqlProfile",
    oneof: 0

  field :bigquery_profile, 103,
    type: Google.Cloud.Datastream.V1.BigQueryProfile,
    json_name: "bigqueryProfile",
    oneof: 0

  field :postgresql_profile, 104,
    type: Google.Cloud.Datastream.V1.PostgresqlProfile,
    json_name: "postgresqlProfile",
    oneof: 0

  field :sql_server_profile, 105,
    type: Google.Cloud.Datastream.V1.SqlServerProfile,
    json_name: "sqlServerProfile",
    oneof: 0

  field :salesforce_profile, 107,
    type: Google.Cloud.Datastream.V1.SalesforceProfile,
    json_name: "salesforceProfile",
    oneof: 0

  field :static_service_ip_connectivity, 200,
    type: Google.Cloud.Datastream.V1.StaticServiceIpConnectivity,
    json_name: "staticServiceIpConnectivity",
    oneof: 1

  field :forward_ssh_connectivity, 201,
    type: Google.Cloud.Datastream.V1.ForwardSshTunnelConnectivity,
    json_name: "forwardSshConnectivity",
    oneof: 1

  field :private_connectivity, 202,
    type: Google.Cloud.Datastream.V1.PrivateConnectivity,
    json_name: "privateConnectivity",
    oneof: 1
end

defmodule Google.Cloud.Datastream.V1.OracleColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :length, 3, type: :int32
  field :precision, 4, type: :int32
  field :scale, 5, type: :int32
  field :encoding, 6, type: :string
  field :primary_key, 7, type: :bool, json_name: "primaryKey"
  field :nullable, 8, type: :bool
  field :ordinal_position, 9, type: :int32, json_name: "ordinalPosition"
end

defmodule Google.Cloud.Datastream.V1.OracleTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string

  field :oracle_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleColumn,
    json_name: "oracleColumns"
end

defmodule Google.Cloud.Datastream.V1.OracleSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string

  field :oracle_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleTable,
    json_name: "oracleTables"
end

defmodule Google.Cloud.Datastream.V1.OracleRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oracle_schemas, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleSchema,
    json_name: "oracleSchemas"
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.DropLargeObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.StreamLargeObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.LogMiner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser.OracleAsmLogFileAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser.LogFileDirectories do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :online_log_directory, 1,
    type: :string,
    json_name: "onlineLogDirectory",
    deprecated: false

  field :archived_log_directory, 2,
    type: :string,
    json_name: "archivedLogDirectory",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :log_file_access, 0

  field :oracle_asm_log_file_access, 1,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser.OracleAsmLogFileAccess,
    json_name: "oracleAsmLogFileAccess",
    oneof: 0

  field :log_file_directories, 2,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser.LogFileDirectories,
    json_name: "logFileDirectories",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :large_objects_handling, 0

  oneof :cdc_method, 1

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "excludeObjects"

  field :max_concurrent_cdc_tasks, 3, type: :int32, json_name: "maxConcurrentCdcTasks"
  field :max_concurrent_backfill_tasks, 4, type: :int32, json_name: "maxConcurrentBackfillTasks"

  field :drop_large_objects, 100,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.DropLargeObjects,
    json_name: "dropLargeObjects",
    oneof: 0

  field :stream_large_objects, 102,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.StreamLargeObjects,
    json_name: "streamLargeObjects",
    oneof: 0

  field :log_miner, 103,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.LogMiner,
    json_name: "logMiner",
    oneof: 1

  field :binary_log_parser, 104,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig.BinaryLogParser,
    json_name: "binaryLogParser",
    oneof: 1
end

defmodule Google.Cloud.Datastream.V1.PostgresqlColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :length, 3, type: :int32
  field :precision, 4, type: :int32
  field :scale, 5, type: :int32
  field :primary_key, 7, type: :bool, json_name: "primaryKey"
  field :nullable, 8, type: :bool
  field :ordinal_position, 9, type: :int32, json_name: "ordinalPosition"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string

  field :postgresql_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlColumn,
    json_name: "postgresqlColumns"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string

  field :postgresql_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlTable,
    json_name: "postgresqlTables"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :postgresql_schemas, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlSchema,
    json_name: "postgresqlSchemas"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.PostgresqlRdbms,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.PostgresqlRdbms,
    json_name: "excludeObjects"

  field :replication_slot, 3, type: :string, json_name: "replicationSlot", deprecated: false
  field :publication, 4, type: :string, deprecated: false
  field :max_concurrent_backfill_tasks, 5, type: :int32, json_name: "maxConcurrentBackfillTasks"
end

defmodule Google.Cloud.Datastream.V1.SqlServerColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :length, 3, type: :int32
  field :precision, 4, type: :int32
  field :scale, 5, type: :int32
  field :primary_key, 6, type: :bool, json_name: "primaryKey"
  field :nullable, 7, type: :bool
  field :ordinal_position, 8, type: :int32, json_name: "ordinalPosition"
end

defmodule Google.Cloud.Datastream.V1.SqlServerTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string
  field :columns, 2, repeated: true, type: Google.Cloud.Datastream.V1.SqlServerColumn
end

defmodule Google.Cloud.Datastream.V1.SqlServerSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string
  field :tables, 2, repeated: true, type: Google.Cloud.Datastream.V1.SqlServerTable
end

defmodule Google.Cloud.Datastream.V1.SqlServerRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Cloud.Datastream.V1.SqlServerSchema
end

defmodule Google.Cloud.Datastream.V1.SqlServerSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cdc_method, 0

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.SqlServerRdbms,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.SqlServerRdbms,
    json_name: "excludeObjects"

  field :max_concurrent_cdc_tasks, 3, type: :int32, json_name: "maxConcurrentCdcTasks"
  field :max_concurrent_backfill_tasks, 4, type: :int32, json_name: "maxConcurrentBackfillTasks"

  field :transaction_logs, 101,
    type: Google.Cloud.Datastream.V1.SqlServerTransactionLogs,
    json_name: "transactionLogs",
    oneof: 0

  field :change_tables, 102,
    type: Google.Cloud.Datastream.V1.SqlServerChangeTables,
    json_name: "changeTables",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.SqlServerTransactionLogs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.SqlServerChangeTables do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.MysqlColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :length, 3, type: :int32
  field :collation, 4, type: :string
  field :primary_key, 5, type: :bool, json_name: "primaryKey"
  field :nullable, 6, type: :bool
  field :ordinal_position, 7, type: :int32, json_name: "ordinalPosition"
  field :precision, 8, type: :int32
  field :scale, 9, type: :int32
end

defmodule Google.Cloud.Datastream.V1.MysqlTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string

  field :mysql_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlColumn,
    json_name: "mysqlColumns"
end

defmodule Google.Cloud.Datastream.V1.MysqlDatabase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string

  field :mysql_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlTable,
    json_name: "mysqlTables"
end

defmodule Google.Cloud.Datastream.V1.MysqlRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mysql_databases, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlDatabase,
    json_name: "mysqlDatabases"
end

defmodule Google.Cloud.Datastream.V1.MysqlSourceConfig.BinaryLogPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.MysqlSourceConfig.Gtid do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.MysqlSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cdc_method, 0

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "excludeObjects"

  field :max_concurrent_cdc_tasks, 3, type: :int32, json_name: "maxConcurrentCdcTasks"
  field :max_concurrent_backfill_tasks, 4, type: :int32, json_name: "maxConcurrentBackfillTasks"

  field :binary_log_position, 101,
    type: Google.Cloud.Datastream.V1.MysqlSourceConfig.BinaryLogPosition,
    json_name: "binaryLogPosition",
    oneof: 0

  field :gtid, 102, type: Google.Cloud.Datastream.V1.MysqlSourceConfig.Gtid, oneof: 0
end

defmodule Google.Cloud.Datastream.V1.SalesforceSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.SalesforceOrg,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.SalesforceOrg,
    json_name: "excludeObjects"

  field :polling_interval, 3,
    type: Google.Protobuf.Duration,
    json_name: "pollingInterval",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SalesforceOrg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :objects, 1, repeated: true, type: Google.Cloud.Datastream.V1.SalesforceObject
end

defmodule Google.Cloud.Datastream.V1.SalesforceObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object_name, 1, type: :string, json_name: "objectName"
  field :fields, 2, repeated: true, type: Google.Cloud.Datastream.V1.SalesforceField
end

defmodule Google.Cloud.Datastream.V1.SalesforceField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :nillable, 3, type: :bool
end

defmodule Google.Cloud.Datastream.V1.SourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_stream_config, 0

  field :source_connection_profile, 1,
    type: :string,
    json_name: "sourceConnectionProfile",
    deprecated: false

  field :oracle_source_config, 100,
    type: Google.Cloud.Datastream.V1.OracleSourceConfig,
    json_name: "oracleSourceConfig",
    oneof: 0

  field :mysql_source_config, 101,
    type: Google.Cloud.Datastream.V1.MysqlSourceConfig,
    json_name: "mysqlSourceConfig",
    oneof: 0

  field :postgresql_source_config, 102,
    type: Google.Cloud.Datastream.V1.PostgresqlSourceConfig,
    json_name: "postgresqlSourceConfig",
    oneof: 0

  field :sql_server_source_config, 103,
    type: Google.Cloud.Datastream.V1.SqlServerSourceConfig,
    json_name: "sqlServerSourceConfig",
    oneof: 0

  field :salesforce_source_config, 104,
    type: Google.Cloud.Datastream.V1.SalesforceSourceConfig,
    json_name: "salesforceSourceConfig",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.AvroFileFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_file_format, 1,
    type: Google.Cloud.Datastream.V1.JsonFileFormat.SchemaFileFormat,
    json_name: "schemaFileFormat",
    enum: true

  field :compression, 2,
    type: Google.Cloud.Datastream.V1.JsonFileFormat.JsonCompression,
    enum: true
end

defmodule Google.Cloud.Datastream.V1.GcsDestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :file_format, 0

  field :path, 1, type: :string
  field :file_rotation_mb, 2, type: :int32, json_name: "fileRotationMb"

  field :file_rotation_interval, 3,
    type: Google.Protobuf.Duration,
    json_name: "fileRotationInterval"

  field :avro_file_format, 100,
    type: Google.Cloud.Datastream.V1.AvroFileFormat,
    json_name: "avroFileFormat",
    oneof: 0

  field :json_file_format, 101,
    type: Google.Cloud.Datastream.V1.JsonFileFormat,
    json_name: "jsonFileFormat",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SingleTargetDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets.DatasetTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :dataset_id_prefix, 2, type: :string, json_name: "datasetIdPrefix"
  field :kms_key_name, 3, type: :string, json_name: "kmsKeyName"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_template, 2,
    type:
      Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets.DatasetTemplate,
    json_name: "datasetTemplate"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :root_path, 2, type: :string, json_name: "rootPath"
  field :connection_name, 3, type: :string, json_name: "connectionName", deprecated: false

  field :file_format, 4,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig.FileFormat,
    json_name: "fileFormat",
    enum: true,
    deprecated: false

  field :table_format, 5,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig.TableFormat,
    json_name: "tableFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.AppendOnly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.Merge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dataset_config, 0

  oneof :write_mode, 1

  field :single_target_dataset, 201,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SingleTargetDataset,
    json_name: "singleTargetDataset",
    oneof: 0

  field :source_hierarchy_datasets, 202,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets,
    json_name: "sourceHierarchyDatasets",
    oneof: 0

  field :data_freshness, 300, type: Google.Protobuf.Duration, json_name: "dataFreshness"

  field :blmt_config, 1,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.BlmtConfig,
    json_name: "blmtConfig",
    deprecated: false

  field :merge, 301, type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.Merge, oneof: 1

  field :append_only, 302,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.AppendOnly,
    json_name: "appendOnly",
    oneof: 1
end

defmodule Google.Cloud.Datastream.V1.DestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination_stream_config, 0

  field :destination_connection_profile, 1,
    type: :string,
    json_name: "destinationConnectionProfile",
    deprecated: false

  field :gcs_destination_config, 100,
    type: Google.Cloud.Datastream.V1.GcsDestinationConfig,
    json_name: "gcsDestinationConfig",
    oneof: 0

  field :bigquery_destination_config, 101,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig,
    json_name: "bigqueryDestinationConfig",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.Stream.BackfillAllStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :excluded_objects, 0

  field :oracle_excluded_objects, 1,
    type: Google.Cloud.Datastream.V1.OracleRdbms,
    json_name: "oracleExcludedObjects",
    oneof: 0

  field :mysql_excluded_objects, 2,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "mysqlExcludedObjects",
    oneof: 0

  field :postgresql_excluded_objects, 3,
    type: Google.Cloud.Datastream.V1.PostgresqlRdbms,
    json_name: "postgresqlExcludedObjects",
    oneof: 0

  field :sql_server_excluded_objects, 4,
    type: Google.Cloud.Datastream.V1.SqlServerRdbms,
    json_name: "sqlServerExcludedObjects",
    oneof: 0

  field :salesforce_excluded_objects, 5,
    type: Google.Cloud.Datastream.V1.SalesforceOrg,
    json_name: "salesforceExcludedObjects",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.Stream.BackfillNoneStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.Stream.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Stream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :backfill_strategy, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Datastream.V1.Stream.LabelsEntry, map: true
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :source_config, 6,
    type: Google.Cloud.Datastream.V1.SourceConfig,
    json_name: "sourceConfig",
    deprecated: false

  field :destination_config, 7,
    type: Google.Cloud.Datastream.V1.DestinationConfig,
    json_name: "destinationConfig",
    deprecated: false

  field :state, 8, type: Google.Cloud.Datastream.V1.Stream.State, enum: true

  field :backfill_all, 101,
    type: Google.Cloud.Datastream.V1.Stream.BackfillAllStrategy,
    json_name: "backfillAll",
    oneof: 0

  field :backfill_none, 102,
    type: Google.Cloud.Datastream.V1.Stream.BackfillNoneStrategy,
    json_name: "backfillNone",
    oneof: 0

  field :errors, 9, repeated: true, type: Google.Cloud.Datastream.V1.Error, deprecated: false

  field :customer_managed_encryption_key, 10,
    proto3_optional: true,
    type: :string,
    json_name: "customerManagedEncryptionKey",
    deprecated: false

  field :last_recovery_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "lastRecoveryTime",
    deprecated: false

  field :satisfies_pzs, 15,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 16,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.StreamObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :errors, 6, repeated: true, type: Google.Cloud.Datastream.V1.Error, deprecated: false
  field :backfill_job, 7, type: Google.Cloud.Datastream.V1.BackfillJob, json_name: "backfillJob"

  field :source_object, 8,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier,
    json_name: "sourceObject"
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.OracleObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.PostgresqlObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.MysqlObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.SqlServerObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.SalesforceObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object_name, 1, type: :string, json_name: "objectName", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_identifier, 0

  field :oracle_identifier, 1,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier.OracleObjectIdentifier,
    json_name: "oracleIdentifier",
    oneof: 0

  field :mysql_identifier, 2,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier.MysqlObjectIdentifier,
    json_name: "mysqlIdentifier",
    oneof: 0

  field :postgresql_identifier, 3,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier.PostgresqlObjectIdentifier,
    json_name: "postgresqlIdentifier",
    oneof: 0

  field :sql_server_identifier, 4,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier.SqlServerObjectIdentifier,
    json_name: "sqlServerIdentifier",
    oneof: 0

  field :salesforce_identifier, 5,
    type: Google.Cloud.Datastream.V1.SourceObjectIdentifier.SalesforceObjectIdentifier,
    json_name: "salesforceIdentifier",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.BackfillJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Datastream.V1.BackfillJob.State,
    enum: true,
    deprecated: false

  field :trigger, 2, type: Google.Cloud.Datastream.V1.BackfillJob.Trigger, enum: true

  field :last_start_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastStartTime",
    deprecated: false

  field :last_end_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastEndTime",
    deprecated: false

  field :errors, 5, repeated: true, type: Google.Cloud.Datastream.V1.Error, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.Error.DetailsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reason, 1, type: :string
  field :error_uuid, 2, type: :string, json_name: "errorUuid"
  field :message, 3, type: :string
  field :error_time, 4, type: Google.Protobuf.Timestamp, json_name: "errorTime"

  field :details, 5,
    repeated: true,
    type: Google.Cloud.Datastream.V1.Error.DetailsEntry,
    map: true
end

defmodule Google.Cloud.Datastream.V1.ValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :validations, 1, repeated: true, type: Google.Cloud.Datastream.V1.Validation
end

defmodule Google.Cloud.Datastream.V1.Validation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :description, 1, type: :string

  field :state, 2,
    type: Google.Cloud.Datastream.V1.Validation.State,
    enum: true,
    deprecated: false

  field :message, 3, repeated: true, type: Google.Cloud.Datastream.V1.ValidationMessage
  field :code, 4, type: :string
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :level, 2, type: Google.Cloud.Datastream.V1.ValidationMessage.Level, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Datastream.V1.ValidationMessage.MetadataEntry,
    map: true

  field :code, 4, type: :string
end

defmodule Google.Cloud.Datastream.V1.CdcStrategy.MostRecentStartPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.CdcStrategy.NextAvailableStartPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.CdcStrategy.SpecificStartPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :position, 0

  field :mysql_log_position, 101,
    type: Google.Cloud.Datastream.V1.MysqlLogPosition,
    json_name: "mysqlLogPosition",
    oneof: 0

  field :oracle_scn_position, 102,
    type: Google.Cloud.Datastream.V1.OracleScnPosition,
    json_name: "oracleScnPosition",
    oneof: 0

  field :sql_server_lsn_position, 103,
    type: Google.Cloud.Datastream.V1.SqlServerLsnPosition,
    json_name: "sqlServerLsnPosition",
    oneof: 0

  field :mysql_gtid_position, 104,
    type: Google.Cloud.Datastream.V1.MysqlGtidPosition,
    json_name: "mysqlGtidPosition",
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1.CdcStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :start_position, 0

  field :most_recent_start_position, 101,
    type: Google.Cloud.Datastream.V1.CdcStrategy.MostRecentStartPosition,
    json_name: "mostRecentStartPosition",
    oneof: 0,
    deprecated: false

  field :next_available_start_position, 102,
    type: Google.Cloud.Datastream.V1.CdcStrategy.NextAvailableStartPosition,
    json_name: "nextAvailableStartPosition",
    oneof: 0,
    deprecated: false

  field :specific_start_position, 103,
    type: Google.Cloud.Datastream.V1.CdcStrategy.SpecificStartPosition,
    json_name: "specificStartPosition",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SqlServerLsnPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lsn, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.OracleScnPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scn, 1, type: :int64, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.MysqlLogPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :log_file, 1, type: :string, json_name: "logFile", deprecated: false

  field :log_position, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "logPosition",
    deprecated: false
end

defmodule Google.Cloud.Datastream.V1.MysqlGtidPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gtid_set, 1, type: :string, json_name: "gtidSet", deprecated: false
end
