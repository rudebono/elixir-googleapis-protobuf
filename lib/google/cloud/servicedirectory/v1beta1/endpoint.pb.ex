defmodule Google.Cloud.Servicedirectory.V1beta1.Endpoint.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :port, 3, type: :int32, deprecated: false

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Endpoint.MetadataEntry,
    map: true,
    deprecated: false

  field :network, 5, type: :string, deprecated: false

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
