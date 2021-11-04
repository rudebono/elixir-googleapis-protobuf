defmodule Google.Api.Expr.Conformance.V1alpha1.IssueDetails.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEVERITY_UNSPECIFIED | :DEPRECATION | :WARNING | :ERROR

  field :SEVERITY_UNSPECIFIED, 0
  field :DEPRECATION, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ParseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cel_source: String.t(),
          syntax_version: String.t(),
          source_location: String.t(),
          disable_macros: boolean
        }

  defstruct [:cel_source, :syntax_version, :source_location, :disable_macros]

  field :cel_source, 1, type: :string, json_name: "celSource"
  field :syntax_version, 2, type: :string, json_name: "syntaxVersion"
  field :source_location, 3, type: :string, json_name: "sourceLocation"
  field :disable_macros, 4, type: :bool, json_name: "disableMacros"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ParseResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parsed_expr: Google.Api.Expr.V1alpha1.ParsedExpr.t() | nil,
          issues: [Google.Rpc.Status.t()]
        }

  defstruct [:parsed_expr, :issues]

  field :parsed_expr, 1, type: Google.Api.Expr.V1alpha1.ParsedExpr, json_name: "parsedExpr"
  field :issues, 2, repeated: true, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.CheckRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parsed_expr: Google.Api.Expr.V1alpha1.ParsedExpr.t() | nil,
          type_env: [Google.Api.Expr.V1alpha1.Decl.t()],
          container: String.t(),
          no_std_env: boolean
        }

  defstruct [:parsed_expr, :type_env, :container, :no_std_env]

  field :parsed_expr, 1, type: Google.Api.Expr.V1alpha1.ParsedExpr, json_name: "parsedExpr"
  field :type_env, 2, repeated: true, type: Google.Api.Expr.V1alpha1.Decl, json_name: "typeEnv"
  field :container, 3, type: :string
  field :no_std_env, 4, type: :bool, json_name: "noStdEnv"

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.CheckResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          checked_expr: Google.Api.Expr.V1alpha1.CheckedExpr.t() | nil,
          issues: [Google.Rpc.Status.t()]
        }

  defstruct [:checked_expr, :issues]

  field :checked_expr, 1, type: Google.Api.Expr.V1alpha1.CheckedExpr, json_name: "checkedExpr"
  field :issues, 2, repeated: true, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalRequest.BindingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Api.Expr.V1alpha1.ExprValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Api.Expr.V1alpha1.ExprValue

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expr_kind:
            {:parsed_expr, Google.Api.Expr.V1alpha1.ParsedExpr.t() | nil}
            | {:checked_expr, Google.Api.Expr.V1alpha1.CheckedExpr.t() | nil},
          bindings: %{String.t() => Google.Api.Expr.V1alpha1.ExprValue.t() | nil},
          container: String.t()
        }

  defstruct [:expr_kind, :bindings, :container]

  oneof :expr_kind, 0

  field :parsed_expr, 1,
    type: Google.Api.Expr.V1alpha1.ParsedExpr,
    json_name: "parsedExpr",
    oneof: 0

  field :checked_expr, 2,
    type: Google.Api.Expr.V1alpha1.CheckedExpr,
    json_name: "checkedExpr",
    oneof: 0

  field :bindings, 3,
    repeated: true,
    type: Google.Api.Expr.Conformance.V1alpha1.EvalRequest.BindingsEntry,
    map: true

  field :container, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Api.Expr.V1alpha1.ExprValue.t() | nil,
          issues: [Google.Rpc.Status.t()]
        }

  defstruct [:result, :issues]

  field :result, 1, type: Google.Api.Expr.V1alpha1.ExprValue
  field :issues, 2, repeated: true, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.IssueDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          severity: Google.Api.Expr.Conformance.V1alpha1.IssueDetails.Severity.t(),
          position: Google.Api.Expr.V1alpha1.SourcePosition.t() | nil,
          id: integer
        }

  defstruct [:severity, :position, :id]

  field :severity, 1, type: Google.Api.Expr.Conformance.V1alpha1.IssueDetails.Severity, enum: true
  field :position, 2, type: Google.Api.Expr.V1alpha1.SourcePosition
  field :id, 3, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ConformanceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.expr.conformance.v1alpha1.ConformanceService"

  rpc :Parse,
      Google.Api.Expr.Conformance.V1alpha1.ParseRequest,
      Google.Api.Expr.Conformance.V1alpha1.ParseResponse

  rpc :Check,
      Google.Api.Expr.Conformance.V1alpha1.CheckRequest,
      Google.Api.Expr.Conformance.V1alpha1.CheckResponse

  rpc :Eval,
      Google.Api.Expr.Conformance.V1alpha1.EvalRequest,
      Google.Api.Expr.Conformance.V1alpha1.EvalResponse
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ConformanceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Expr.Conformance.V1alpha1.ConformanceService.Service
end
