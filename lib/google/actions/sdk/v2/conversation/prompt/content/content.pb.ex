defmodule Google.Actions.Sdk.V2.Conversation.Content do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content:
            {:card, Google.Actions.Sdk.V2.Conversation.Card.t() | nil}
            | {:image, Google.Actions.Sdk.V2.Conversation.Image.t() | nil}
            | {:table, Google.Actions.Sdk.V2.Conversation.Table.t() | nil}
            | {:media, Google.Actions.Sdk.V2.Conversation.Media.t() | nil}
            | {:canvas, Google.Actions.Sdk.V2.Conversation.Canvas.t() | nil}
            | {:collection, Google.Actions.Sdk.V2.Conversation.Collection.t() | nil}
            | {:list, Google.Actions.Sdk.V2.Conversation.List.t() | nil}
        }

  defstruct [:content]

  oneof :content, 0

  field :card, 1, type: Google.Actions.Sdk.V2.Conversation.Card, oneof: 0
  field :image, 2, type: Google.Actions.Sdk.V2.Conversation.Image, oneof: 0
  field :table, 3, type: Google.Actions.Sdk.V2.Conversation.Table, oneof: 0
  field :media, 4, type: Google.Actions.Sdk.V2.Conversation.Media, oneof: 0
  field :canvas, 5, type: Google.Actions.Sdk.V2.Conversation.Canvas, deprecated: true, oneof: 0
  field :collection, 6, type: Google.Actions.Sdk.V2.Conversation.Collection, oneof: 0
  field :list, 7, type: Google.Actions.Sdk.V2.Conversation.List, oneof: 0

  def transform_module(), do: nil
end
