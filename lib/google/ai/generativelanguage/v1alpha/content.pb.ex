defmodule Google.Ai.Generativelanguage.V1alpha.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :INTEGER, 3
  field :BOOLEAN, 4
  field :ARRAY, 5
  field :OBJECT, 6
end

defmodule Google.Ai.Generativelanguage.V1alpha.ExecutableCode.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LANGUAGE_UNSPECIFIED, 0
  field :PYTHON, 1
end

defmodule Google.Ai.Generativelanguage.V1alpha.CodeExecutionResult.Outcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTCOME_UNSPECIFIED, 0
  field :OUTCOME_OK, 1
  field :OUTCOME_FAILED, 2
  field :OUTCOME_DEADLINE_EXCEEDED, 3
end

defmodule Google.Ai.Generativelanguage.V1alpha.DynamicRetrievalConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_DYNAMIC, 1
end

defmodule Google.Ai.Generativelanguage.V1alpha.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
end

defmodule Google.Ai.Generativelanguage.V1alpha.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Part
  field :role, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :text, 2, type: :string, oneof: 0

  field :inline_data, 3,
    type: Google.Ai.Generativelanguage.V1alpha.Blob,
    json_name: "inlineData",
    oneof: 0

  field :function_call, 4,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionCall,
    json_name: "functionCall",
    oneof: 0

  field :function_response, 5,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionResponse,
    json_name: "functionResponse",
    oneof: 0

  field :file_data, 6,
    type: Google.Ai.Generativelanguage.V1alpha.FileData,
    json_name: "fileData",
    oneof: 0

  field :executable_code, 9,
    type: Google.Ai.Generativelanguage.V1alpha.ExecutableCode,
    json_name: "executableCode",
    oneof: 0

  field :code_execution_result, 10,
    type: Google.Ai.Generativelanguage.V1alpha.CodeExecutionResult,
    json_name: "codeExecutionResult",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1alpha.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :data, 2, type: :bytes
end

defmodule Google.Ai.Generativelanguage.V1alpha.FileData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :file_uri, 2, type: :string, json_name: "fileUri", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ExecutableCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language, 1,
    type: Google.Ai.Generativelanguage.V1alpha.ExecutableCode.Language,
    enum: true,
    deprecated: false

  field :code, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CodeExecutionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :outcome, 1,
    type: Google.Ai.Generativelanguage.V1alpha.CodeExecutionResult.Outcome,
    enum: true,
    deprecated: false

  field :output, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Tool.GoogleSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1alpha.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false

  field :google_search_retrieval, 2,
    type: Google.Ai.Generativelanguage.V1alpha.GoogleSearchRetrieval,
    json_name: "googleSearchRetrieval",
    deprecated: false

  field :code_execution, 3,
    type: Google.Ai.Generativelanguage.V1alpha.CodeExecution,
    json_name: "codeExecution",
    deprecated: false

  field :google_search, 4,
    type: Google.Ai.Generativelanguage.V1alpha.Tool.GoogleSearch,
    json_name: "googleSearch",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GoogleSearchRetrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_retrieval_config, 1,
    type: Google.Ai.Generativelanguage.V1alpha.DynamicRetrievalConfig,
    json_name: "dynamicRetrievalConfig"
end

defmodule Google.Ai.Generativelanguage.V1alpha.DynamicRetrievalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Ai.Generativelanguage.V1alpha.DynamicRetrievalConfig.Mode,
    enum: true

  field :dynamic_threshold, 2, proto3_optional: true, type: :float, json_name: "dynamicThreshold"
end

defmodule Google.Ai.Generativelanguage.V1alpha.CodeExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1alpha.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Ai.Generativelanguage.V1alpha.FunctionCallingConfig.Mode,
    enum: true,
    deprecated: false

  field :allowed_function_names, 2,
    repeated: true,
    type: :string,
    json_name: "allowedFunctionNames",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.FunctionDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :parameters, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Schema,
    deprecated: false

  field :response, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Schema,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 3, type: :string, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :args, 2, proto3_optional: true, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 3, type: :string, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Schema.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Ai.Generativelanguage.V1alpha.Schema
end

defmodule Google.Ai.Generativelanguage.V1alpha.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Ai.Generativelanguage.V1alpha.Type, enum: true, deprecated: false
  field :format, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :nullable, 4, type: :bool, deprecated: false
  field :enum, 5, repeated: true, type: :string, deprecated: false

  field :items, 6,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Schema,
    deprecated: false

  field :max_items, 21, type: :int64, json_name: "maxItems", deprecated: false
  field :min_items, 22, type: :int64, json_name: "minItems", deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Schema.PropertiesEntry,
    map: true,
    deprecated: false

  field :required, 8, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingPassage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :content, 2, type: Google.Ai.Generativelanguage.V1alpha.Content
end

defmodule Google.Ai.Generativelanguage.V1alpha.GroundingPassages do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :passages, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.GroundingPassage
end
