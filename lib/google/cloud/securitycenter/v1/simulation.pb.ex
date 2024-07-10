defmodule Google.Cloud.Securitycenter.V1.Simulation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :resource_value_configs_metadata, 3,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.ResourceValueConfigMetadata,
    json_name: "resourceValueConfigsMetadata"

  field :cloud_provider, 4,
    type: Google.Cloud.Securitycenter.V1.CloudProvider,
    json_name: "cloudProvider",
    enum: true
end