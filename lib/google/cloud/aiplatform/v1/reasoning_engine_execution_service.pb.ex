defmodule Google.Cloud.Aiplatform.V1.QueryReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Protobuf.Struct, deprecated: false
  field :class_method, 3, type: :string, json_name: "classMethod", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.QueryReasoningEngineResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output, 1, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1.StreamQueryReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Protobuf.Struct, deprecated: false
  field :class_method, 3, type: :string, json_name: "classMethod", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineExecutionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.ReasoningEngineExecutionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :QueryReasoningEngine,
      Google.Cloud.Aiplatform.V1.QueryReasoningEngineRequest,
      Google.Cloud.Aiplatform.V1.QueryReasoningEngineResponse

  rpc :StreamQueryReasoningEngine,
      Google.Cloud.Aiplatform.V1.StreamQueryReasoningEngineRequest,
      stream(Google.Api.HttpBody)
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineExecutionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.ReasoningEngineExecutionService.Service
end
