defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.SliceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :value, 1,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.Value,
    oneof: 0

  field :range, 2,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.Range,
    oneof: 0

  field :all_values, 3, type: Google.Protobuf.BoolValue, json_name: "allValues", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.Range do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :low, 1, type: :float
  field :high, 2, type: :float
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.Value do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :kind, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :float_value, 2, type: :float, json_name: "floatValue", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.ConfigsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.SliceConfig
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :configs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec.ConfigsEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dimension, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false

  field :slice_spec, 3,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.SliceSpec,
    json_name: "sliceSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :slice, 2, type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice, deprecated: false
  field :metrics_schema_uri, 3, type: :string, json_name: "metricsSchemaUri", deprecated: false
  field :metrics, 4, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :model_explanation, 6,
    type: Google.Cloud.Aiplatform.V1.ModelExplanation,
    json_name: "modelExplanation",
    deprecated: false
end