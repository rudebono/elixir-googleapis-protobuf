defmodule Google.Cloud.Datastream.Logging.V1.StreamActivityLogEntry.StreamStateChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :new_state, 1,
    type: Google.Cloud.Datastream.V1.Stream.State,
    json_name: "newState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datastream.Logging.V1.StreamActivityLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :event_payload, 0

  field :event_code, 1, type: :string, json_name: "eventCode"
  field :event_message, 2, type: :string, json_name: "eventMessage"

  field :stream_state_change, 100,
    type: Google.Cloud.Datastream.Logging.V1.StreamActivityLogEntry.StreamStateChange,
    json_name: "streamStateChange",
    oneof: 0
end