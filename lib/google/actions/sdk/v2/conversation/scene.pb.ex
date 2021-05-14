defmodule Google.Actions.Sdk.V2.Conversation.SlotFillingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :INITIALIZED | :COLLECTING | :FINAL

  field :UNSPECIFIED, 0

  field :INITIALIZED, 1

  field :COLLECTING, 2

  field :FINAL, 4
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot.SlotMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODE_UNSPECIFIED | :OPTIONAL | :REQUIRED

  field :MODE_UNSPECIFIED, 0

  field :OPTIONAL, 1

  field :REQUIRED, 2
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot.SlotStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SLOT_UNSPECIFIED | :EMPTY | :INVALID | :FILLED

  field :SLOT_UNSPECIFIED, 0

  field :EMPTY, 1

  field :INVALID, 2

  field :FILLED, 3
end

defmodule Google.Actions.Sdk.V2.Conversation.Slot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Actions.Sdk.V2.Conversation.Slot.SlotMode.t(),
          status: Google.Actions.Sdk.V2.Conversation.Slot.SlotStatus.t(),
          value: Google.Protobuf.Value.t() | nil,
          updated: boolean,
          prompt: Google.Actions.Sdk.V2.Conversation.Prompt.t() | nil
        }

  defstruct [:mode, :status, :value, :updated, :prompt]

  field :mode, 1, type: Google.Actions.Sdk.V2.Conversation.Slot.SlotMode, enum: true
  field :status, 2, type: Google.Actions.Sdk.V2.Conversation.Slot.SlotStatus, enum: true
  field :value, 3, type: Google.Protobuf.Value
  field :updated, 4, type: :bool
  field :prompt, 5, type: Google.Actions.Sdk.V2.Conversation.Prompt
end
