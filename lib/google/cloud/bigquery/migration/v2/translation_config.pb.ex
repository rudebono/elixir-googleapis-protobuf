defmodule Google.Cloud.Bigquery.Migration.V2.TeradataDialect.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :SQL | :BTEQ

  field :MODE_UNSPECIFIED, 0
  field :SQL, 1
  field :BTEQ, 2
end
defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingKey.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :DATABASE
          | :SCHEMA
          | :RELATION
          | :ATTRIBUTE
          | :RELATION_ALIAS
          | :ATTRIBUTE_ALIAS
          | :FUNCTION

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_location: {:gcs_source_path, String.t()},
          target_location: {:gcs_target_path, String.t()},
          output_name_mapping:
            {:name_mapping_list,
             Google.Cloud.Bigquery.Migration.V2.ObjectNameMappingList.t() | nil},
          source_dialect: Google.Cloud.Bigquery.Migration.V2.Dialect.t() | nil,
          target_dialect: Google.Cloud.Bigquery.Migration.V2.Dialect.t() | nil,
          source_env: Google.Cloud.Bigquery.Migration.V2.SourceEnv.t() | nil
        }

  defstruct source_location: nil,
            target_location: nil,
            output_name_mapping: nil,
            source_dialect: nil,
            target_dialect: nil,
            source_env: nil

  oneof :source_location, 0
  oneof :target_location, 1
  oneof :output_name_mapping, 2

  field :gcs_source_path, 1, type: :string, json_name: "gcsSourcePath", oneof: 0
  field :gcs_target_path, 2, type: :string, json_name: "gcsTargetPath", oneof: 1

  field :source_dialect, 3,
    type: Google.Cloud.Bigquery.Migration.V2.Dialect,
    json_name: "sourceDialect"

  field :target_dialect, 4,
    type: Google.Cloud.Bigquery.Migration.V2.Dialect,
    json_name: "targetDialect"

  field :name_mapping_list, 5,
    type: Google.Cloud.Bigquery.Migration.V2.ObjectNameMappingList,
    json_name: "nameMappingList",
    oneof: 2

  field :source_env, 6, type: Google.Cloud.Bigquery.Migration.V2.SourceEnv, json_name: "sourceEnv"
end
defmodule Google.Cloud.Bigquery.Migration.V2.Dialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dialect_value:
            {:bigquery_dialect, Google.Cloud.Bigquery.Migration.V2.BigQueryDialect.t() | nil}
            | {:hiveql_dialect, Google.Cloud.Bigquery.Migration.V2.HiveQLDialect.t() | nil}
            | {:redshift_dialect, Google.Cloud.Bigquery.Migration.V2.RedshiftDialect.t() | nil}
            | {:teradata_dialect, Google.Cloud.Bigquery.Migration.V2.TeradataDialect.t() | nil}
            | {:oracle_dialect, Google.Cloud.Bigquery.Migration.V2.OracleDialect.t() | nil}
            | {:sparksql_dialect, Google.Cloud.Bigquery.Migration.V2.SparkSQLDialect.t() | nil}
            | {:snowflake_dialect, Google.Cloud.Bigquery.Migration.V2.SnowflakeDialect.t() | nil}
            | {:netezza_dialect, Google.Cloud.Bigquery.Migration.V2.NetezzaDialect.t() | nil}
            | {:azure_synapse_dialect,
               Google.Cloud.Bigquery.Migration.V2.AzureSynapseDialect.t() | nil}
            | {:vertica_dialect, Google.Cloud.Bigquery.Migration.V2.VerticaDialect.t() | nil}
        }

  defstruct dialect_value: nil

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
end
defmodule Google.Cloud.Bigquery.Migration.V2.BigQueryDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.HiveQLDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.RedshiftDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.TeradataDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Cloud.Bigquery.Migration.V2.TeradataDialect.Mode.t()
        }

  defstruct mode: :MODE_UNSPECIFIED

  field :mode, 1, type: Google.Cloud.Bigquery.Migration.V2.TeradataDialect.Mode, enum: true
end
defmodule Google.Cloud.Bigquery.Migration.V2.OracleDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.SparkSQLDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.SnowflakeDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.NetezzaDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.AzureSynapseDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.VerticaDialect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Bigquery.Migration.V2.ObjectNameMappingList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name_map: [Google.Cloud.Bigquery.Migration.V2.ObjectNameMapping.t()]
        }

  defstruct name_map: []

  field :name_map, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ObjectNameMapping,
    json_name: "nameMap"
end
defmodule Google.Cloud.Bigquery.Migration.V2.ObjectNameMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Bigquery.Migration.V2.NameMappingKey.t() | nil,
          target: Google.Cloud.Bigquery.Migration.V2.NameMappingValue.t() | nil
        }

  defstruct source: nil,
            target: nil

  field :source, 1, type: Google.Cloud.Bigquery.Migration.V2.NameMappingKey
  field :target, 2, type: Google.Cloud.Bigquery.Migration.V2.NameMappingValue
end
defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Bigquery.Migration.V2.NameMappingKey.Type.t(),
          database: String.t(),
          schema: String.t(),
          relation: String.t(),
          attribute: String.t()
        }

  defstruct type: :TYPE_UNSPECIFIED,
            database: "",
            schema: "",
            relation: "",
            attribute: ""

  field :type, 1, type: Google.Cloud.Bigquery.Migration.V2.NameMappingKey.Type, enum: true
  field :database, 2, type: :string
  field :schema, 3, type: :string
  field :relation, 4, type: :string
  field :attribute, 5, type: :string
end
defmodule Google.Cloud.Bigquery.Migration.V2.NameMappingValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          schema: String.t(),
          relation: String.t(),
          attribute: String.t()
        }

  defstruct database: "",
            schema: "",
            relation: "",
            attribute: ""

  field :database, 1, type: :string
  field :schema, 2, type: :string
  field :relation, 3, type: :string
  field :attribute, 4, type: :string
end
defmodule Google.Cloud.Bigquery.Migration.V2.SourceEnv do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_database: String.t(),
          schema_search_path: [String.t()]
        }

  defstruct default_database: "",
            schema_search_path: []

  field :default_database, 1, type: :string, json_name: "defaultDatabase"
  field :schema_search_path, 2, repeated: true, type: :string, json_name: "schemaSearchPath"
end
