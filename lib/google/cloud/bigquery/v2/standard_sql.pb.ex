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
          | :GEOGRAPHY
          | :NUMERIC
          | :BIGNUMERIC
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

  field :GEOGRAPHY, 22

  field :NUMERIC, 23

  field :BIGNUMERIC, 24

  field :ARRAY, 16

  field :STRUCT, 17
end

defmodule Google.Cloud.Bigquery.V2.StandardSqlDataType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sub_type: {atom, any},
          type_kind: Google.Cloud.Bigquery.V2.StandardSqlDataType.TypeKind.t()
        }

  defstruct [:sub_type, :type_kind]

  oneof :sub_type, 0
  field :type_kind, 1, type: Google.Cloud.Bigquery.V2.StandardSqlDataType.TypeKind, enum: true
  field :array_element_type, 2, type: Google.Cloud.Bigquery.V2.StandardSqlDataType, oneof: 0
  field :struct_type, 3, type: Google.Cloud.Bigquery.V2.StandardSqlStructType, oneof: 0
end

defmodule Google.Cloud.Bigquery.V2.StandardSqlField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Bigquery.V2.StandardSqlDataType.t() | nil
        }

  defstruct [:name, :type]

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Bigquery.V2.StandardSqlDataType
end

defmodule Google.Cloud.Bigquery.V2.StandardSqlStructType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: [Google.Cloud.Bigquery.V2.StandardSqlField.t()]
        }

  defstruct [:fields]

  field :fields, 1, repeated: true, type: Google.Cloud.Bigquery.V2.StandardSqlField
end
