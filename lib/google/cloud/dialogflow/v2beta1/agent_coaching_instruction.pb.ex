defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction.DuplicateCheckResult.DuplicateSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :answer_record, 1, type: :string, json_name: "answerRecord", deprecated: false
  field :suggestion_index, 3, type: :int32, json_name: "suggestionIndex", deprecated: false
  field :similarity_score, 4, type: :float, json_name: "similarityScore", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction.DuplicateCheckResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :duplicate_suggestions, 1,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction.DuplicateCheckResult.DuplicateSuggestion,
    json_name: "duplicateSuggestions",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :display_details, 2, type: :string, json_name: "displayDetails", deprecated: false
  field :condition, 3, type: :string, deprecated: false
  field :agent_action, 4, type: :string, json_name: "agentAction", deprecated: false
  field :system_action, 5, type: :string, json_name: "systemAction", deprecated: false

  field :duplicate_check_result, 8,
    type: Google.Cloud.Dialogflow.V2beta1.AgentCoachingInstruction.DuplicateCheckResult,
    json_name: "duplicateCheckResult",
    deprecated: false
end
