defmodule Google.Actions.Sdk.V2.Conversation.Canvas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          data: [Google.Protobuf.Value.t()],
          suppress_mic: boolean,
          enable_full_screen: boolean
        }

  defstruct [:url, :data, :suppress_mic, :enable_full_screen]

  field :url, 1, type: :string
  field :data, 4, repeated: true, type: Google.Protobuf.Value
  field :suppress_mic, 3, type: :bool, json_name: "suppressMic"
  field :enable_full_screen, 8, type: :bool, json_name: "enableFullScreen"

  def transform_module(), do: nil
end
