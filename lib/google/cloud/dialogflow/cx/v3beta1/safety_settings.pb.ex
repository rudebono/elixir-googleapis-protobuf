defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PhraseMatchStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHRASE_MATCH_STRATEGY_UNSPECIFIED, 0
  field :PARTIAL_MATCH, 1
  field :WORD_MATCH, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PromptSecuritySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_prompt_security, 1,
    type: :bool,
    json_name: "enablePromptSecurity",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_banned_phrase_match_strategy, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PhraseMatchStrategy,
    json_name: "defaultBannedPhraseMatchStrategy",
    enum: true,
    deprecated: false

  field :banned_phrases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.Phrase,
    json_name: "bannedPhrases"

  field :prompt_security_settings, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PromptSecuritySettings,
    json_name: "promptSecuritySettings",
    deprecated: false
end
