defmodule Google.Monitoring.V3.Group do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :parent_name, 3, type: :string, json_name: "parentName"
  field :filter, 5, type: :string
  field :is_cluster, 6, type: :bool, json_name: "isCluster"
end
