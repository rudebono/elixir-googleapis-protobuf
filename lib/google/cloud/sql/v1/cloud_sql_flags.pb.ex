defmodule Google.Cloud.Sql.V1.SqlFlagType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SQL_FLAG_TYPE_UNSPECIFIED, 0
  field :BOOLEAN, 1
  field :STRING, 2
  field :INTEGER, 3
  field :NONE, 4
  field :MYSQL_TIMEZONE_OFFSET, 5
  field :FLOAT, 6
  field :REPEATED_STRING, 7
end

defmodule Google.Cloud.Sql.V1.SqlFlagsListRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :database_version, 1, type: :string, json_name: "databaseVersion"
end

defmodule Google.Cloud.Sql.V1.FlagsListResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Flag
end

defmodule Google.Cloud.Sql.V1.Flag do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Sql.V1.SqlFlagType, enum: true

  field :applies_to, 3,
    repeated: true,
    type: Google.Cloud.Sql.V1.SqlDatabaseVersion,
    json_name: "appliesTo",
    enum: true

  field :allowed_string_values, 4, repeated: true, type: :string, json_name: "allowedStringValues"
  field :min_value, 5, type: Google.Protobuf.Int64Value, json_name: "minValue"
  field :max_value, 6, type: Google.Protobuf.Int64Value, json_name: "maxValue"
  field :requires_restart, 7, type: Google.Protobuf.BoolValue, json_name: "requiresRestart"
  field :kind, 8, type: :string
  field :in_beta, 9, type: Google.Protobuf.BoolValue, json_name: "inBeta"
  field :allowed_int_values, 10, repeated: true, type: :int64, json_name: "allowedIntValues"
end

defmodule Google.Cloud.Sql.V1.SqlFlagsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlFlagsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :List, Google.Cloud.Sql.V1.SqlFlagsListRequest, Google.Cloud.Sql.V1.FlagsListResponse
end

defmodule Google.Cloud.Sql.V1.SqlFlagsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlFlagsService.Service
end