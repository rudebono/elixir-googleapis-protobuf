defmodule Google.Api.Expr.V1beta1.ParsedExpr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :expr, 2, type: Google.Api.Expr.V1beta1.Expr
  field :source_info, 3, type: Google.Api.Expr.V1beta1.SourceInfo, json_name: "sourceInfo"
  field :syntax_version, 4, type: :string, json_name: "syntaxVersion"
end
defmodule Google.Api.Expr.V1beta1.Expr.Ident do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Api.Expr.V1beta1.Expr.Select do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operand, 1, type: Google.Api.Expr.V1beta1.Expr
  field :field, 2, type: :string
  field :test_only, 3, type: :bool, json_name: "testOnly"
end
defmodule Google.Api.Expr.V1beta1.Expr.Call do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :target, 1, type: Google.Api.Expr.V1beta1.Expr
  field :function, 2, type: :string
  field :args, 3, repeated: true, type: Google.Api.Expr.V1beta1.Expr
end
defmodule Google.Api.Expr.V1beta1.Expr.CreateList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :elements, 1, repeated: true, type: Google.Api.Expr.V1beta1.Expr
end
defmodule Google.Api.Expr.V1beta1.Expr.CreateStruct.Entry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :key_kind, 0

  field :id, 1, type: :int32
  field :field_key, 2, type: :string, json_name: "fieldKey", oneof: 0
  field :map_key, 3, type: Google.Api.Expr.V1beta1.Expr, json_name: "mapKey", oneof: 0
  field :value, 4, type: Google.Api.Expr.V1beta1.Expr
end
defmodule Google.Api.Expr.V1beta1.Expr.CreateStruct do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 1, type: :string
  field :entries, 2, repeated: true, type: Google.Api.Expr.V1beta1.Expr.CreateStruct.Entry
end
defmodule Google.Api.Expr.V1beta1.Expr.Comprehension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :iter_var, 1, type: :string, json_name: "iterVar"
  field :iter_range, 2, type: Google.Api.Expr.V1beta1.Expr, json_name: "iterRange"
  field :accu_var, 3, type: :string, json_name: "accuVar"
  field :accu_init, 4, type: Google.Api.Expr.V1beta1.Expr, json_name: "accuInit"
  field :loop_condition, 5, type: Google.Api.Expr.V1beta1.Expr, json_name: "loopCondition"
  field :loop_step, 6, type: Google.Api.Expr.V1beta1.Expr, json_name: "loopStep"
  field :result, 7, type: Google.Api.Expr.V1beta1.Expr
end
defmodule Google.Api.Expr.V1beta1.Expr do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :expr_kind, 0

  field :id, 2, type: :int32

  field :literal_expr, 3,
    type: Google.Api.Expr.V1beta1.Literal,
    json_name: "literalExpr",
    oneof: 0

  field :ident_expr, 4, type: Google.Api.Expr.V1beta1.Expr.Ident, json_name: "identExpr", oneof: 0

  field :select_expr, 5,
    type: Google.Api.Expr.V1beta1.Expr.Select,
    json_name: "selectExpr",
    oneof: 0

  field :call_expr, 6, type: Google.Api.Expr.V1beta1.Expr.Call, json_name: "callExpr", oneof: 0

  field :list_expr, 7,
    type: Google.Api.Expr.V1beta1.Expr.CreateList,
    json_name: "listExpr",
    oneof: 0

  field :struct_expr, 8,
    type: Google.Api.Expr.V1beta1.Expr.CreateStruct,
    json_name: "structExpr",
    oneof: 0

  field :comprehension_expr, 9,
    type: Google.Api.Expr.V1beta1.Expr.Comprehension,
    json_name: "comprehensionExpr",
    oneof: 0
end
defmodule Google.Api.Expr.V1beta1.Literal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :constant_kind, 0

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
end
