defmodule Google.Cloud.Automl.V1beta1.TypeCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_CODE_UNSPECIFIED
          | :FLOAT64
          | :TIMESTAMP
          | :STRING
          | :ARRAY
          | :STRUCT
          | :CATEGORY

  field :TYPE_CODE_UNSPECIFIED, 0
  field :FLOAT64, 3
  field :TIMESTAMP, 4
  field :STRING, 6
  field :ARRAY, 8
  field :STRUCT, 9
  field :CATEGORY, 10
end

defmodule Google.Cloud.Automl.V1beta1.DataType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details:
            {:list_element_type, Google.Cloud.Automl.V1beta1.DataType.t() | nil}
            | {:struct_type, Google.Cloud.Automl.V1beta1.StructType.t() | nil}
            | {:time_format, String.t()},
          type_code: Google.Cloud.Automl.V1beta1.TypeCode.t(),
          nullable: boolean
        }

  defstruct [:details, :type_code, :nullable]

  oneof :details, 0

  field :list_element_type, 2,
    type: Google.Cloud.Automl.V1beta1.DataType,
    json_name: "listElementType",
    oneof: 0

  field :struct_type, 3,
    type: Google.Cloud.Automl.V1beta1.StructType,
    json_name: "structType",
    oneof: 0

  field :time_format, 5, type: :string, json_name: "timeFormat", oneof: 0

  field :type_code, 1,
    type: Google.Cloud.Automl.V1beta1.TypeCode,
    enum: true,
    json_name: "typeCode"

  field :nullable, 4, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.StructType.FieldsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Automl.V1beta1.DataType.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.DataType

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.StructType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fields: %{String.t() => Google.Cloud.Automl.V1beta1.DataType.t() | nil}
        }

  defstruct [:fields]

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.StructType.FieldsEntry,
    map: true

  def transform_module(), do: nil
end
