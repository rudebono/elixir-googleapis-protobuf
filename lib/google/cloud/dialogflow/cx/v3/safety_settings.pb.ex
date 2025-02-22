defmodule Google.Cloud.Dialogflow.Cx.V3.SafetySettings.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SafetySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :banned_phrases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SafetySettings.Phrase,
    json_name: "bannedPhrases"
end
