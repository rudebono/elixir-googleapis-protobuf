defmodule Google.Actions.Sdk.V2.Interactionmodel.EventHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prompt: {atom, any},
          webhook_handler: String.t()
        }

  defstruct [:prompt, :webhook_handler]

  oneof :prompt, 0
  field :webhook_handler, 1, type: :string

  field :static_prompt, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt,
    oneof: 0

  field :static_prompt_name, 3, type: :string, oneof: 0
end
