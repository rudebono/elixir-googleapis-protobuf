defmodule Google.Cloud.Aiplatform.V1.LineageSubgraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :artifacts, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Artifact
  field :executions, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Execution
  field :events, 3, repeated: true, type: Google.Cloud.Aiplatform.V1.Event
end
