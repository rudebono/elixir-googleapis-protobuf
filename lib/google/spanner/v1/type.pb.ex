defmodule Google.Spanner.V1.TypeCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_CODE_UNSPECIFIED
          | :BOOL
          | :INT64
          | :FLOAT64
          | :TIMESTAMP
          | :DATE
          | :STRING
          | :BYTES
          | :ARRAY
          | :STRUCT
          | :NUMERIC
          | :JSON

  field :TYPE_CODE_UNSPECIFIED, 0

  field :BOOL, 1

  field :INT64, 2

  field :FLOAT64, 3

  field :TIMESTAMP, 4

  field :DATE, 5

  field :STRING, 6

  field :BYTES, 7

  field :ARRAY, 8

  field :STRUCT, 9

  field :NUMERIC, 10

  field :JSON, 11
end

defmodule Google.Spanner.V1.Type do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Spanner.V1.TypeCode.t(),
          array_element_type: Google.Spanner.V1.Type.t() | nil,
          struct_type: Google.Spanner.V1.StructType.t() | nil
        }

  defstruct [:code, :array_element_type, :struct_type]

  field :code, 1, type: Google.Spanner.V1.TypeCode, enum: true
  field :array_element_type, 2, type: Google.Spanner.V1.Type
  field :struct_type, 3, type: Google.Spanner.V1.StructType
end

defmodule Google.Spanner.V1.StructType.Field do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Spanner.V1.Type.t() | nil
        }

  defstruct [:name, :type]

  field :name, 1, type: :string
  field :type, 2, type: Google.Spanner.V1.Type
end

defmodule Google.Spanner.V1.StructType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: [Google.Spanner.V1.StructType.Field.t()]
        }

  defstruct [:fields]

  field :fields, 1, repeated: true, type: Google.Spanner.V1.StructType.Field
end
