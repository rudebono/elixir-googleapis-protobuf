defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice.Slice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dimension, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :slice, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice.Slice,
    deprecated: false

  field :metrics_schema_uri, 3, type: :string, json_name: "metricsSchemaUri", deprecated: false
  field :metrics, 4, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
