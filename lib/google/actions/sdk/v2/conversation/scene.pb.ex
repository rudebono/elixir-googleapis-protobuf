defmodule Google.Actions.Sdk.V2.Conversation.SlotFillingStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :INITIALIZED, 1
  field :COLLECTING, 2
  field :FINAL, 4
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot.SlotMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :OPTIONAL, 1
  field :REQUIRED, 2
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot.SlotStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SLOT_UNSPECIFIED, 0
  field :EMPTY, 1
  field :INVALID, 2
  field :FILLED, 3
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mode, 1, type: Google.Actions.Sdk.V2.Conversation.Slot.SlotMode, enum: true
  field :status, 2, type: Google.Actions.Sdk.V2.Conversation.Slot.SlotStatus, enum: true
  field :value, 3, type: Google.Protobuf.Value
  field :updated, 4, type: :bool
  field :prompt, 5, type: Google.Actions.Sdk.V2.Conversation.Prompt
end