defmodule Google.Ai.Generativelanguage.V1beta.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :INTEGER, 3
  field :BOOLEAN, 4
  field :ARRAY, 5
  field :OBJECT, 6
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :AUTO, 1
  field :ANY, 2
  field :NONE, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Part
  field :role, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

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
end

defmodule Google.Ai.Generativelanguage.V1beta.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :data, 2, type: :bytes
end

defmodule Google.Ai.Generativelanguage.V1beta.FileData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :file_uri, 2, type: :string, json_name: "fileUri", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_declarations, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.FunctionDeclaration,
    json_name: "functionDeclarations",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ToolConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_calling_config, 1,
    type: Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig,
    json_name: "functionCallingConfig",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCallingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :parameters, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :args, 2, proto3_optional: true, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.FunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :response, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Schema.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Ai.Generativelanguage.V1beta.Schema
end

defmodule Google.Ai.Generativelanguage.V1beta.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Ai.Generativelanguage.V1beta.Type, enum: true, deprecated: false
  field :format, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :nullable, 4, type: :bool, deprecated: false
  field :enum, 5, repeated: true, type: :string, deprecated: false

  field :items, 6,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema,
    deprecated: false

  field :properties, 7,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Schema.PropertiesEntry,
    map: true,
    deprecated: false

  field :required, 8, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingPassage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :content, 2, type: Google.Ai.Generativelanguage.V1beta.Content
end

defmodule Google.Ai.Generativelanguage.V1beta.GroundingPassages do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :passages, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.GroundingPassage
end