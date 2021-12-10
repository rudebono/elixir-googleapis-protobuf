defmodule Google.Cloud.Aiplatform.V1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metrics_schema_uri: String.t(),
          metrics: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          slice_dimensions: [String.t()],
          model_explanation: Google.Cloud.Aiplatform.V1.ModelExplanation.t() | nil
        }

  defstruct name: "",
            metrics_schema_uri: "",
            metrics: nil,
            create_time: nil,
            slice_dimensions: [],
            model_explanation: nil

  field :name, 1, type: :string, deprecated: false
  field :metrics_schema_uri, 2, type: :string, json_name: "metricsSchemaUri", deprecated: false
  field :metrics, 3, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :slice_dimensions, 5,
    repeated: true,
    type: :string,
    json_name: "sliceDimensions",
    deprecated: false

  field :model_explanation, 8,
    type: Google.Cloud.Aiplatform.V1.ModelExplanation,
    json_name: "modelExplanation",
    deprecated: false
end
