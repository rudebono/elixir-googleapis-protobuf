defmodule Google.Cloud.Discoveryengine.V1.SuggestionDenyListEntry.MatchOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MATCH_OPERATOR_UNSPECIFIED, 0
  field :EXACT_MATCH, 1
  field :CONTAINS, 2
end

defmodule Google.Cloud.Discoveryengine.V1.SuggestionDenyListEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :block_phrase, 1, type: :string, json_name: "blockPhrase", deprecated: false

  field :match_operator, 2,
    type: Google.Cloud.Discoveryengine.V1.SuggestionDenyListEntry.MatchOperator,
    json_name: "matchOperator",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CompletionSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ranking_info, 0

  field :global_score, 2, type: :double, json_name: "globalScore", oneof: 0
  field :frequency, 3, type: :int64, oneof: 0
  field :suggestion, 1, type: :string, deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode"
  field :group_id, 5, type: :string, json_name: "groupId"
  field :group_score, 6, type: :double, json_name: "groupScore"
  field :alternative_phrases, 7, repeated: true, type: :string, json_name: "alternativePhrases"
end
