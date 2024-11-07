defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Generator.Placeholder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Generator.ModelParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :temperature, 1, proto3_optional: true, type: :float
  field :max_decode_steps, 2, proto3_optional: true, type: :int32, json_name: "maxDecodeSteps"
  field :top_p, 3, proto3_optional: true, type: :float, json_name: "topP"
  field :top_k, 4, proto3_optional: true, type: :int32, json_name: "topK"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Generator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :prompt_text, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Phrase,
    json_name: "promptText",
    deprecated: false

  field :placeholders, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Generator.Placeholder,
    deprecated: false

  field :llm_model_settings, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings,
    json_name: "llmModelSettings"

  field :model_parameter, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Generator.ModelParameter,
    json_name: "modelParameter"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListGeneratorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListGeneratorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generators, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Generator
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :generator, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Generator, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generator, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Generator, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteGeneratorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Generators.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Generators",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListGenerators,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListGeneratorsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListGeneratorsResponse

  rpc :GetGenerator,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetGeneratorRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Generator

  rpc :CreateGenerator,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateGeneratorRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Generator

  rpc :UpdateGenerator,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateGeneratorRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Generator

  rpc :DeleteGenerator,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteGeneratorRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Generators.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Generators.Service
end