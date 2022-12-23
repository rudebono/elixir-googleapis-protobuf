defmodule Google.Cloud.Datastream.Logging.V1.ConnectionActivityLogEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_code, 1, type: :string, json_name: "eventCode"
  field :event_message, 2, type: :string, json_name: "eventMessage"
end

defmodule Google.Cloud.Datastream.Logging.V1.StreamActivityLogEntry do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_code, 1, type: :string, json_name: "eventCode"
  field :event_message, 2, type: :string, json_name: "eventMessage"
end