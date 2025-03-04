defmodule Google.Chat.Logging.V1.ChatAppLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deployment, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
  field :deployment_function, 3, type: :string, json_name: "deploymentFunction"
end
