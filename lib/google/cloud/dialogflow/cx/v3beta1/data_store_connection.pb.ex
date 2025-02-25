defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_STORE_TYPE_UNSPECIFIED, 0
  field :PUBLIC_WEB, 1
  field :UNSTRUCTURED, 2
  field :STRUCTURED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals.GroundingDecision do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GROUNDING_DECISION_UNSPECIFIED, 0
  field :ACCEPTED_BY_GROUNDING, 1
  field :REJECTED_BY_GROUNDING, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals.GroundingScoreBucket do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GROUNDING_SCORE_BUCKET_UNSPECIFIED, 0
  field :VERY_LOW, 1
  field :LOW, 3
  field :MEDIUM, 4
  field :HIGH, 5
  field :VERY_HIGH, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals.SafetyDecision do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SAFETY_DECISION_UNSPECIFIED, 0
  field :ACCEPTED_BY_SAFETY_CHECK, 1
  field :REJECTED_BY_SAFETY_CHECK, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals.BannedPhraseMatch do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BANNED_PHRASE_MATCH_UNSPECIFIED, 0
  field :BANNED_PHRASE_MATCH_NONE, 1
  field :BANNED_PHRASE_MATCH_QUERY, 2
  field :BANNED_PHRASE_MATCH_RESPONSE, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_store_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreType,
    json_name: "dataStoreType",
    enum: true

  field :data_store, 2, type: :string, json_name: "dataStore"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.RewriterModelCallSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rendered_prompt, 1, type: :string, json_name: "renderedPrompt"
  field :model_output, 2, type: :string, json_name: "modelOutput"
  field :model, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SearchSnippet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document_title, 1, type: :string, json_name: "documentTitle"
  field :document_uri, 2, type: :string, json_name: "documentUri"
  field :text, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.AnswerGenerationModelCallSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rendered_prompt, 1, type: :string, json_name: "renderedPrompt"
  field :model_output, 2, type: :string, json_name: "modelOutput"
  field :model, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.AnswerPart do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string
  field :supporting_indices, 2, repeated: true, type: :int32, json_name: "supportingIndices"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.CitedSnippet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_snippet, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SearchSnippet,
    json_name: "searchSnippet"

  field :snippet_index, 2, type: :int32, json_name: "snippetIndex"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :decision, 1,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals.GroundingDecision,
    enum: true

  field :score, 2,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals.GroundingScoreBucket,
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :decision, 1,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals.SafetyDecision,
    enum: true

  field :banned_phrase_match, 2,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals.BannedPhraseMatch,
    json_name: "bannedPhraseMatch",
    enum: true

  field :matched_banned_phrase, 3, type: :string, json_name: "matchedBannedPhrase"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rewriter_model_call_signals, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.RewriterModelCallSignals,
    json_name: "rewriterModelCallSignals",
    deprecated: false

  field :rewritten_query, 2, type: :string, json_name: "rewrittenQuery", deprecated: false

  field :search_snippets, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SearchSnippet,
    json_name: "searchSnippets",
    deprecated: false

  field :answer_generation_model_call_signals, 4,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.AnswerGenerationModelCallSignals,
    json_name: "answerGenerationModelCallSignals",
    deprecated: false

  field :answer, 5, type: :string, deprecated: false

  field :answer_parts, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.AnswerPart,
    json_name: "answerParts",
    deprecated: false

  field :cited_snippets, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.CitedSnippet,
    json_name: "citedSnippets",
    deprecated: false

  field :grounding_signals, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.GroundingSignals,
    json_name: "groundingSignals",
    deprecated: false

  field :safety_signals, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnectionSignals.SafetySignals,
    json_name: "safetySignals",
    deprecated: false
end
