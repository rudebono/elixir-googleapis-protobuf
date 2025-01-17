defmodule Google.Cloud.Healthcare.Logging.ImportHl7V2LogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.Hl7V2NotificationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :pubsub_topic, 2, type: :string, json_name: "pubsubTopic"
  field :error, 3, type: Google.Rpc.Status
end
