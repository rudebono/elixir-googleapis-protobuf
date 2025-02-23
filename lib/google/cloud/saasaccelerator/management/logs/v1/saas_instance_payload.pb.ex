defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.InstanceEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :verb, 1, type: :string
  field :stage, 2, type: :string
  field :msg, 3, type: :string
  field :trace_id, 4, type: :string, json_name: "traceId"
  field :node_id, 5, type: :string, json_name: "nodeId"
end
