defmodule Google.Cloud.Datastream.V1.PrivateConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :FAILED, 3
  field :DELETING, 4
  field :FAILED_TO_DELETE, 5
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat.SchemaFileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SCHEMA_FILE_FORMAT_UNSPECIFIED, 0
  field :NO_SCHEMA_FILE, 1
  field :AVRO_SCHEMA_FILE, 2
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat.JsonCompression do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :JSON_COMPRESSION_UNSPECIFIED, 0
  field :NO_COMPRESSION, 1
  field :GZIP, 2
end

defmodule Google.Cloud.Datastream.V1.Stream.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRIGGER_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Datastream.V1.Validation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_EXECUTED, 1
  field :FAILED, 2
  field :PASSED, 3
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage.Level do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LEVEL_UNSPECIFIED, 0
  field :WARNING, 1
  field :ERROR, 2
end

defmodule Google.Cloud.Datastream.V1.OracleProfile.ConnectionAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.OracleProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Datastream.V1.MysqlProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :ssl_config, 5, type: Google.Cloud.Datastream.V1.MysqlSslConfig, json_name: "sslConfig"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hostname, 1, type: :string, deprecated: false
  field :port, 2, type: :int32
  field :username, 3, type: :string, deprecated: false
  field :password, 4, type: :string, deprecated: false
  field :database, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.GcsProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :root_path, 2, type: :string, json_name: "rootPath"
end

defmodule Google.Cloud.Datastream.V1.BigQueryProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.StaticServiceIpConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.ForwardSshTunnelConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :authentication_method, 0

  field :hostname, 1, type: :string, deprecated: false
  field :username, 2, type: :string, deprecated: false
  field :port, 3, type: :int32
  field :password, 100, type: :string, oneof: 0, deprecated: false
  field :private_key, 101, type: :string, json_name: "privateKey", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.VpcPeeringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vpc, 1, type: :string, deprecated: false
  field :subnet, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.PrivateConnection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.PrivateConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :vpc_peering_config, 100,
    type: Google.Cloud.Datastream.V1.VpcPeeringConfig,
    json_name: "vpcPeeringConfig"
end

defmodule Google.Cloud.Datastream.V1.PrivateConnectivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_connection, 1, type: :string, json_name: "privateConnection", deprecated: false
end

defmodule Google.Cloud.Datastream.V1.Route.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Route do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Datastream.V1.ConnectionProfile.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.ConnectionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: :string

  field :oracle_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleColumn,
    json_name: "oracleColumns"
end

defmodule Google.Cloud.Datastream.V1.OracleSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schema, 1, type: :string

  field :oracle_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleTable,
    json_name: "oracleTables"
end

defmodule Google.Cloud.Datastream.V1.OracleRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :oracle_schemas, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.OracleSchema,
    json_name: "oracleSchemas"
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.DropLargeObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig.StreamLargeObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.OracleSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :large_objects_handling, 0

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
end

defmodule Google.Cloud.Datastream.V1.PostgresqlColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: :string

  field :postgresql_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlColumn,
    json_name: "postgresqlColumns"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schema, 1, type: :string

  field :postgresql_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlTable,
    json_name: "postgresqlTables"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :postgresql_schemas, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.PostgresqlSchema,
    json_name: "postgresqlSchemas"
end

defmodule Google.Cloud.Datastream.V1.PostgresqlSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Datastream.V1.MysqlColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :table, 1, type: :string

  field :mysql_columns, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlColumn,
    json_name: "mysqlColumns"
end

defmodule Google.Cloud.Datastream.V1.MysqlDatabase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string

  field :mysql_tables, 2,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlTable,
    json_name: "mysqlTables"
end

defmodule Google.Cloud.Datastream.V1.MysqlRdbms do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mysql_databases, 1,
    repeated: true,
    type: Google.Cloud.Datastream.V1.MysqlDatabase,
    json_name: "mysqlDatabases"
end

defmodule Google.Cloud.Datastream.V1.MysqlSourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :include_objects, 1,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "includeObjects"

  field :exclude_objects, 2,
    type: Google.Cloud.Datastream.V1.MysqlRdbms,
    json_name: "excludeObjects"

  field :max_concurrent_cdc_tasks, 3, type: :int32, json_name: "maxConcurrentCdcTasks"
  field :max_concurrent_backfill_tasks, 4, type: :int32, json_name: "maxConcurrentBackfillTasks"
end

defmodule Google.Cloud.Datastream.V1.SourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Datastream.V1.AvroFileFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.JsonFileFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets.DatasetTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :dataset_id_prefix, 2, type: :string, json_name: "datasetIdPrefix"
  field :kms_key_name, 3, type: :string, json_name: "kmsKeyName"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_template, 2,
    type:
      Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets.DatasetTemplate,
    json_name: "datasetTemplate"
end

defmodule Google.Cloud.Datastream.V1.BigQueryDestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :dataset_config, 0

  field :single_target_dataset, 201,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SingleTargetDataset,
    json_name: "singleTargetDataset",
    oneof: 0

  field :source_hierarchy_datasets, 202,
    type: Google.Cloud.Datastream.V1.BigQueryDestinationConfig.SourceHierarchyDatasets,
    json_name: "sourceHierarchyDatasets",
    oneof: 0

  field :data_freshness, 300, type: Google.Protobuf.Duration, json_name: "dataFreshness"
end

defmodule Google.Cloud.Datastream.V1.DestinationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Datastream.V1.Stream.BackfillNoneStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Datastream.V1.Stream.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Stream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Datastream.V1.StreamObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.PostgresqlObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schema, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier.MysqlObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :table, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Datastream.V1.SourceObjectIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Datastream.V1.BackfillJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Datastream.V1.BackfillJob.State, enum: true
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

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :validations, 1, repeated: true, type: Google.Cloud.Datastream.V1.Validation
end

defmodule Google.Cloud.Datastream.V1.Validation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :description, 1, type: :string
  field :state, 2, type: Google.Cloud.Datastream.V1.Validation.State, enum: true
  field :message, 3, repeated: true, type: Google.Cloud.Datastream.V1.ValidationMessage
  field :code, 4, type: :string
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1.ValidationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :message, 1, type: :string
  field :level, 2, type: Google.Cloud.Datastream.V1.ValidationMessage.Level, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Datastream.V1.ValidationMessage.MetadataEntry,
    map: true

  field :code, 4, type: :string
end