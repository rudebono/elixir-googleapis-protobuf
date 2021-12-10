defmodule Google.Actions.Sdk.V2.Interactionmodel.ConditionalEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: String.t(),
          transition_to_scene: String.t(),
          handler: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct condition: "",
            transition_to_scene: "",
            handler: nil

  field :condition, 1, type: :string, deprecated: false
  field :transition_to_scene, 2, type: :string, json_name: "transitionToScene", deprecated: false
  field :handler, 3, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler, deprecated: false
end
