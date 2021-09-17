defmodule Google.Cloud.Sql.V1.SqlFlagType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SQL_FLAG_TYPE_UNSPECIFIED
          | :BOOLEAN
          | :STRING
          | :INTEGER
          | :NONE
          | :MYSQL_TIMEZONE_OFFSET
          | :FLOAT
          | :REPEATED_STRING

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_version: String.t()
        }

  defstruct [:database_version]

  field :database_version, 1, type: :string
end

defmodule Google.Cloud.Sql.V1.FlagsListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.Flag.t()]
        }

  defstruct [:kind, :items]

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.Flag
end

defmodule Google.Cloud.Sql.V1.Flag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Sql.V1.SqlFlagType.t(),
          applies_to: [[Google.Cloud.Sql.V1.SqlDatabaseVersion.t()]],
          allowed_string_values: [String.t()],
          min_value: Google.Protobuf.Int64Value.t() | nil,
          max_value: Google.Protobuf.Int64Value.t() | nil,
          requires_restart: Google.Protobuf.BoolValue.t() | nil,
          kind: String.t(),
          in_beta: Google.Protobuf.BoolValue.t() | nil,
          allowed_int_values: [integer]
        }

  defstruct [
    :name,
    :type,
    :applies_to,
    :allowed_string_values,
    :min_value,
    :max_value,
    :requires_restart,
    :kind,
    :in_beta,
    :allowed_int_values
  ]

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Sql.V1.SqlFlagType, enum: true
  field :applies_to, 3, repeated: true, type: Google.Cloud.Sql.V1.SqlDatabaseVersion, enum: true
  field :allowed_string_values, 4, repeated: true, type: :string
  field :min_value, 5, type: Google.Protobuf.Int64Value
  field :max_value, 6, type: Google.Protobuf.Int64Value
  field :requires_restart, 7, type: Google.Protobuf.BoolValue
  field :kind, 8, type: :string
  field :in_beta, 9, type: Google.Protobuf.BoolValue
  field :allowed_int_values, 10, repeated: true, type: :int64
end

defmodule Google.Cloud.Sql.V1.SqlFlagsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlFlagsService"

  rpc :List, Google.Cloud.Sql.V1.SqlFlagsListRequest, Google.Cloud.Sql.V1.FlagsListResponse
end

defmodule Google.Cloud.Sql.V1.SqlFlagsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlFlagsService.Service
end
