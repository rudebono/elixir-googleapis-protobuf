defmodule Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.ConnectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONNECTION_TYPE_UNSPECIFIED, 0
  field :CLOUD_SQL, 1
end

defmodule Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec.DatabaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :POSTGRES, 1
  field :MYSQL, 2
end

defmodule Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :connection_spec, 0

  field :connection_type, 1,
    type: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.ConnectionType,
    json_name: "connectionType",
    enum: true

  field :cloud_sql, 2,
    type: Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec,
    json_name: "cloudSql",
    oneof: 0

  field :has_credential, 3, type: :bool, json_name: "hasCredential"
end

defmodule Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :database, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec.DatabaseType,
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1.BigQueryRoutineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :imported_libraries, 1, repeated: true, type: :string, json_name: "importedLibraries"
end