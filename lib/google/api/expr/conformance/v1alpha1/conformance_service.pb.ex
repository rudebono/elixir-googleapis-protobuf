defmodule Google.Api.Expr.Conformance.V1alpha1.IssueDetails.Severity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :DEPRECATION, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ParseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cel_source, 1, type: :string, json_name: "celSource"
  field :syntax_version, 2, type: :string, json_name: "syntaxVersion"
  field :source_location, 3, type: :string, json_name: "sourceLocation"
  field :disable_macros, 4, type: :bool, json_name: "disableMacros"
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ParseResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parsed_expr, 1, type: Google.Api.Expr.V1alpha1.ParsedExpr, json_name: "parsedExpr"
  field :issues, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Api.Expr.Conformance.V1alpha1.CheckRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parsed_expr, 1, type: Google.Api.Expr.V1alpha1.ParsedExpr, json_name: "parsedExpr"
  field :type_env, 2, repeated: true, type: Google.Api.Expr.V1alpha1.Decl, json_name: "typeEnv"
  field :container, 3, type: :string
  field :no_std_env, 4, type: :bool, json_name: "noStdEnv"
end

defmodule Google.Api.Expr.Conformance.V1alpha1.CheckResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :checked_expr, 1, type: Google.Api.Expr.V1alpha1.CheckedExpr, json_name: "checkedExpr"
  field :issues, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalRequest.BindingsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Api.Expr.V1alpha1.ExprValue
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Google.Api.Expr.Conformance.V1alpha1.EvalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Google.Api.Expr.V1alpha1.ExprValue
  field :issues, 2, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Api.Expr.Conformance.V1alpha1.IssueDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :severity, 1, type: Google.Api.Expr.Conformance.V1alpha1.IssueDetails.Severity, enum: true
  field :position, 2, type: Google.Api.Expr.V1alpha1.SourcePosition
  field :id, 3, type: :int64
end

defmodule Google.Api.Expr.Conformance.V1alpha1.ConformanceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.api.expr.conformance.v1alpha1.ConformanceService",
    protoc_gen_elixir_version: "0.11.0"

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