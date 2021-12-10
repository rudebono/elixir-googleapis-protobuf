defmodule Google.Api.Expr.V1alpha1.Explain.ExprStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          value_index: integer
        }

  defstruct id: 0,
            value_index: 0

  field :id, 1, type: :int64
  field :value_index, 2, type: :int32, json_name: "valueIndex"
end
defmodule Google.Api.Expr.V1alpha1.Explain do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Api.Expr.V1alpha1.Value.t()],
          expr_steps: [Google.Api.Expr.V1alpha1.Explain.ExprStep.t()]
        }

  defstruct values: [],
            expr_steps: []

  field :values, 1, repeated: true, type: Google.Api.Expr.V1alpha1.Value

  field :expr_steps, 2,
    repeated: true,
    type: Google.Api.Expr.V1alpha1.Explain.ExprStep,
    json_name: "exprSteps"
end
