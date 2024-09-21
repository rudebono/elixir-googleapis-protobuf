defmodule Google.Cloud.Aiplatform.V1beta1.TimeSeriesData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tensorboard_time_series_id, 1,
    type: :string,
    json_name: "tensorboardTimeSeriesId",
    deprecated: false

  field :value_type, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :values, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :value, 0

  field :scalar, 3, type: Google.Cloud.Aiplatform.V1beta1.Scalar, oneof: 0
  field :tensor, 4, type: Google.Cloud.Aiplatform.V1beta1.TensorboardTensor, oneof: 0
  field :blobs, 5, type: Google.Cloud.Aiplatform.V1beta1.TensorboardBlobSequence, oneof: 0
  field :wall_time, 1, type: Google.Protobuf.Timestamp, json_name: "wallTime"
  field :step, 2, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.Scalar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardTensor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :bytes, deprecated: false
  field :version_number, 2, type: :int32, json_name: "versionNumber", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardBlobSequence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.TensorboardBlob
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardBlob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end