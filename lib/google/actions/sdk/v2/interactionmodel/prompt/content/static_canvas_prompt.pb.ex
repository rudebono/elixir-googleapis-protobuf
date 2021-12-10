defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCanvasPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          data: [Google.Protobuf.Value.t()],
          suppress_mic: boolean,
          send_state_data_to_canvas_app: boolean,
          enable_full_screen: boolean
        }

  defstruct url: "",
            data: [],
            suppress_mic: false,
            send_state_data_to_canvas_app: false,
            enable_full_screen: false

  field :url, 1, type: :string, deprecated: false
  field :data, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :suppress_mic, 3, type: :bool, json_name: "suppressMic", deprecated: false

  field :send_state_data_to_canvas_app, 5,
    type: :bool,
    json_name: "sendStateDataToCanvasApp",
    deprecated: false

  field :enable_full_screen, 6, type: :bool, json_name: "enableFullScreen", deprecated: false
end
