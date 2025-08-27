defmodule Google.Ai.Generativelanguage.V1beta.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :INTEGER, 3
  field :BOOLEAN, 4
  field :ARRAY, 5
  field :OBJECT, 6
  field :NULL, 7
end

defmodule Google.Ai.Generativelanguage.V1beta.Modality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :TEXT, 1
  field :IMAGE, 2
  field :VIDEO, 3
  field :AUDIO, 4
  field :DOCUMENT, 5
end

defmodule Google.Ai.Generativelanguage.V1beta.ExecutableCode.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LANGUAGE_UNSPECIFIED, 0
  field :PYTHON, 1
end

defmodule Google.Ai.Generativelanguage.V1beta.CodeExecutionResult.Outcome do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTCOME_UNSPECIFIED, 0
  field :OUTCOME_OK, 1
  field :OUTCOME_FAILED, 2
  field :OUTCOME_DEADLINE_EXCEEDED, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.DynamicRetrievalConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_DYNAMIC, 1
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
  field :VALIDATED, 4
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionDeclaration.Behavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :BLOCKING, 1
  field :NON_BLOCKING, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionResponse.Scheduling do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCHEDULING_UNSPECIFIED, 0
  field :SILENT, 1
  field :WHEN_IDLE, 2
  field :INTERRUPT, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Part
  field :role, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  oneof :metadata, 1

  field :text, 2, type: :string, oneof: 0

  field :inline_data, 3,
    type: Google.Ai.Generativelanguage.V1beta.Blob,
    json_name: "inlineData",
    oneof: 0

  field :function_call, 4,
    type: Google.Ai.Generativelanguage.V1beta.FunctionCall,
    json_name: "functionCall",
    oneof: 0

  field :function_response, 5,
    type: Google.Ai.Generativelanguage.V1beta.FunctionResponse,
    json_name: "functionResponse",
    oneof: 0

  field :file_data, 6,
    type: Google.Ai.Generativelanguage.V1beta.FileData,
    json_name: "fileData",
    oneof: 0

  field :executable_code, 9,
    type: Google.Ai.Generativelanguage.V1beta.ExecutableCode,
    json_name: "executableCode",
    oneof: 0

  field :code_execution_result, 10,
    type: Google.Ai.Generativelanguage.V1beta.CodeExecutionResult,
    json_name: "codeExecutionResult",
    oneof: 0

  field :video_metadata, 14,
    type: Google.Ai.Generativelanguage.V1beta.VideoMetadata,
    json_name: "videoMetadata",
    oneof: 1,
    deprecated: false

  field :thought, 11, type: :bool, deprecated: false
  field :thought_signature, 13, type: :bytes, json_name: "thoughtSignature", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :data, 2, type: :bytes
end

defmodule Google.Ai.Generativelanguage.V1beta.FileData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :file_uri, 2, type: :string, json_name: "fileUri", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.VideoMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_offset, 1,
    type: Google.Protobuf.Duration,
    json_name: "startOffset",
    deprecated: false

  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset", deprecated: false
  field :fps, 3, type: :double, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ExecutableCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language, 1,
    type: Google.Ai.Generativelanguage.V1beta.ExecutableCode.Language,
    enum: true,
    deprecated: false

  field :code, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CodeExecutionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :outcome, 1,
    type: Google.Ai.Generativelanguage.V1beta.CodeExecutionResult.Outcome,
    enum: true,
    deprecated: false

  field :output, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Tool.GoogleSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_range_filter, 2,
    type: Google.Type.Interval,
    json_name: "timeRangeFilter",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false

  field :google_search_retrieval, 2,
    type: Google.Ai.Generativelanguage.V1beta.GoogleSearchRetrieval,
    json_name: "googleSearchRetrieval",
    deprecated: false

  field :code_execution, 3,
    type: Google.Ai.Generativelanguage.V1beta.CodeExecution,
    json_name: "codeExecution",
    deprecated: false

  field :google_search, 4,
    type: Google.Ai.Generativelanguage.V1beta.Tool.GoogleSearch,
    json_name: "googleSearch",
    deprecated: false

  field :url_context, 8,
    type: Google.Ai.Generativelanguage.V1beta.UrlContext,
    json_name: "urlContext",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UrlContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.GoogleSearchRetrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_retrieval_config, 1,
    type: Google.Ai.Generativelanguage.V1beta.DynamicRetrievalConfig,
    json_name: "dynamicRetrievalConfig"
end

defmodule Google.Ai.Generativelanguage.V1beta.DynamicRetrievalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Ai.Generativelanguage.V1beta.DynamicRetrievalConfig.Mode,
    enum: true

  field :dynamic_threshold, 2, proto3_optional: true, type: :float, json_name: "dynamicThreshold"
end

defmodule Google.Ai.Generativelanguage.V1beta.CodeExecution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig.Mode,
    enum: true,
    deprecated: false

  field :allowed_function_names, 2,
    repeated: true,
    type: :string,
    json_name: "allowedFunctionNames",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :parameters, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    deprecated: false

  field :parameters_json_schema, 6,
    proto3_optional: true,
    type: Google.Protobuf.Value,
    json_name: "parametersJsonSchema",
    deprecated: false

  field :response, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    deprecated: false

  field :response_json_schema, 7,
    proto3_optional: true,
    type: Google.Protobuf.Value,
    json_name: "responseJsonSchema",
    deprecated: false

  field :behavior, 5,
    type: Google.Ai.Generativelanguage.V1beta.FunctionDeclaration.Behavior,
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 3, type: :string, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :args, 2, proto3_optional: true, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 3, type: :string, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
  field :will_continue, 4, type: :bool, json_name: "willContinue", deprecated: false

  field :scheduling, 5,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.FunctionResponse.Scheduling,
    enum: true,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Schema.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Ai.Generativelanguage.V1beta.Schema
end

defmodule Google.Ai.Generativelanguage.V1beta.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Ai.Generativelanguage.V1beta.Type, enum: true, deprecated: false
  field :format, 2, type: :string, deprecated: false
  field :title, 24, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :nullable, 4, type: :bool, deprecated: false
  field :enum, 5, repeated: true, type: :string, deprecated: false

  field :items, 6,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    deprecated: false

  field :max_items, 21, type: :int64, json_name: "maxItems", deprecated: false
  field :min_items, 22, type: :int64, json_name: "minItems", deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema.PropertiesEntry,
    map: true,
    deprecated: false

  field :required, 8, repeated: true, type: :string, deprecated: false
  field :min_properties, 9, type: :int64, json_name: "minProperties", deprecated: false
  field :max_properties, 10, type: :int64, json_name: "maxProperties", deprecated: false
  field :minimum, 11, proto3_optional: true, type: :double, deprecated: false
  field :maximum, 12, proto3_optional: true, type: :double, deprecated: false
  field :min_length, 13, type: :int64, json_name: "minLength", deprecated: false
  field :max_length, 14, type: :int64, json_name: "maxLength", deprecated: false
  field :pattern, 15, type: :string, deprecated: false
  field :example, 16, type: Google.Protobuf.Value, deprecated: false

  field :any_of, 18,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    json_name: "anyOf",
    deprecated: false

  field :property_ordering, 23,
    repeated: true,
    type: :string,
    json_name: "propertyOrdering",
    deprecated: false

  field :default, 25, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingPassage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :content, 2, type: Google.Ai.Generativelanguage.V1beta.Content
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingPassages do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :passages, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.GroundingPassage
end

defmodule Google.Ai.Generativelanguage.V1beta.ModalityTokenCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :modality, 1, type: Google.Ai.Generativelanguage.V1beta.Modality, enum: true
  field :token_count, 2, type: :int32, json_name: "tokenCount"
end
