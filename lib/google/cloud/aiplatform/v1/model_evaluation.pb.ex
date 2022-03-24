defmodule Google.Cloud.Aiplatform.V1.ModelEvaluation.ModelEvaluationExplanationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanation_type: String.t(),
          explanation_spec: Google.Cloud.Aiplatform.V1.ExplanationSpec.t() | nil
        }

  defstruct explanation_type: "",
            explanation_spec: nil

  field :explanation_type, 1, type: :string, json_name: "explanationType"

  field :explanation_spec, 2,
    type: Google.Cloud.Aiplatform.V1.ExplanationSpec,
    json_name: "explanationSpec"
end
defmodule Google.Cloud.Aiplatform.V1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metrics_schema_uri: String.t(),
          metrics: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          slice_dimensions: [String.t()],
          data_item_schema_uri: String.t(),
          annotation_schema_uri: String.t(),
          model_explanation: Google.Cloud.Aiplatform.V1.ModelExplanation.t() | nil,
          explanation_specs: [
            Google.Cloud.Aiplatform.V1.ModelEvaluation.ModelEvaluationExplanationSpec.t()
          ]
        }

  defstruct name: "",
            metrics_schema_uri: "",
            metrics: nil,
            create_time: nil,
            slice_dimensions: [],
            data_item_schema_uri: "",
            annotation_schema_uri: "",
            model_explanation: nil,
            explanation_specs: []

  field :name, 1, type: :string, deprecated: false
  field :metrics_schema_uri, 2, type: :string, json_name: "metricsSchemaUri"
  field :metrics, 3, type: Google.Protobuf.Value

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :slice_dimensions, 5, repeated: true, type: :string, json_name: "sliceDimensions"
  field :data_item_schema_uri, 6, type: :string, json_name: "dataItemSchemaUri"
  field :annotation_schema_uri, 7, type: :string, json_name: "annotationSchemaUri"

  field :model_explanation, 8,
    type: Google.Cloud.Aiplatform.V1.ModelExplanation,
    json_name: "modelExplanation"

  field :explanation_specs, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelEvaluation.ModelEvaluationExplanationSpec,
    json_name: "explanationSpecs"
end
