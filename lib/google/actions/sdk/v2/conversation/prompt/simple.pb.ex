defmodule Google.Actions.Sdk.V2.Conversation.Simple do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          speech: String.t(),
          text: String.t()
        }

  defstruct speech: "",
            text: ""

  field :speech, 1, type: :string
  field :text, 2, type: :string
end
