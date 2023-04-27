defmodule Google.Cloud.Gsuiteaddons.Logging.V1.GSuiteAddOnsLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deployment, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
  field :deployment_function, 3, type: :string, json_name: "deploymentFunction"
end