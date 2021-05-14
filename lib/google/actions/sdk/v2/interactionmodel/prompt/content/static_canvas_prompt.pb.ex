defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCanvasPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          data: [Google.Protobuf.Value.t()],
          suppress_mic: boolean,
          send_state_data_to_canvas_app: boolean
        }

  defstruct [:url, :data, :suppress_mic, :send_state_data_to_canvas_app]

  field :url, 1, type: :string
  field :data, 2, repeated: true, type: Google.Protobuf.Value
  field :suppress_mic, 3, type: :bool
  field :send_state_data_to_canvas_app, 5, type: :bool
end
