defmodule Google.Cloud.Aiplatform.V1beta1.ComputeTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TokensInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tokens, 1, repeated: true, type: :bytes
  field :token_ids, 2, repeated: true, type: :int64, json_name: "tokenIds"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ComputeTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tokens_info, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TokensInfo,
    json_name: "tokensInfo"
end

defmodule Google.Cloud.Aiplatform.V1beta1.LlmUtilityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.LlmUtilityService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ComputeTokens,
      Google.Cloud.Aiplatform.V1beta1.ComputeTokensRequest,
      Google.Cloud.Aiplatform.V1beta1.ComputeTokensResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.LlmUtilityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.LlmUtilityService.Service
end