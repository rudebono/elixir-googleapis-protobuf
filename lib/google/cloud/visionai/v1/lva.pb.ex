defmodule Google.Cloud.Visionai.V1.RunMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RUN_MODE_UNSPECIFIED, 0
  field :LIVE, 1
  field :SUBMISSION, 2
end

defmodule Google.Cloud.Visionai.V1.RunStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :RUNNING, 2
  field :COMPLETED, 3
  field :FAILED, 4
  field :PENDING, 5
end

defmodule Google.Cloud.Visionai.V1.OperatorDefinition.ArgumentDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :argument, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.OperatorDefinition.AttributeDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attribute, 1, type: :string
  field :type, 2, type: :string

  field :default_value, 3,
    type: Google.Cloud.Visionai.V1.AttributeValue,
    json_name: "defaultValue"
end

defmodule Google.Cloud.Visionai.V1.OperatorDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operator, 1, type: :string

  field :input_args, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OperatorDefinition.ArgumentDefinition,
    json_name: "inputArgs"

  field :output_args, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OperatorDefinition.ArgumentDefinition,
    json_name: "outputArgs"

  field :attributes, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OperatorDefinition.AttributeDefinition

  field :resources, 5, type: Google.Cloud.Visionai.V1.ResourceSpecification
  field :short_description, 6, type: :string, json_name: "shortDescription"
  field :description, 7, type: :string
end

defmodule Google.Cloud.Visionai.V1.ResourceSpecification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cpu, 1, type: :string
  field :cpu_limits, 5, type: :string, json_name: "cpuLimits"
  field :memory, 2, type: :string
  field :memory_limits, 6, type: :string, json_name: "memoryLimits"
  field :gpus, 3, type: :int32
  field :latency_budget_ms, 4, type: :int32, json_name: "latencyBudgetMs"
end

defmodule Google.Cloud.Visionai.V1.AttributeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :i, 1, type: :int64, oneof: 0
  field :f, 2, type: :float, oneof: 0
  field :b, 3, type: :bool, oneof: 0
  field :s, 4, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.StreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input, 1, type: :string
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :environment_variables, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.OperatorOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tag, 1, type: :string
  field :registry, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.AttrsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Visionai.V1.AttributeValue
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :analyzer, 1, type: :string
  field :operator, 2, type: :string
  field :inputs, 3, repeated: true, type: Google.Cloud.Visionai.V1.AnalyzerDefinition.StreamInput

  field :attrs, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnalyzerDefinition.AttrsEntry,
    map: true

  field :debug_options, 5,
    type: Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions,
    json_name: "debugOptions"

  field :operator_option, 6,
    type: Google.Cloud.Visionai.V1.AnalyzerDefinition.OperatorOption,
    json_name: "operatorOption"
end

defmodule Google.Cloud.Visionai.V1.AnalysisDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :analyzers, 1, repeated: true, type: Google.Cloud.Visionai.V1.AnalyzerDefinition
end

defmodule Google.Cloud.Visionai.V1.RunStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Cloud.Visionai.V1.RunStatus.State, enum: true
  field :reason, 2, type: :string
end
