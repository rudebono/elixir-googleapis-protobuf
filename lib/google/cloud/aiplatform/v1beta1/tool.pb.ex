defmodule Google.Cloud.Aiplatform.V1beta1.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false

  field :retrieval, 2, type: Google.Cloud.Aiplatform.V1beta1.Retrieval, deprecated: false

  field :google_search_retrieval, 3,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleSearchRetrieval,
    json_name: "googleSearchRetrieval",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolUseExample.ExtensionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :extension, 1, type: :string, deprecated: false
  field :operation_id, 2, type: :string, json_name: "operationId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolUseExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :Target, 0

  field :extension_operation, 10,
    type: Google.Cloud.Aiplatform.V1beta1.ToolUseExample.ExtensionOperation,
    json_name: "extensionOperation",
    oneof: 0

  field :function_name, 11, type: :string, json_name: "functionName", oneof: 0
  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :request_params, 3, type: Google.Protobuf.Struct, json_name: "requestParams"
  field :response_params, 4, type: Google.Protobuf.Struct, json_name: "responseParams"
  field :response_summary, 5, type: :string, json_name: "responseSummary"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FunctionDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1beta1.Schema, deprecated: false
  field :response, 4, type: Google.Cloud.Aiplatform.V1beta1.Schema, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :args, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Retrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :vertex_ai_search, 2,
    type: Google.Cloud.Aiplatform.V1beta1.VertexAISearch,
    json_name: "vertexAiSearch",
    oneof: 0

  field :disable_attribution, 3, type: :bool, json_name: "disableAttribution", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.VertexAISearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :datastore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GoogleSearchRetrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disable_attribution, 1, type: :bool, json_name: "disableAttribution", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FunctionCallingConfig.Mode,
    enum: true,
    deprecated: false

  field :allowed_function_names, 2,
    repeated: true,
    type: :string,
    json_name: "allowedFunctionNames",
    deprecated: false
end