defmodule Google.Actions.Sdk.V2.Interactionmodel.Scene do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          on_enter: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil,
          intent_events: [Google.Actions.Sdk.V2.Interactionmodel.IntentEvent.t()],
          conditional_events: [Google.Actions.Sdk.V2.Interactionmodel.ConditionalEvent.t()],
          slots: [Google.Actions.Sdk.V2.Interactionmodel.Slot.t()],
          on_slot_updated: Google.Actions.Sdk.V2.Interactionmodel.EventHandler.t() | nil
        }

  defstruct [:on_enter, :intent_events, :conditional_events, :slots, :on_slot_updated]

  field :on_enter, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "onEnter"

  field :intent_events, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.IntentEvent,
    json_name: "intentEvents"

  field :conditional_events, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.ConditionalEvent,
    json_name: "conditionalEvents"

  field :slots, 4, repeated: true, type: Google.Actions.Sdk.V2.Interactionmodel.Slot

  field :on_slot_updated, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.EventHandler,
    json_name: "onSlotUpdated"

  def transform_module(), do: nil
end
