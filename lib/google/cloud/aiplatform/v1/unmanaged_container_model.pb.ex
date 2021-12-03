defmodule Google.Cloud.Aiplatform.V1.UnmanagedContainerModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_uri: String.t(),
          predict_schemata: Google.Cloud.Aiplatform.V1.PredictSchemata.t() | nil,
          container_spec: Google.Cloud.Aiplatform.V1.ModelContainerSpec.t() | nil
        }

  defstruct [:artifact_uri, :predict_schemata, :container_spec]

  field :artifact_uri, 1, type: :string, json_name: "artifactUri"

  field :predict_schemata, 2,
    type: Google.Cloud.Aiplatform.V1.PredictSchemata,
    json_name: "predictSchemata"

  field :container_spec, 3,
    type: Google.Cloud.Aiplatform.V1.ModelContainerSpec,
    json_name: "containerSpec"

  def transform_module(), do: nil
end
