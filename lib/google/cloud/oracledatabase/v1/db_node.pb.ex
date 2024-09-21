defmodule Google.Cloud.Oracledatabase.V1.DbNodeProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :STOPPING, 4
  field :STOPPED, 5
  field :STARTING, 6
  field :TERMINATING, 7
  field :TERMINATED, 8
  field :FAILED, 9
end

defmodule Google.Cloud.Oracledatabase.V1.DbNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :properties, 3, type: Google.Cloud.Oracledatabase.V1.DbNodeProperties, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbNodeProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false
  field :ocpu_count, 2, type: :int32, json_name: "ocpuCount", deprecated: false
  field :memory_size_gb, 3, type: :int32, json_name: "memorySizeGb"

  field :db_node_storage_size_gb, 4,
    type: :int32,
    json_name: "dbNodeStorageSizeGb",
    deprecated: false

  field :db_server_ocid, 5, type: :string, json_name: "dbServerOcid", deprecated: false
  field :hostname, 8, type: :string, deprecated: false

  field :state, 9,
    type: Google.Cloud.Oracledatabase.V1.DbNodeProperties.State,
    enum: true,
    deprecated: false

  field :total_cpu_core_count, 10, type: :int32, json_name: "totalCpuCoreCount"
end