defmodule Google.Cloud.Aiplatform.V1.UsageMetadata.TrafficType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRAFFIC_TYPE_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :PROVISIONED_THROUGHPUT, 2
end

defmodule Google.Cloud.Aiplatform.V1.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :candidates_token_count, 2, type: :int32, json_name: "candidatesTokenCount"
  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount"

  field :tool_use_prompt_token_count, 13,
    type: :int32,
    json_name: "toolUsePromptTokenCount",
    deprecated: false

  field :thoughts_token_count, 14,
    type: :int32,
    json_name: "thoughtsTokenCount",
    deprecated: false

  field :cached_content_token_count, 5,
    type: :int32,
    json_name: "cachedContentTokenCount",
    deprecated: false

  field :prompt_tokens_details, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false

  field :cache_tokens_details, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModalityTokenCount,
    json_name: "cacheTokensDetails",
    deprecated: false

  field :candidates_tokens_details, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModalityTokenCount,
    json_name: "candidatesTokensDetails",
    deprecated: false

  field :tool_use_prompt_tokens_details, 12,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModalityTokenCount,
    json_name: "toolUsePromptTokensDetails",
    deprecated: false

  field :traffic_type, 8,
    type: Google.Cloud.Aiplatform.V1.UsageMetadata.TrafficType,
    json_name: "trafficType",
    enum: true,
    deprecated: false
end
