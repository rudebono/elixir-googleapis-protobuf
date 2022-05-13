defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluation.ModelEvaluationExplanationSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanation_type: String.t(),
          explanation_spec: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec.t() | nil
        }

  defstruct explanation_type: "",
            explanation_spec: nil

  field :explanation_type, 1, type: :string, json_name: "explanationType"

  field :explanation_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"
end
defmodule Google.Cloud.Aiplatform.V1beta1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          metrics_schema_uri: String.t(),
          metrics: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          slice_dimensions: [String.t()],
          model_explanation: Google.Cloud.Aiplatform.V1beta1.ModelExplanation.t() | nil,
          explanation_specs: [
            Google.Cloud.Aiplatform.V1beta1.ModelEvaluation.ModelEvaluationExplanationSpec.t()
          ],
          metadata: Google.Protobuf.Value.t() | nil
        }

  defstruct name: "",
            display_name: "",
            metrics_schema_uri: "",
            metrics: nil,
            create_time: nil,
            slice_dimensions: [],
            model_explanation: nil,
            explanation_specs: [],
            metadata: nil

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
