defmodule Google.Actions.Sdk.V2.Interactionmodel.GlobalIntentEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transition_to_scene, 1, type: :string, json_name: "transitionToScene", deprecated: false
  field :handler, 2, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler, deprecated: false
end
