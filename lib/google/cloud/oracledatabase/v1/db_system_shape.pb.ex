defmodule Google.Cloud.Oracledatabase.V1.DbSystemShape do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :shape, 2, type: :string, deprecated: false
  field :min_node_count, 3, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 4, type: :int32, json_name: "maxNodeCount", deprecated: false
  field :min_storage_count, 5, type: :int32, json_name: "minStorageCount", deprecated: false
  field :max_storage_count, 6, type: :int32, json_name: "maxStorageCount", deprecated: false

  field :available_core_count_per_node, 7,
    type: :int32,
    json_name: "availableCoreCountPerNode",
    deprecated: false

  field :available_memory_per_node_gb, 8,
    type: :int32,
    json_name: "availableMemoryPerNodeGb",
    deprecated: false

  field :available_data_storage_tb, 9,
    type: :int32,
    json_name: "availableDataStorageTb",
    deprecated: false

  field :min_core_count_per_node, 10,
    type: :int32,
    json_name: "minCoreCountPerNode",
    deprecated: false

  field :min_memory_per_node_gb, 11,
    type: :int32,
    json_name: "minMemoryPerNodeGb",
    deprecated: false

  field :min_db_node_storage_per_node_gb, 12,
    type: :int32,
    json_name: "minDbNodeStoragePerNodeGb",
    deprecated: false
end
