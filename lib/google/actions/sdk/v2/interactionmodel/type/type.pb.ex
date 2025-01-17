defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.Type do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :sub_type, 0

  field :synonym, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType, oneof: 0

  field :regular_expression, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType,
    json_name: "regularExpression",
    oneof: 0

  field :free_text, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.FreeTextType,
    json_name: "freeText",
    oneof: 0

  field :exclusions, 4, repeated: true, type: :string
end
