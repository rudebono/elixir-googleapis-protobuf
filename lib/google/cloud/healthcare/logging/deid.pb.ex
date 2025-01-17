defmodule Google.Cloud.Healthcare.Logging.DeidentifyLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :error, 2, type: Google.Rpc.Status
end
