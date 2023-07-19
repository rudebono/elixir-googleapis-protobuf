defmodule Google.Cloud.Visionai.V1.PredictionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1.PredictionService",
    protoc_gen_elixir_version: "0.12.0"
end

defmodule Google.Cloud.Visionai.V1.PredictionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1.PredictionService.Service
end