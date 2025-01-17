defmodule Google.Actions.Sdk.V2.Conversation.Canvas do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :url, 1, type: :string
  field :data, 4, repeated: true, type: Google.Protobuf.Value
  field :suppress_mic, 3, type: :bool, json_name: "suppressMic"
  field :enable_full_screen, 8, type: :bool, json_name: "enableFullScreen"
end
