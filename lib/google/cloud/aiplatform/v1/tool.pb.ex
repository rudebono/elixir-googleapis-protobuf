defmodule Google.Cloud.Aiplatform.V1.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
end

defmodule Google.Cloud.Aiplatform.V1.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false

  field :retrieval, 2, type: Google.Cloud.Aiplatform.V1.Retrieval, deprecated: false

  field :google_search_retrieval, 3,
    type: Google.Cloud.Aiplatform.V1.GoogleSearchRetrieval,
    json_name: "googleSearchRetrieval",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionDeclaration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1.Schema, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :args, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Retrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :vertex_ai_search, 2,
    type: Google.Cloud.Aiplatform.V1.VertexAISearch,
    json_name: "vertexAiSearch",
    oneof: 0

  field :disable_attribution, 3, type: :bool, json_name: "disableAttribution", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.VertexAISearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :datastore, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GoogleSearchRetrieval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Cloud.Aiplatform.V1.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Aiplatform.V1.FunctionCallingConfig.Mode,
    enum: true,
    deprecated: false

  field :allowed_function_names, 2,
    repeated: true,
    type: :string,
    json_name: "allowedFunctionNames",
    deprecated: false
end