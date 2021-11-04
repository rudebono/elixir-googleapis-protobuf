defmodule Google.Actions.Sdk.V2.Interactionmodel.IntentEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent: String.t(),
          transition_to_scene: String.t(),
          handler: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct [:intent, :transition_to_scene, :handler]

  field :intent, 1, type: :string
  field :transition_to_scene, 2, type: :string, json_name: "transitionToScene"
  field :handler, 3, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler

  def transform_module(), do: nil
end
