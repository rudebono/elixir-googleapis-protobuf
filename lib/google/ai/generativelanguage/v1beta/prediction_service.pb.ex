defmodule Google.Ai.Generativelanguage.V1beta.PredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 3, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predictions, 1, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.PredictionService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :Predict,
      Google.Ai.Generativelanguage.V1beta.PredictRequest,
      Google.Ai.Generativelanguage.V1beta.PredictResponse
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.PredictionService.Service
end
