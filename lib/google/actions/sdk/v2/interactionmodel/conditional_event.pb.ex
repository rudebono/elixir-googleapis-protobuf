defmodule Google.Actions.Sdk.V2.Interactionmodel.ConditionalEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: String.t(),
          transition_to_scene: String.t(),
          handler: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct [:condition, :transition_to_scene, :handler]

  field :condition, 1, type: :string
  field :transition_to_scene, 2, type: :string
  field :handler, 3, type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler
end
