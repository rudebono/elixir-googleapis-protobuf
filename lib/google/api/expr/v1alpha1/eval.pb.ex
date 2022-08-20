defmodule Google.Api.Expr.V1alpha1.EvalState.Result do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :expr, 1, type: :int64
  field :value, 2, type: :int64
end

defmodule Google.Api.Expr.V1alpha1.EvalState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Api.Expr.V1alpha1.ExprValue
  field :results, 3, repeated: true, type: Google.Api.Expr.V1alpha1.EvalState.Result
end

defmodule Google.Api.Expr.V1alpha1.ExprValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :value, 1, type: Google.Api.Expr.V1alpha1.Value, oneof: 0
  field :error, 2, type: Google.Api.Expr.V1alpha1.ErrorSet, oneof: 0
  field :unknown, 3, type: Google.Api.Expr.V1alpha1.UnknownSet, oneof: 0
end

defmodule Google.Api.Expr.V1alpha1.ErrorSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Api.Expr.V1alpha1.UnknownSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exprs, 1, repeated: true, type: :int64
end