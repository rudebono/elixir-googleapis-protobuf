defmodule Google.Cloud.Aiplatform.V1beta1.QueryReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryReasoningEngineResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output, 1, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineExecutionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ReasoningEngineExecutionService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :QueryReasoningEngine,
      Google.Cloud.Aiplatform.V1beta1.QueryReasoningEngineRequest,
      Google.Cloud.Aiplatform.V1beta1.QueryReasoningEngineResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineExecutionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineExecutionService.Service
end