defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :SCALAR, 1
  field :TENSOR, 2
  field :BLOB_SEQUENCE, 3
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_step, 1, type: :int64, json_name: "maxStep", deprecated: false

  field :max_wall_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "maxWallTime",
    deprecated: false

  field :max_blob_sequence_length, 3,
    type: :int64,
    json_name: "maxBlobSequenceLength",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardTimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :value_type, 4,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 7, type: :string
  field :plugin_name, 8, type: :string, json_name: "pluginName", deprecated: false
  field :plugin_data, 9, type: :bytes, json_name: "pluginData"

  field :metadata, 10,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries.Metadata,
    deprecated: false
end
