defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluation.ModelEvaluationExplanationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :explanation_type, 1, type: :string, json_name: "explanationType"

  field :explanation_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 10, type: :string, json_name: "displayName"
  field :metrics_schema_uri, 2, type: :string, json_name: "metricsSchemaUri"
  field :metrics, 3, type: Google.Protobuf.Value

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :slice_dimensions, 5, repeated: true, type: :string, json_name: "sliceDimensions"

  field :model_explanation, 8,
    type: Google.Cloud.Aiplatform.V1beta1.ModelExplanation,
    json_name: "modelExplanation"

  field :explanation_specs, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluation.ModelEvaluationExplanationSpec,
    json_name: "explanationSpecs"

  field :metadata, 11, type: Google.Protobuf.Value
end