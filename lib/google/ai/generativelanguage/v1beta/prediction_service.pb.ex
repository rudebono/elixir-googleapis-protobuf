defmodule Google.Ai.Generativelanguage.V1beta.PredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 3, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictLongRunningRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 3, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predictions, 1, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictLongRunningResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :response, 0

  field :generate_video_response, 1,
    type: Google.Ai.Generativelanguage.V1beta.GenerateVideoResponse,
    json_name: "generateVideoResponse",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictLongRunningMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.Media do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :video, 1, type: Google.Ai.Generativelanguage.V1beta.Video, oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.Video do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :video, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateVideoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generated_samples, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Media,
    json_name: "generatedSamples"

  field :rai_media_filtered_count, 2, type: :int32, json_name: "raiMediaFilteredCount"

  field :rai_media_filtered_reasons, 3,
    repeated: true,
    type: :string,
    json_name: "raiMediaFilteredReasons"
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.PredictionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Predict,
      Google.Ai.Generativelanguage.V1beta.PredictRequest,
      Google.Ai.Generativelanguage.V1beta.PredictResponse

  rpc :PredictLongRunning,
      Google.Ai.Generativelanguage.V1beta.PredictLongRunningRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ai.Generativelanguage.V1beta.PredictionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.PredictionService.Service
end
