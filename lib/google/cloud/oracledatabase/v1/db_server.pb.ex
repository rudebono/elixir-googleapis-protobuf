defmodule Google.Cloud.Oracledatabase.V1.DbServerProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :AVAILABLE, 2
  field :UNAVAILABLE, 3
  field :DELETING, 4
  field :DELETED, 5
end

defmodule Google.Cloud.Oracledatabase.V1.DbServer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :properties, 3, type: Google.Cloud.Oracledatabase.V1.DbServerProperties, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbServerProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false
  field :ocpu_count, 2, type: :int32, json_name: "ocpuCount", deprecated: false
  field :max_ocpu_count, 3, type: :int32, json_name: "maxOcpuCount", deprecated: false
  field :memory_size_gb, 4, type: :int32, json_name: "memorySizeGb", deprecated: false
  field :max_memory_size_gb, 5, type: :int32, json_name: "maxMemorySizeGb", deprecated: false

  field :db_node_storage_size_gb, 6,
    type: :int32,
    json_name: "dbNodeStorageSizeGb",
    deprecated: false

  field :max_db_node_storage_size_gb, 7,
    type: :int32,
    json_name: "maxDbNodeStorageSizeGb",
    deprecated: false

  field :vm_count, 8, type: :int32, json_name: "vmCount", deprecated: false

  field :state, 9,
    type: Google.Cloud.Oracledatabase.V1.DbServerProperties.State,
    enum: true,
    deprecated: false

  field :db_node_ids, 10, repeated: true, type: :string, json_name: "dbNodeIds", deprecated: false
end
