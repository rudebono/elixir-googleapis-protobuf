defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conversation, 1, type: :string
  field :participant, 3, type: :string

  field :suggestion_results, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult,
    json_name: "suggestionResults"
end
