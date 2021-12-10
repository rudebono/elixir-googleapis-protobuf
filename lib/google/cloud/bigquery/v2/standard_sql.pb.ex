defmodule Google.Cloud.Bigquery.V2.StandardSqlDataType.TypeKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_KIND_UNSPECIFIED
          | :INT64
          | :BOOL
          | :FLOAT64
          | :STRING
          | :BYTES
          | :TIMESTAMP
          | :DATE
          | :TIME
          | :DATETIME
          | :INTERVAL
          | :GEOGRAPHY
          | :NUMERIC
          | :BIGNUMERIC
          | :JSON
          | :ARRAY
          | :STRUCT

  field :TYPE_KIND_UNSPECIFIED, 0
  field :INT64, 2
  field :BOOL, 5
  field :FLOAT64, 7
  field :STRING, 8
  field :BYTES, 9
  field :TIMESTAMP, 19
  field :DATE, 10
  field :TIME, 20
  field :DATETIME, 21
  field :INTERVAL, 26
  field :GEOGRAPHY, 22
  field :NUMERIC, 23
  field :BIGNUMERIC, 24
  field :JSON, 25
  field :ARRAY, 16
  field :STRUCT, 17
end
defmodule Google.Cloud.Bigquery.V2.StandardSqlDataType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sub_type:
            {:array_element_type, Google.Cloud.Bigquery.V2.StandardSqlDataType.t() | nil}
            | {:struct_type, Google.Cloud.Bigquery.V2.StandardSqlStructType.t() | nil},
          type_kind: Google.Cloud.Bigquery.V2.StandardSqlDataType.TypeKind.t()
        }

  defstruct sub_type: nil,
            type_kind: :TYPE_KIND_UNSPECIFIED

  oneof :sub_type, 0

  field :type_kind, 1,
    type: Google.Cloud.Bigquery.V2.StandardSqlDataType.TypeKind,
    json_name: "typeKind",
    enum: true,
    deprecated: false

  field :array_element_type, 2,
    type: Google.Cloud.Bigquery.V2.StandardSqlDataType,
    json_name: "arrayElementType",
    oneof: 0

  field :struct_type, 3,
    type: Google.Cloud.Bigquery.V2.StandardSqlStructType,
    json_name: "structType",
    oneof: 0
end
defmodule Google.Cloud.Bigquery.V2.StandardSqlField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Bigquery.V2.StandardSqlDataType.t() | nil
        }

  defstruct name: "",
            type: nil

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Bigquery.V2.StandardSqlDataType, deprecated: false
end
defmodule Google.Cloud.Bigquery.V2.StandardSqlStructType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: [Google.Cloud.Bigquery.V2.StandardSqlField.t()]
        }

  defstruct fields: []

  field :fields, 1, repeated: true, type: Google.Cloud.Bigquery.V2.StandardSqlField
end
defmodule Google.Cloud.Bigquery.V2.StandardSqlTableType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          columns: [Google.Cloud.Bigquery.V2.StandardSqlField.t()]
        }

  defstruct columns: []

  field :columns, 1, repeated: true, type: Google.Cloud.Bigquery.V2.StandardSqlField
end
