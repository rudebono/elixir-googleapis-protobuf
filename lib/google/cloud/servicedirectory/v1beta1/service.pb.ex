defmodule Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry,
    map: true,
    deprecated: false

  field :endpoints, 3,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Endpoint,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :uid, 8, type: :string, deprecated: false
end
