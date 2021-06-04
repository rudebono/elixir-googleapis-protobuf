defmodule Google.Cloud.Datastream.V1alpha1.GcsFileFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :GCS_FILE_FORMAT_UNSPECIFIED | :AVRO

  field :GCS_FILE_FORMAT_UNSPECIFIED, 0

  field :AVRO, 1
end

defmodule Google.Cloud.Datastream.V1alpha1.SchemaFileFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SCHEMA_FILE_FORMAT_UNSPECIFIED | :NO_SCHEMA_FILE | :AVRO_SCHEMA_FILE

  field :SCHEMA_FILE_FORMAT_UNSPECIFIED, 0

  field :NO_SCHEMA_FILE, 1

  field :AVRO_SCHEMA_FILE, 2
end

defmodule Google.Cloud.Datastream.V1alpha1.PrivateConnection.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :CREATED | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :CREATED, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Datastream.V1alpha1.JsonFileFormat.JsonCompression do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :JSON_COMPRESSION_UNSPECIFIED | :NO_COMPRESSION | :GZIP

  field :JSON_COMPRESSION_UNSPECIFIED, 0

  field :NO_COMPRESSION, 1

  field :GZIP, 2
end

defmodule Google.Cloud.Datastream.V1alpha1.Stream.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATED
          | :RUNNING
          | :PAUSED
          | :MAINTENANCE
          | :FAILED
          | :FAILED_PERMANENTLY
          | :STARTING
          | :DRAINING

  field :STATE_UNSPECIFIED, 0

  field :CREATED, 1

  field :RUNNING, 2

  field :PAUSED, 3

  field :MAINTENANCE, 4

  field :FAILED, 5

  field :FAILED_PERMANENTLY, 6

  field :STARTING, 7

  field :DRAINING, 8
end

defmodule Google.Cloud.Datastream.V1alpha1.Validation.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATUS_UNSPECIFIED | :NOT_EXECUTED | :FAILED | :PASSED

  field :STATUS_UNSPECIFIED, 0

  field :NOT_EXECUTED, 1

  field :FAILED, 2

  field :PASSED, 3
end

defmodule Google.Cloud.Datastream.V1alpha1.ValidationMessage.Level do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LEVEL_UNSPECIFIED | :WARNING | :ERROR

  field :LEVEL_UNSPECIFIED, 0

  field :WARNING, 1

  field :ERROR, 2
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleProfile.ConnectionAttributesEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.OracleProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hostname: String.t(),
          port: integer,
          username: String.t(),
          password: String.t(),
          database_service: String.t(),
          connection_attributes: %{String.t() => String.t()}
        }

  defstruct [:hostname, :port, :username, :password, :database_service, :connection_attributes]

  field :hostname, 1, type: :string
  field :port, 2, type: :int32
  field :username, 3, type: :string
  field :password, 4, type: :string
  field :database_service, 5, type: :string

  field :connection_attributes, 6,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.OracleProfile.ConnectionAttributesEntry,
    map: true
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hostname: String.t(),
          port: integer,
          username: String.t(),
          password: String.t(),
          ssl_config: Google.Cloud.Datastream.V1alpha1.MysqlSslConfig.t() | nil
        }

  defstruct [:hostname, :port, :username, :password, :ssl_config]

  field :hostname, 1, type: :string
  field :port, 2, type: :int32
  field :username, 3, type: :string
  field :password, 4, type: :string
  field :ssl_config, 5, type: Google.Cloud.Datastream.V1alpha1.MysqlSslConfig
end

defmodule Google.Cloud.Datastream.V1alpha1.GcsProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          root_path: String.t()
        }

  defstruct [:bucket_name, :root_path]

  field :bucket_name, 1, type: :string
  field :root_path, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.NoConnectivitySettings do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Datastream.V1alpha1.StaticServiceIpConnectivity do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Datastream.V1alpha1.ForwardSshTunnelConnectivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication_method: {atom, any},
          hostname: String.t(),
          username: String.t(),
          port: integer
        }

  defstruct [:authentication_method, :hostname, :username, :port]

  oneof :authentication_method, 0
  field :hostname, 1, type: :string
  field :username, 2, type: :string
  field :port, 3, type: :int32
  field :password, 100, type: :string, oneof: 0
  field :private_key, 101, type: :string, oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.VpcPeeringConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vpc_name: String.t(),
          subnet: String.t()
        }

  defstruct [:vpc_name, :subnet]

  field :vpc_name, 1, type: :string
  field :subnet, 2, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.PrivateConnection.LabelsEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.PrivateConnection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          state: Google.Cloud.Datastream.V1alpha1.PrivateConnection.State.t(),
          error: Google.Cloud.Datastream.V1alpha1.Error.t() | nil,
          vpc_peering_config: Google.Cloud.Datastream.V1alpha1.VpcPeeringConfig.t() | nil
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :display_name,
    :state,
    :error,
    :vpc_peering_config
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnection.LabelsEntry,
    map: true

  field :display_name, 5, type: :string
  field :state, 6, type: Google.Cloud.Datastream.V1alpha1.PrivateConnection.State, enum: true
  field :error, 7, type: Google.Cloud.Datastream.V1alpha1.Error
  field :vpc_peering_config, 100, type: Google.Cloud.Datastream.V1alpha1.VpcPeeringConfig
end

defmodule Google.Cloud.Datastream.V1alpha1.PrivateConnectivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          private_connection_name: String.t()
        }

  defstruct [:private_connection_name]

  field :private_connection_name, 1, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.Route.LabelsEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.Route do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          destination_address: String.t(),
          destination_port: integer
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :labels,
    :display_name,
    :destination_address,
    :destination_port
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.Route.LabelsEntry,
    map: true

  field :display_name, 5, type: :string
  field :destination_address, 6, type: :string
  field :destination_port, 7, type: :int32
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlSslConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          client_key: String.t(),
          client_key_set: boolean,
          client_certificate: String.t(),
          client_certificate_set: boolean,
          ca_certificate: String.t(),
          ca_certificate_set: boolean
        }

  defstruct [
    :client_key,
    :client_key_set,
    :client_certificate,
    :client_certificate_set,
    :ca_certificate,
    :ca_certificate_set
  ]

  field :client_key, 11, type: :string
  field :client_key_set, 12, type: :bool
  field :client_certificate, 13, type: :string
  field :client_certificate_set, 14, type: :bool
  field :ca_certificate, 15, type: :string
  field :ca_certificate_set, 16, type: :bool
end

defmodule Google.Cloud.Datastream.V1alpha1.ConnectionProfile.LabelsEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.ConnectionProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile: {atom, any},
          connectivity: {atom, any},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t()
        }

  defstruct [:profile, :connectivity, :name, :create_time, :update_time, :labels, :display_name]

  oneof :profile, 0
  oneof :connectivity, 1
  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.ConnectionProfile.LabelsEntry,
    map: true

  field :display_name, 5, type: :string
  field :oracle_profile, 100, type: Google.Cloud.Datastream.V1alpha1.OracleProfile, oneof: 0
  field :gcs_profile, 101, type: Google.Cloud.Datastream.V1alpha1.GcsProfile, oneof: 0
  field :mysql_profile, 102, type: Google.Cloud.Datastream.V1alpha1.MysqlProfile, oneof: 0

  field :no_connectivity, 200,
    type: Google.Cloud.Datastream.V1alpha1.NoConnectivitySettings,
    oneof: 1

  field :static_service_ip_connectivity, 201,
    type: Google.Cloud.Datastream.V1alpha1.StaticServiceIpConnectivity,
    oneof: 1

  field :forward_ssh_connectivity, 202,
    type: Google.Cloud.Datastream.V1alpha1.ForwardSshTunnelConnectivity,
    oneof: 1

  field :private_connectivity, 203,
    type: Google.Cloud.Datastream.V1alpha1.PrivateConnectivity,
    oneof: 1
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleColumn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          data_type: String.t(),
          length: integer,
          precision: integer,
          scale: integer,
          encoding: String.t(),
          primary_key: boolean,
          nullable: boolean,
          ordinal_position: integer
        }

  defstruct [
    :column_name,
    :data_type,
    :length,
    :precision,
    :scale,
    :encoding,
    :primary_key,
    :nullable,
    :ordinal_position
  ]

  field :column_name, 1, type: :string
  field :data_type, 2, type: :string
  field :length, 3, type: :int32
  field :precision, 4, type: :int32
  field :scale, 5, type: :int32
  field :encoding, 6, type: :string
  field :primary_key, 7, type: :bool
  field :nullable, 8, type: :bool
  field :ordinal_position, 9, type: :int32
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          oracle_columns: [Google.Cloud.Datastream.V1alpha1.OracleColumn.t()]
        }

  defstruct [:table_name, :oracle_columns]

  field :table_name, 1, type: :string
  field :oracle_columns, 2, repeated: true, type: Google.Cloud.Datastream.V1alpha1.OracleColumn
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema_name: String.t(),
          oracle_tables: [Google.Cloud.Datastream.V1alpha1.OracleTable.t()]
        }

  defstruct [:schema_name, :oracle_tables]

  field :schema_name, 1, type: :string
  field :oracle_tables, 2, repeated: true, type: Google.Cloud.Datastream.V1alpha1.OracleTable
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleRdbms do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oracle_schemas: [Google.Cloud.Datastream.V1alpha1.OracleSchema.t()]
        }

  defstruct [:oracle_schemas]

  field :oracle_schemas, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.OracleSchema
end

defmodule Google.Cloud.Datastream.V1alpha1.OracleSourceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowlist: Google.Cloud.Datastream.V1alpha1.OracleRdbms.t() | nil,
          rejectlist: Google.Cloud.Datastream.V1alpha1.OracleRdbms.t() | nil
        }

  defstruct [:allowlist, :rejectlist]

  field :allowlist, 1, type: Google.Cloud.Datastream.V1alpha1.OracleRdbms
  field :rejectlist, 2, type: Google.Cloud.Datastream.V1alpha1.OracleRdbms
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlColumn do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          data_type: String.t(),
          length: integer,
          collation: String.t(),
          primary_key: boolean,
          nullable: boolean,
          ordinal_position: integer
        }

  defstruct [
    :column_name,
    :data_type,
    :length,
    :collation,
    :primary_key,
    :nullable,
    :ordinal_position
  ]

  field :column_name, 1, type: :string
  field :data_type, 2, type: :string
  field :length, 3, type: :int32
  field :collation, 4, type: :string
  field :primary_key, 5, type: :bool
  field :nullable, 6, type: :bool
  field :ordinal_position, 7, type: :int32
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          table_name: String.t(),
          mysql_columns: [Google.Cloud.Datastream.V1alpha1.MysqlColumn.t()]
        }

  defstruct [:table_name, :mysql_columns]

  field :table_name, 1, type: :string
  field :mysql_columns, 2, repeated: true, type: Google.Cloud.Datastream.V1alpha1.MysqlColumn
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlDatabase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_name: String.t(),
          mysql_tables: [Google.Cloud.Datastream.V1alpha1.MysqlTable.t()]
        }

  defstruct [:database_name, :mysql_tables]

  field :database_name, 1, type: :string
  field :mysql_tables, 2, repeated: true, type: Google.Cloud.Datastream.V1alpha1.MysqlTable
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlRdbms do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mysql_databases: [Google.Cloud.Datastream.V1alpha1.MysqlDatabase.t()]
        }

  defstruct [:mysql_databases]

  field :mysql_databases, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.MysqlDatabase
end

defmodule Google.Cloud.Datastream.V1alpha1.MysqlSourceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowlist: Google.Cloud.Datastream.V1alpha1.MysqlRdbms.t() | nil,
          rejectlist: Google.Cloud.Datastream.V1alpha1.MysqlRdbms.t() | nil
        }

  defstruct [:allowlist, :rejectlist]

  field :allowlist, 1, type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms
  field :rejectlist, 2, type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms
end

defmodule Google.Cloud.Datastream.V1alpha1.SourceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_stream_config: {atom, any},
          source_connection_profile_name: String.t()
        }

  defstruct [:source_stream_config, :source_connection_profile_name]

  oneof :source_stream_config, 0
  field :source_connection_profile_name, 1, type: :string

  field :oracle_source_config, 100,
    type: Google.Cloud.Datastream.V1alpha1.OracleSourceConfig,
    oneof: 0

  field :mysql_source_config, 101,
    type: Google.Cloud.Datastream.V1alpha1.MysqlSourceConfig,
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.AvroFileFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Datastream.V1alpha1.JsonFileFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema_file_format: Google.Cloud.Datastream.V1alpha1.SchemaFileFormat.t(),
          compression: Google.Cloud.Datastream.V1alpha1.JsonFileFormat.JsonCompression.t()
        }

  defstruct [:schema_file_format, :compression]

  field :schema_file_format, 1,
    type: Google.Cloud.Datastream.V1alpha1.SchemaFileFormat,
    enum: true

  field :compression, 2,
    type: Google.Cloud.Datastream.V1alpha1.JsonFileFormat.JsonCompression,
    enum: true
end

defmodule Google.Cloud.Datastream.V1alpha1.GcsDestinationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_format: {atom, any},
          path: String.t(),
          gcs_file_format: Google.Cloud.Datastream.V1alpha1.GcsFileFormat.t(),
          file_rotation_mb: integer,
          file_rotation_interval: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:file_format, :path, :gcs_file_format, :file_rotation_mb, :file_rotation_interval]

  oneof :file_format, 0
  field :path, 1, type: :string

  field :gcs_file_format, 2,
    type: Google.Cloud.Datastream.V1alpha1.GcsFileFormat,
    deprecated: true,
    enum: true

  field :file_rotation_mb, 3, type: :int32
  field :file_rotation_interval, 4, type: Google.Protobuf.Duration
  field :avro_file_format, 100, type: Google.Cloud.Datastream.V1alpha1.AvroFileFormat, oneof: 0
  field :json_file_format, 101, type: Google.Cloud.Datastream.V1alpha1.JsonFileFormat, oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.DestinationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination_stream_config: {atom, any},
          destination_connection_profile_name: String.t()
        }

  defstruct [:destination_stream_config, :destination_connection_profile_name]

  oneof :destination_stream_config, 0
  field :destination_connection_profile_name, 1, type: :string

  field :gcs_destination_config, 100,
    type: Google.Cloud.Datastream.V1alpha1.GcsDestinationConfig,
    oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.Stream.BackfillAllStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          excluded_objects: {atom, any}
        }

  defstruct [:excluded_objects]

  oneof :excluded_objects, 0
  field :oracle_excluded_objects, 1, type: Google.Cloud.Datastream.V1alpha1.OracleRdbms, oneof: 0
  field :mysql_excluded_objects, 2, type: Google.Cloud.Datastream.V1alpha1.MysqlRdbms, oneof: 0
end

defmodule Google.Cloud.Datastream.V1alpha1.Stream.BackfillNoneStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Datastream.V1alpha1.Stream.LabelsEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.Stream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backfill_strategy: {atom, any},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          display_name: String.t(),
          source_config: Google.Cloud.Datastream.V1alpha1.SourceConfig.t() | nil,
          destination_config: Google.Cloud.Datastream.V1alpha1.DestinationConfig.t() | nil,
          state: Google.Cloud.Datastream.V1alpha1.Stream.State.t(),
          errors: [Google.Cloud.Datastream.V1alpha1.Error.t()]
        }

  defstruct [
    :backfill_strategy,
    :name,
    :create_time,
    :update_time,
    :labels,
    :display_name,
    :source_config,
    :destination_config,
    :state,
    :errors
  ]

  oneof :backfill_strategy, 0
  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.Stream.LabelsEntry,
    map: true

  field :display_name, 5, type: :string
  field :source_config, 6, type: Google.Cloud.Datastream.V1alpha1.SourceConfig
  field :destination_config, 7, type: Google.Cloud.Datastream.V1alpha1.DestinationConfig
  field :state, 8, type: Google.Cloud.Datastream.V1alpha1.Stream.State, enum: true

  field :backfill_all, 101,
    type: Google.Cloud.Datastream.V1alpha1.Stream.BackfillAllStrategy,
    oneof: 0

  field :backfill_none, 102,
    type: Google.Cloud.Datastream.V1alpha1.Stream.BackfillNoneStrategy,
    oneof: 0

  field :errors, 9, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Error
end

defmodule Google.Cloud.Datastream.V1alpha1.Error.DetailsEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reason: String.t(),
          error_uuid: String.t(),
          message: String.t(),
          error_time: Google.Protobuf.Timestamp.t() | nil,
          details: %{String.t() => String.t()}
        }

  defstruct [:reason, :error_uuid, :message, :error_time, :details]

  field :reason, 1, type: :string
  field :error_uuid, 2, type: :string
  field :message, 3, type: :string
  field :error_time, 4, type: Google.Protobuf.Timestamp

  field :details, 5,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.Error.DetailsEntry,
    map: true
end

defmodule Google.Cloud.Datastream.V1alpha1.ValidationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validations: [Google.Cloud.Datastream.V1alpha1.Validation.t()]
        }

  defstruct [:validations]

  field :validations, 1, repeated: true, type: Google.Cloud.Datastream.V1alpha1.Validation
end

defmodule Google.Cloud.Datastream.V1alpha1.Validation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          status: Google.Cloud.Datastream.V1alpha1.Validation.Status.t(),
          message: [Google.Cloud.Datastream.V1alpha1.ValidationMessage.t()],
          code: String.t()
        }

  defstruct [:description, :status, :message, :code]

  field :description, 1, type: :string
  field :status, 2, type: Google.Cloud.Datastream.V1alpha1.Validation.Status, enum: true
  field :message, 3, repeated: true, type: Google.Cloud.Datastream.V1alpha1.ValidationMessage
  field :code, 4, type: :string
end

defmodule Google.Cloud.Datastream.V1alpha1.ValidationMessage.MetadataEntry do
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

defmodule Google.Cloud.Datastream.V1alpha1.ValidationMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          level: Google.Cloud.Datastream.V1alpha1.ValidationMessage.Level.t(),
          metadata: %{String.t() => String.t()},
          code: String.t()
        }

  defstruct [:message, :level, :metadata, :code]

  field :message, 1, type: :string
  field :level, 2, type: Google.Cloud.Datastream.V1alpha1.ValidationMessage.Level, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Datastream.V1alpha1.ValidationMessage.MetadataEntry,
    map: true

  field :code, 4, type: :string
end
