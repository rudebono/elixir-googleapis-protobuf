defmodule Google.Cloud.Healthcare.Logging.ImportFhirLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source, 1, type: :string
  field :resource_id, 2, type: :string, json_name: "resourceId"
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.ExportFhirLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destination, 1, type: :string
  field :resource_name, 3, type: :string, json_name: "resourceName"
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.FhirConfigureSearchLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_id, 1, type: :string, json_name: "resourceId"
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.FhirNotificationLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :pubsub_topic, 2, type: :string, json_name: "pubsubTopic"
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.FhirStreamLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :destination, 2, type: :string
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Healthcare.Logging.FhirDeidentifyStreamToStoreLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :destination, 2, type: :string
  field :error, 3, type: Google.Rpc.Status
end
