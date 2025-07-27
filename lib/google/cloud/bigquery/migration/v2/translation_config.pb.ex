defmodule Google.Cloud.Bigquery.Migration.V2.TeradataDialect.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :SQL, 1
  field :BTEQ, 2
end

defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingKey.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DATABASE, 1
  field :SCHEMA, 2
  field :RELATION, 3
  field :ATTRIBUTE, 4
  field :RELATION_ALIAS, 5
  field :ATTRIBUTE_ALIAS, 6
  field :FUNCTION, 7
end

defmodule Google.Cloud.Bigquery.Migration.V2.TranslationConfigDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_location, 0

  oneof :target_location, 1

  oneof :output_name_mapping, 2

  field :gcs_source_path, 1, type: :string, json_name: "gcsSourcePath", oneof: 0
  field :gcs_target_path, 2, type: :string, json_name: "gcsTargetPath", oneof: 1

  field :name_mapping_list, 5,
    type: Google.Cloud.Bigquery.Migration.V2.ObjectNameMappingList,
    json_name: "nameMappingList",
    oneof: 2

  field :source_dialect, 3,
    type: Google.Cloud.Bigquery.Migration.V2.Dialect,
    json_name: "sourceDialect"

  field :target_dialect, 4,
    type: Google.Cloud.Bigquery.Migration.V2.Dialect,
    json_name: "targetDialect"

  field :source_env, 6, type: Google.Cloud.Bigquery.Migration.V2.SourceEnv, json_name: "sourceEnv"
  field :request_source, 8, type: :string, json_name: "requestSource"
  field :target_types, 9, repeated: true, type: :string, json_name: "targetTypes"
end

defmodule Google.Cloud.Bigquery.Migration.V2.Dialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dialect_value, 0

  field :bigquery_dialect, 1,
    type: Google.Cloud.Bigquery.Migration.V2.BigQueryDialect,
    json_name: "bigqueryDialect",
    oneof: 0

  field :hiveql_dialect, 2,
    type: Google.Cloud.Bigquery.Migration.V2.HiveQLDialect,
    json_name: "hiveqlDialect",
    oneof: 0

  field :redshift_dialect, 3,
    type: Google.Cloud.Bigquery.Migration.V2.RedshiftDialect,
    json_name: "redshiftDialect",
    oneof: 0

  field :teradata_dialect, 4,
    type: Google.Cloud.Bigquery.Migration.V2.TeradataDialect,
    json_name: "teradataDialect",
    oneof: 0

  field :oracle_dialect, 5,
    type: Google.Cloud.Bigquery.Migration.V2.OracleDialect,
    json_name: "oracleDialect",
    oneof: 0

  field :sparksql_dialect, 6,
    type: Google.Cloud.Bigquery.Migration.V2.SparkSQLDialect,
    json_name: "sparksqlDialect",
    oneof: 0

  field :snowflake_dialect, 7,
    type: Google.Cloud.Bigquery.Migration.V2.SnowflakeDialect,
    json_name: "snowflakeDialect",
    oneof: 0

  field :netezza_dialect, 8,
    type: Google.Cloud.Bigquery.Migration.V2.NetezzaDialect,
    json_name: "netezzaDialect",
    oneof: 0

  field :azure_synapse_dialect, 9,
    type: Google.Cloud.Bigquery.Migration.V2.AzureSynapseDialect,
    json_name: "azureSynapseDialect",
    oneof: 0

  field :vertica_dialect, 10,
    type: Google.Cloud.Bigquery.Migration.V2.VerticaDialect,
    json_name: "verticaDialect",
    oneof: 0

  field :sql_server_dialect, 11,
    type: Google.Cloud.Bigquery.Migration.V2.SQLServerDialect,
    json_name: "sqlServerDialect",
    oneof: 0

  field :postgresql_dialect, 12,
    type: Google.Cloud.Bigquery.Migration.V2.PostgresqlDialect,
    json_name: "postgresqlDialect",
    oneof: 0

  field :presto_dialect, 13,
    type: Google.Cloud.Bigquery.Migration.V2.PrestoDialect,
    json_name: "prestoDialect",
    oneof: 0

  field :mysql_dialect, 14,
    type: Google.Cloud.Bigquery.Migration.V2.MySQLDialect,
    json_name: "mysqlDialect",
    oneof: 0

  field :db2_dialect, 15,
    type: Google.Cloud.Bigquery.Migration.V2.DB2Dialect,
    json_name: "db2Dialect",
    oneof: 0

  field :sqlite_dialect, 16,
    type: Google.Cloud.Bigquery.Migration.V2.SQLiteDialect,
    json_name: "sqliteDialect",
    oneof: 0

  field :greenplum_dialect, 17,
    type: Google.Cloud.Bigquery.Migration.V2.GreenplumDialect,
    json_name: "greenplumDialect",
    oneof: 0
end

defmodule Google.Cloud.Bigquery.Migration.V2.BigQueryDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.HiveQLDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.RedshiftDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.TeradataDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: Google.Cloud.Bigquery.Migration.V2.TeradataDialect.Mode, enum: true
end

defmodule Google.Cloud.Bigquery.Migration.V2.OracleDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.SparkSQLDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.SnowflakeDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.NetezzaDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.AzureSynapseDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.VerticaDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.SQLServerDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.PostgresqlDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.PrestoDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.MySQLDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.DB2Dialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.SQLiteDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.GreenplumDialect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Bigquery.Migration.V2.ObjectNameMappingList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name_map, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ObjectNameMapping,
    json_name: "nameMap"
end

defmodule Google.Cloud.Bigquery.Migration.V2.ObjectNameMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Bigquery.Migration.V2.NameMappingKey
  field :target, 2, type: Google.Cloud.Bigquery.Migration.V2.NameMappingValue
end

defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Bigquery.Migration.V2.NameMappingKey.Type, enum: true
  field :database, 2, type: :string
  field :schema, 3, type: :string
  field :relation, 4, type: :string
  field :attribute, 5, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string
  field :schema, 2, type: :string
  field :relation, 3, type: :string
  field :attribute, 4, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceEnv do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase"
  field :schema_search_path, 2, repeated: true, type: :string, json_name: "schemaSearchPath"

  field :metadata_store_dataset, 3,
    type: :string,
    json_name: "metadataStoreDataset",
    deprecated: false
end
