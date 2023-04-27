defmodule Google.Cloud.Aiplatform.V1beta1.LineageSubgraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Artifact
  field :executions, 2, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Execution
  field :events, 3, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Event
end