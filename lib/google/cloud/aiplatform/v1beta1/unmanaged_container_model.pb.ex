defmodule Google.Cloud.Aiplatform.V1beta1.UnmanagedContainerModel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :artifact_uri, 1, type: :string, json_name: "artifactUri"

  field :predict_schemata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PredictSchemata,
    json_name: "predictSchemata"

  field :container_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false
end
