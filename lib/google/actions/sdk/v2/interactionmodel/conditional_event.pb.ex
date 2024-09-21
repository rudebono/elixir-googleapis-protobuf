defmodule Google.Actions.Sdk.V2.Interactionmodel.ConditionalEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :condition, 1, type: :string, deprecated: false
  field :transition_to_scene, 2, type: :string, json_name: "transitionToScene", deprecated: false
  field :handler, 3, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler, deprecated: false
end