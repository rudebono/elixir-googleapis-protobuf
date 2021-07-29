defmodule Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.ConnectionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONNECTION_TYPE_UNSPECIFIED | :CLOUD_SQL

  field :CONNECTION_TYPE_UNSPECIFIED, 0

  field :CLOUD_SQL, 1
end

defmodule Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATABASE_TYPE_UNSPECIFIED | :POSTGRES | :MYSQL

  field :DATABASE_TYPE_UNSPECIFIED, 0

  field :POSTGRES, 1

  field :MYSQL, 2
end

defmodule Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connection_spec: {atom, any},
          connection_type: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.ConnectionType.t(),
          has_credential: boolean
        }

  defstruct [:connection_spec, :connection_type, :has_credential]

  oneof :connection_spec, 0

  field :connection_type, 1,
    type: Google.Cloud.Datacatalog.V1.BigQueryConnectionSpec.ConnectionType,
    enum: true

  field :cloud_sql, 2, type: Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec, oneof: 0
  field :has_credential, 3, type: :bool
end

defmodule Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id: String.t(),
          database: String.t(),
          type: Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec.DatabaseType.t()
        }

  defstruct [:instance_id, :database, :type]

  field :instance_id, 1, type: :string
  field :database, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Datacatalog.V1.CloudSqlBigQueryConnectionSpec.DatabaseType,
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1.BigQueryRoutineSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          imported_libraries: [String.t()]
        }

  defstruct [:imported_libraries]

  field :imported_libraries, 1, repeated: true, type: :string
end
