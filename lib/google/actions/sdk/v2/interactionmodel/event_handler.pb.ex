defmodule Google.Actions.Sdk.V2.Interactionmodel.EventHandler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :prompt, 0

  field :webhook_handler, 1, type: :string, json_name: "webhookHandler"

  field :static_prompt, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticPrompt,
    json_name: "staticPrompt",
    oneof: 0

  field :static_prompt_name, 3, type: :string, json_name: "staticPromptName", oneof: 0
end