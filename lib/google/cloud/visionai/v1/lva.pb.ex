defmodule Google.Cloud.Visionai.V1.RunMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RUN_MODE_UNSPECIFIED, 0
  field :LIVE, 1
  field :SUBMISSION, 2
end

defmodule Google.Cloud.Visionai.V1.RunStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :RUNNING, 2
  field :COMPLETED, 3
  field :FAILED, 4
  field :PENDING, 5
end

defmodule Google.Cloud.Visionai.V1.AttributeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :i, 1, type: :int64, oneof: 0
  field :f, 2, type: :float, oneof: 0
  field :b, 3, type: :bool, oneof: 0
  field :s, 4, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.StreamInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input, 1, type: :string
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :environment_variables, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AnalyzerDefinition.DebugOptions.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition.AttrsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Visionai.V1.AttributeValue
end

defmodule Google.Cloud.Visionai.V1.AnalyzerDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Visionai.V1.AnalysisDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :analyzers, 1, repeated: true, type: Google.Cloud.Visionai.V1.AnalyzerDefinition
end

defmodule Google.Cloud.Visionai.V1.RunStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Visionai.V1.RunStatus.State, enum: true
  field :reason, 2, type: :string
end