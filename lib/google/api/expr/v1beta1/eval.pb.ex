defmodule Google.Api.Expr.V1beta1.EvalState.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expr: Google.Api.Expr.V1beta1.IdRef.t() | nil,
          value: integer
        }

  defstruct expr: nil,
            value: 0

  field :expr, 1, type: Google.Api.Expr.V1beta1.IdRef
  field :value, 2, type: :int32
end
defmodule Google.Api.Expr.V1beta1.EvalState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Api.Expr.V1beta1.ExprValue.t()],
          results: [Google.Api.Expr.V1beta1.EvalState.Result.t()]
        }

  defstruct values: [],
            results: []

  field :values, 1, repeated: true, type: Google.Api.Expr.V1beta1.ExprValue
  field :results, 3, repeated: true, type: Google.Api.Expr.V1beta1.EvalState.Result
end
defmodule Google.Api.Expr.V1beta1.ExprValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind:
            {:value, Google.Api.Expr.V1beta1.Value.t() | nil}
            | {:error, Google.Api.Expr.V1beta1.ErrorSet.t() | nil}
            | {:unknown, Google.Api.Expr.V1beta1.UnknownSet.t() | nil}
        }

  defstruct kind: nil

  oneof :kind, 0

  field :value, 1, type: Google.Api.Expr.V1beta1.Value, oneof: 0
  field :error, 2, type: Google.Api.Expr.V1beta1.ErrorSet, oneof: 0
  field :unknown, 3, type: Google.Api.Expr.V1beta1.UnknownSet, oneof: 0
end
defmodule Google.Api.Expr.V1beta1.ErrorSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Rpc.Status.t()]
        }

  defstruct errors: []

  field :errors, 1, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Api.Expr.V1beta1.UnknownSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exprs: [Google.Api.Expr.V1beta1.IdRef.t()]
        }

  defstruct exprs: []

  field :exprs, 1, repeated: true, type: Google.Api.Expr.V1beta1.IdRef
end
defmodule Google.Api.Expr.V1beta1.IdRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer
        }

  defstruct id: 0

  field :id, 1, type: :int32
end
