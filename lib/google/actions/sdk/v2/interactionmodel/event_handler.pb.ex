defmodule Google.Actions.Sdk.V2.Interactionmodel.EventHandler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prompt:
            {:static_prompt, Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt.t() | nil}
            | {:static_prompt_name, String.t()},
          webhook_handler: String.t()
        }

  defstruct prompt: nil,
            webhook_handler: ""

  oneof :prompt, 0

  field :webhook_handler, 1, type: :string, json_name: "webhookHandler"

  field :static_prompt, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt,
    json_name: "staticPrompt",
    oneof: 0

  field :static_prompt_name, 3, type: :string, json_name: "staticPromptName", oneof: 0
end
