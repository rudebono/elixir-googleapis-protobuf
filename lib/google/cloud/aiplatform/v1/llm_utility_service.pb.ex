defmodule Google.Cloud.Aiplatform.V1.ComputeTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :model, 3, type: :string, deprecated: false
  field :contents, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.TokensInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tokens, 1, repeated: true, type: :bytes
  field :token_ids, 2, repeated: true, type: :int64, json_name: "tokenIds"
  field :role, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ComputeTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tokens_info, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TokensInfo,
    json_name: "tokensInfo"
end

defmodule Google.Cloud.Aiplatform.V1.LlmUtilityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.LlmUtilityService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CountTokens,
      Google.Cloud.Aiplatform.V1.CountTokensRequest,
      Google.Cloud.Aiplatform.V1.CountTokensResponse

  rpc :ComputeTokens,
      Google.Cloud.Aiplatform.V1.ComputeTokensRequest,
      Google.Cloud.Aiplatform.V1.ComputeTokensResponse
end

defmodule Google.Cloud.Aiplatform.V1.LlmUtilityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.LlmUtilityService.Service
end
