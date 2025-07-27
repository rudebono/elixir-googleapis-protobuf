defmodule Google.Actions.Sdk.V2.Conversation.Prompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :append, 1, type: :bool, deprecated: true
  field :override, 8, type: :bool

  field :first_simple, 2,
    type: Google.Actions.Sdk.V2.Conversation.Simple,
    json_name: "firstSimple"

  field :content, 3, type: Google.Actions.Sdk.V2.Conversation.Content
  field :last_simple, 4, type: Google.Actions.Sdk.V2.Conversation.Simple, json_name: "lastSimple"
  field :suggestions, 5, repeated: true, type: Google.Actions.Sdk.V2.Conversation.Suggestion
  field :link, 6, type: Google.Actions.Sdk.V2.Conversation.Link
  field :canvas, 9, type: Google.Actions.Sdk.V2.Conversation.Canvas
end
