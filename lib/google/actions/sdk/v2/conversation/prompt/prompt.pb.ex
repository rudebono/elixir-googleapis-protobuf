defmodule Google.Actions.Sdk.V2.Conversation.Prompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          append: boolean,
          override: boolean,
          first_simple: Google.Actions.Sdk.V2.Conversation.Simple.t() | nil,
          content: Google.Actions.Sdk.V2.Conversation.Content.t() | nil,
          last_simple: Google.Actions.Sdk.V2.Conversation.Simple.t() | nil,
          suggestions: [Google.Actions.Sdk.V2.Conversation.Suggestion.t()],
          link: Google.Actions.Sdk.V2.Conversation.Link.t() | nil,
          canvas: Google.Actions.Sdk.V2.Conversation.Canvas.t() | nil
        }

  defstruct [
    :append,
    :override,
    :first_simple,
    :content,
    :last_simple,
    :suggestions,
    :link,
    :canvas
  ]

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

  def transform_module(), do: nil
end
