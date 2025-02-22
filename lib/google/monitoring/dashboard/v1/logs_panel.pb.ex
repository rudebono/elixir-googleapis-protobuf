defmodule Google.Monitoring.Dashboard.V1.LogsPanel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter, 1, type: :string
  field :resource_names, 2, repeated: true, type: :string, json_name: "resourceNames"
end
