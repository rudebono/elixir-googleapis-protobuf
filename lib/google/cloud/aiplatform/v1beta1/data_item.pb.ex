defmodule Google.Cloud.Aiplatform.V1beta1.DataItem.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.DataItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataItem.LabelsEntry,
    map: true,
    deprecated: false

  field :payload, 4, type: Google.Protobuf.Value, deprecated: false
  field :etag, 7, type: :string, deprecated: false
end
