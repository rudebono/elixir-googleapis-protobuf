defmodule Google.Actions.Sdk.V2.Interactionmodel.Scene do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
end
