defmodule Google.Api.Expr.V1beta1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind:
            {:null_value, Google.Protobuf.NullValue.t()}
            | {:bool_value, boolean}
            | {:int64_value, integer}
            | {:uint64_value, non_neg_integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:string_value, String.t()}
            | {:bytes_value, binary}
            | {:enum_value, Google.Api.Expr.V1beta1.EnumValue.t() | nil}
            | {:object_value, Google.Protobuf.Any.t() | nil}
            | {:map_value, Google.Api.Expr.V1beta1.MapValue.t() | nil}
            | {:list_value, Google.Api.Expr.V1beta1.ListValue.t() | nil}
            | {:type_value, String.t()}
        }

  defstruct kind: nil

  oneof :kind, 0

  field :null_value, 1,
    type: Google.Protobuf.NullValue,
    json_name: "nullValue",
    enum: true,
    oneof: 0

  field :bool_value, 2, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 3, type: :int64, json_name: "int64Value", oneof: 0
  field :uint64_value, 4, type: :uint64, json_name: "uint64Value", oneof: 0
  field :double_value, 5, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 6, type: :string, json_name: "stringValue", oneof: 0
  field :bytes_value, 7, type: :bytes, json_name: "bytesValue", oneof: 0
  field :enum_value, 9, type: Google.Api.Expr.V1beta1.EnumValue, json_name: "enumValue", oneof: 0
  field :object_value, 10, type: Google.Protobuf.Any, json_name: "objectValue", oneof: 0
  field :map_value, 11, type: Google.Api.Expr.V1beta1.MapValue, json_name: "mapValue", oneof: 0
  field :list_value, 12, type: Google.Api.Expr.V1beta1.ListValue, json_name: "listValue", oneof: 0
  field :type_value, 15, type: :string, json_name: "typeValue", oneof: 0
end
defmodule Google.Api.Expr.V1beta1.EnumValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          value: integer
        }

  defstruct type: "",
            value: 0

  field :type, 1, type: :string
  field :value, 2, type: :int32
end
defmodule Google.Api.Expr.V1beta1.ListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Api.Expr.V1beta1.Value.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: Google.Api.Expr.V1beta1.Value
end
defmodule Google.Api.Expr.V1beta1.MapValue.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Api.Expr.V1beta1.Value.t() | nil,
          value: Google.Api.Expr.V1beta1.Value.t() | nil
        }

  defstruct key: nil,
            value: nil

  field :key, 1, type: Google.Api.Expr.V1beta1.Value
  field :value, 2, type: Google.Api.Expr.V1beta1.Value
end
defmodule Google.Api.Expr.V1beta1.MapValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Api.Expr.V1beta1.MapValue.Entry.t()]
        }

  defstruct entries: []

  field :entries, 1, repeated: true, type: Google.Api.Expr.V1beta1.MapValue.Entry
end
