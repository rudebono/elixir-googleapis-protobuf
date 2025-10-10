defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters.InputTokenLimit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INPUT_TOKEN_LIMIT_UNSPECIFIED, 0
  field :INPUT_TOKEN_LIMIT_SHORT, 1
  field :INPUT_TOKEN_LIMIT_MEDIUM, 2
  field :INPUT_TOKEN_LIMIT_LONG, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters.OutputTokenLimit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OUTPUT_TOKEN_LIMIT_UNSPECIFIED, 0
  field :OUTPUT_TOKEN_LIMIT_SHORT, 1
  field :OUTPUT_TOKEN_LIMIT_MEDIUM, 2
  field :OUTPUT_TOKEN_LIMIT_LONG, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.FallbackSettings.PromptTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :prompt_text, 2, type: :string, json_name: "promptText"
  field :frozen, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.FallbackSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :selected_prompt, 3, type: :string, json_name: "selectedPrompt"

  field :prompt_templates, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.FallbackSettings.PromptTemplate,
    json_name: "promptTemplates"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.KnowledgeConnectorSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business, 1, type: :string
  field :agent, 2, type: :string
  field :agent_identity, 3, type: :string, json_name: "agentIdentity"
  field :business_description, 4, type: :string, json_name: "businessDescription"
  field :agent_scope, 5, type: :string, json_name: "agentScope"
  field :disable_data_store_fallback, 8, type: :bool, json_name: "disableDataStoreFallback"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 5, type: :string

  field :fallback_settings, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.FallbackSettings,
    json_name: "fallbackSettings"

  field :generative_safety_settings, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings,
    json_name: "generativeSafetySettings"

  field :knowledge_connector_settings, 7,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.GenerativeSettings.KnowledgeConnectorSettings,
    json_name: "knowledgeConnectorSettings"

  field :language_code, 4, type: :string, json_name: "languageCode"

  field :llm_model_settings, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings,
    json_name: "llmModelSettings"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :temperature, 1, proto3_optional: true, type: :float

  field :input_token_limit, 2,
    proto3_optional: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters.InputTokenLimit,
    json_name: "inputTokenLimit",
    enum: true

  field :output_token_limit, 3,
    proto3_optional: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters.OutputTokenLimit,
    json_name: "outputTokenLimit",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
  field :prompt_text, 2, type: :string, json_name: "promptText"
  field :parameters, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings.Parameters
end
