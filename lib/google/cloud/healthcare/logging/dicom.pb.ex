defmodule Google.Cloud.Healthcare.Logging.ImportDicomLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.ExportDicomLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.DicomNotificationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :pubsub_topic, 2, type: :string, json_name: "pubsubTopic"
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.DicomStreamLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :destination, 2, type: :string
  field :error, 3, type: Google.Rpc.Status
end
