defmodule Google.Api.Expr.V1beta1.Value do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any}
        }

  defstruct [:kind]

  oneof :kind, 0
  field :null_value, 1, type: Google.Protobuf.NullValue, enum: true, oneof: 0
  field :bool_value, 2, type: :bool, oneof: 0
  field :int64_value, 3, type: :int64, oneof: 0
  field :uint64_value, 4, type: :uint64, oneof: 0
  field :double_value, 5, type: :double, oneof: 0
  field :string_value, 6, type: :string, oneof: 0
  field :bytes_value, 7, type: :bytes, oneof: 0
  field :enum_value, 9, type: Google.Api.Expr.V1beta1.EnumValue, oneof: 0
  field :object_value, 10, type: Google.Protobuf.Any, oneof: 0
  field :map_value, 11, type: Google.Api.Expr.V1beta1.MapValue, oneof: 0
  field :list_value, 12, type: Google.Api.Expr.V1beta1.ListValue, oneof: 0
  field :type_value, 15, type: :string, oneof: 0
end

defmodule Google.Api.Expr.V1beta1.EnumValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          value: integer
        }

  defstruct [:type, :value]

  field :type, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Api.Expr.V1beta1.ListValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Api.Expr.V1beta1.Value.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: Google.Api.Expr.V1beta1.Value
end

defmodule Google.Api.Expr.V1beta1.MapValue.Entry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Api.Expr.V1beta1.Value.t() | nil,
          value: Google.Api.Expr.V1beta1.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: Google.Api.Expr.V1beta1.Value
  field :value, 2, type: Google.Api.Expr.V1beta1.Value
end

defmodule Google.Api.Expr.V1beta1.MapValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entries: [Google.Api.Expr.V1beta1.MapValue.Entry.t()]
        }

  defstruct [:entries]

  field :entries, 1, repeated: true, type: Google.Api.Expr.V1beta1.MapValue.Entry
end
