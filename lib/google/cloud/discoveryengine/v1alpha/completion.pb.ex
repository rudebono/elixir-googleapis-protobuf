defmodule Google.Cloud.Discoveryengine.V1alpha.SuggestionDenyListEntry.MatchOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MATCH_OPERATOR_UNSPECIFIED, 0
  field :EXACT_MATCH, 1
  field :CONTAINS, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SuggestionDenyListEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :block_phrase, 1, type: :string, json_name: "blockPhrase", deprecated: false

  field :match_operator, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.SuggestionDenyListEntry.MatchOperator,
    json_name: "matchOperator",
    enum: true,
    deprecated: false
end