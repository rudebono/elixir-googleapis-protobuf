defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation: String.t(),
          participant: String.t(),
          suggestion_results: [Google.Cloud.Dialogflow.V2.SuggestionResult.t()]
        }

  defstruct [:conversation, :participant, :suggestion_results]

  field :conversation, 1, type: :string
  field :participant, 3, type: :string
  field :suggestion_results, 5, repeated: true, type: Google.Cloud.Dialogflow.V2.SuggestionResult
end
