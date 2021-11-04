defmodule Google.Api.Expr.V1alpha1.Type.PrimitiveType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PRIMITIVE_TYPE_UNSPECIFIED
          | :BOOL
          | :INT64
          | :UINT64
          | :DOUBLE
          | :STRING
          | :BYTES

  field :PRIMITIVE_TYPE_UNSPECIFIED, 0
  field :BOOL, 1
  field :INT64, 2
  field :UINT64, 3
  field :DOUBLE, 4
  field :STRING, 5
  field :BYTES, 6
end

defmodule Google.Api.Expr.V1alpha1.Type.WellKnownType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :WELL_KNOWN_TYPE_UNSPECIFIED | :ANY | :TIMESTAMP | :DURATION

  field :WELL_KNOWN_TYPE_UNSPECIFIED, 0
  field :ANY, 1
  field :TIMESTAMP, 2
  field :DURATION, 3
end

defmodule Google.Api.Expr.V1alpha1.CheckedExpr.ReferenceMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: Google.Api.Expr.V1alpha1.Reference.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :int64
  field :value, 2, type: Google.Api.Expr.V1alpha1.Reference

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.CheckedExpr.TypeMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: Google.Api.Expr.V1alpha1.Type.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :int64
  field :value, 2, type: Google.Api.Expr.V1alpha1.Type

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.CheckedExpr do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_map: %{integer => Google.Api.Expr.V1alpha1.Reference.t() | nil},
          type_map: %{integer => Google.Api.Expr.V1alpha1.Type.t() | nil},
          source_info: Google.Api.Expr.V1alpha1.SourceInfo.t() | nil,
          expr_version: String.t(),
          expr: Google.Api.Expr.V1alpha1.Expr.t() | nil
        }

  defstruct [:reference_map, :type_map, :source_info, :expr_version, :expr]

  field :reference_map, 2,
    repeated: true,
    type: Google.Api.Expr.V1alpha1.CheckedExpr.ReferenceMapEntry,
    json_name: "referenceMap",
    map: true

  field :type_map, 3,
    repeated: true,
    type: Google.Api.Expr.V1alpha1.CheckedExpr.TypeMapEntry,
    json_name: "typeMap",
    map: true

  field :source_info, 5, type: Google.Api.Expr.V1alpha1.SourceInfo, json_name: "sourceInfo"
  field :expr_version, 6, type: :string, json_name: "exprVersion"
  field :expr, 4, type: Google.Api.Expr.V1alpha1.Expr

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Type.ListType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elem_type: Google.Api.Expr.V1alpha1.Type.t() | nil
        }

  defstruct [:elem_type]

  field :elem_type, 1, type: Google.Api.Expr.V1alpha1.Type, json_name: "elemType"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Type.MapType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_type: Google.Api.Expr.V1alpha1.Type.t() | nil,
          value_type: Google.Api.Expr.V1alpha1.Type.t() | nil
        }

  defstruct [:key_type, :value_type]

  field :key_type, 1, type: Google.Api.Expr.V1alpha1.Type, json_name: "keyType"
  field :value_type, 2, type: Google.Api.Expr.V1alpha1.Type, json_name: "valueType"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Type.FunctionType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result_type: Google.Api.Expr.V1alpha1.Type.t() | nil,
          arg_types: [Google.Api.Expr.V1alpha1.Type.t()]
        }

  defstruct [:result_type, :arg_types]

  field :result_type, 1, type: Google.Api.Expr.V1alpha1.Type, json_name: "resultType"
  field :arg_types, 2, repeated: true, type: Google.Api.Expr.V1alpha1.Type, json_name: "argTypes"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Type.AbstractType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameter_types: [Google.Api.Expr.V1alpha1.Type.t()]
        }

  defstruct [:name, :parameter_types]

  field :name, 1, type: :string

  field :parameter_types, 2,
    repeated: true,
    type: Google.Api.Expr.V1alpha1.Type,
    json_name: "parameterTypes"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Type do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type_kind:
            {:dyn, Google.Protobuf.Empty.t() | nil}
            | {:null, Google.Protobuf.NullValue.t()}
            | {:primitive, Google.Api.Expr.V1alpha1.Type.PrimitiveType.t()}
            | {:wrapper, Google.Api.Expr.V1alpha1.Type.PrimitiveType.t()}
            | {:well_known, Google.Api.Expr.V1alpha1.Type.WellKnownType.t()}
            | {:list_type, Google.Api.Expr.V1alpha1.Type.ListType.t() | nil}
            | {:map_type, Google.Api.Expr.V1alpha1.Type.MapType.t() | nil}
            | {:function, Google.Api.Expr.V1alpha1.Type.FunctionType.t() | nil}
            | {:message_type, String.t()}
            | {:type_param, String.t()}
            | {:type, Google.Api.Expr.V1alpha1.Type.t() | nil}
            | {:error, Google.Protobuf.Empty.t() | nil}
            | {:abstract_type, Google.Api.Expr.V1alpha1.Type.AbstractType.t() | nil}
        }

  defstruct [:type_kind]

  oneof :type_kind, 0

  field :dyn, 1, type: Google.Protobuf.Empty, oneof: 0
  field :null, 2, type: Google.Protobuf.NullValue, enum: true, oneof: 0
  field :primitive, 3, type: Google.Api.Expr.V1alpha1.Type.PrimitiveType, enum: true, oneof: 0
  field :wrapper, 4, type: Google.Api.Expr.V1alpha1.Type.PrimitiveType, enum: true, oneof: 0

  field :well_known, 5,
    type: Google.Api.Expr.V1alpha1.Type.WellKnownType,
    enum: true,
    json_name: "wellKnown",
    oneof: 0

  field :list_type, 6,
    type: Google.Api.Expr.V1alpha1.Type.ListType,
    json_name: "listType",
    oneof: 0

  field :map_type, 7, type: Google.Api.Expr.V1alpha1.Type.MapType, json_name: "mapType", oneof: 0
  field :function, 8, type: Google.Api.Expr.V1alpha1.Type.FunctionType, oneof: 0
  field :message_type, 9, type: :string, json_name: "messageType", oneof: 0
  field :type_param, 10, type: :string, json_name: "typeParam", oneof: 0
  field :type, 11, type: Google.Api.Expr.V1alpha1.Type, oneof: 0
  field :error, 12, type: Google.Protobuf.Empty, oneof: 0

  field :abstract_type, 14,
    type: Google.Api.Expr.V1alpha1.Type.AbstractType,
    json_name: "abstractType",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Decl.IdentDecl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Api.Expr.V1alpha1.Type.t() | nil,
          value: Google.Api.Expr.V1alpha1.Constant.t() | nil,
          doc: String.t()
        }

  defstruct [:type, :value, :doc]

  field :type, 1, type: Google.Api.Expr.V1alpha1.Type
  field :value, 2, type: Google.Api.Expr.V1alpha1.Constant
  field :doc, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Decl.FunctionDecl.Overload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overload_id: String.t(),
          params: [Google.Api.Expr.V1alpha1.Type.t()],
          type_params: [String.t()],
          result_type: Google.Api.Expr.V1alpha1.Type.t() | nil,
          is_instance_function: boolean,
          doc: String.t()
        }

  defstruct [:overload_id, :params, :type_params, :result_type, :is_instance_function, :doc]

  field :overload_id, 1, type: :string, json_name: "overloadId"
  field :params, 2, repeated: true, type: Google.Api.Expr.V1alpha1.Type
  field :type_params, 3, repeated: true, type: :string, json_name: "typeParams"
  field :result_type, 4, type: Google.Api.Expr.V1alpha1.Type, json_name: "resultType"
  field :is_instance_function, 5, type: :bool, json_name: "isInstanceFunction"
  field :doc, 6, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Decl.FunctionDecl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overloads: [Google.Api.Expr.V1alpha1.Decl.FunctionDecl.Overload.t()]
        }

  defstruct [:overloads]

  field :overloads, 1, repeated: true, type: Google.Api.Expr.V1alpha1.Decl.FunctionDecl.Overload

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Decl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          decl_kind:
            {:ident, Google.Api.Expr.V1alpha1.Decl.IdentDecl.t() | nil}
            | {:function, Google.Api.Expr.V1alpha1.Decl.FunctionDecl.t() | nil},
          name: String.t()
        }

  defstruct [:decl_kind, :name]

  oneof :decl_kind, 0

  field :name, 1, type: :string
  field :ident, 2, type: Google.Api.Expr.V1alpha1.Decl.IdentDecl, oneof: 0
  field :function, 3, type: Google.Api.Expr.V1alpha1.Decl.FunctionDecl, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.Reference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          overload_id: [String.t()],
          value: Google.Api.Expr.V1alpha1.Constant.t() | nil
        }

  defstruct [:name, :overload_id, :value]

  field :name, 1, type: :string
  field :overload_id, 3, repeated: true, type: :string, json_name: "overloadId"
  field :value, 4, type: Google.Api.Expr.V1alpha1.Constant

  def transform_module(), do: nil
end
