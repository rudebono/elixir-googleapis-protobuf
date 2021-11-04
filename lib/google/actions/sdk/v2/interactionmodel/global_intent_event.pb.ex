defmodule Google.Actions.Sdk.V2.Interactionmodel.GlobalIntentEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition_to_scene: String.t(),
          handler: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct [:transition_to_scene, :handler]

  field :transition_to_scene, 1, type: :string, json_name: "transitionToScene"
  field :handler, 2, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler

  def transform_module(), do: nil
end
