defmodule Google.Api.Expr.V1alpha1.EvalState.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expr: integer,
          value: integer
        }

  defstruct [:expr, :value]

  field :expr, 1, type: :int64
  field :value, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.EvalState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Api.Expr.V1alpha1.ExprValue.t()],
          results: [Google.Api.Expr.V1alpha1.EvalState.Result.t()]
        }

  defstruct [:values, :results]

  field :values, 1, repeated: true, type: Google.Api.Expr.V1alpha1.ExprValue
  field :results, 3, repeated: true, type: Google.Api.Expr.V1alpha1.EvalState.Result

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.ExprValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind:
            {:value, Google.Api.Expr.V1alpha1.Value.t() | nil}
            | {:error, Google.Api.Expr.V1alpha1.ErrorSet.t() | nil}
            | {:unknown, Google.Api.Expr.V1alpha1.UnknownSet.t() | nil}
        }

  defstruct [:kind]

  oneof :kind, 0

  field :value, 1, type: Google.Api.Expr.V1alpha1.Value, oneof: 0
  field :error, 2, type: Google.Api.Expr.V1alpha1.ErrorSet, oneof: 0
  field :unknown, 3, type: Google.Api.Expr.V1alpha1.UnknownSet, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.ErrorSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Rpc.Status.t()]
        }

  defstruct [:errors]

  field :errors, 1, repeated: true, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.V1alpha1.UnknownSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exprs: [integer]
        }

  defstruct [:exprs]

  field :exprs, 1, repeated: true, type: :int64

  def transform_module(), do: nil
end
