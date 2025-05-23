defmodule Google.Cloud.Aiplatform.V1.GenerateContentResponse.PromptFeedback.BlockedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BLOCKED_REASON_UNSPECIFIED, 0
  field :SAFETY, 1
  field :OTHER, 2
  field :BLOCKLIST, 3
  field :PROHIBITED_CONTENT, 4
end

defmodule Google.Cloud.Aiplatform.V1.PredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 3, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1.PredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predictions, 1, repeated: true, type: Google.Protobuf.Value
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :model, 3, type: :string, deprecated: false
  field :model_version_id, 5, type: :string, json_name: "modelVersionId", deprecated: false
  field :model_display_name, 4, type: :string, json_name: "modelDisplayName", deprecated: false
  field :metadata, 6, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.RawPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :http_body, 2, type: Google.Api.HttpBody, json_name: "httpBody"
end

defmodule Google.Cloud.Aiplatform.V1.StreamRawPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :http_body, 2, type: Google.Api.HttpBody, json_name: "httpBody"
end

defmodule Google.Cloud.Aiplatform.V1.DirectPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :inputs, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1.DirectPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :outputs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor
  field :parameters, 2, type: Google.Cloud.Aiplatform.V1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1.DirectRawPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :method_name, 2, type: :string, json_name: "methodName"
  field :input, 3, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1.DirectRawPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output, 1, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1.StreamDirectPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :inputs, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor, deprecated: false
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1.Tensor, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StreamDirectPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :outputs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor
  field :parameters, 2, type: Google.Cloud.Aiplatform.V1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1.StreamDirectRawPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :method_name, 2, type: :string, json_name: "methodName", deprecated: false
  field :input, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StreamDirectRawPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output, 1, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1.StreamingPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :inputs, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor
  field :parameters, 3, type: Google.Cloud.Aiplatform.V1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1.StreamingPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :outputs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensor
  field :parameters, 2, type: Google.Cloud.Aiplatform.V1.Tensor
end

defmodule Google.Cloud.Aiplatform.V1.StreamingRawPredictRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :method_name, 2, type: :string, json_name: "methodName"
  field :input, 3, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1.StreamingRawPredictResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :output, 1, type: :bytes
end

defmodule Google.Cloud.Aiplatform.V1.ExplainRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :parameters, 4, type: Google.Protobuf.Value

  field :explanation_spec_override, 5,
    type: Google.Cloud.Aiplatform.V1.ExplanationSpecOverride,
    json_name: "explanationSpecOverride"

  field :deployed_model_id, 3, type: :string, json_name: "deployedModelId"
end

defmodule Google.Cloud.Aiplatform.V1.ExplainResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :explanations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Explanation
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :predictions, 3, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1.CountTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :model, 3, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false
  field :contents, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false

  field :system_instruction, 5,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :tools, 6, repeated: true, type: Google.Cloud.Aiplatform.V1.Tool, deprecated: false

  field :generation_config, 7,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CountTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_tokens, 1, type: :int32, json_name: "totalTokens"
  field :total_billable_characters, 2, type: :int32, json_name: "totalBillableCharacters"

  field :prompt_tokens_details, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModalityTokenCount,
    json_name: "promptTokensDetails",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerateContentRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.GenerateContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 5, type: :string, deprecated: false
  field :contents, 2, repeated: true, type: Google.Cloud.Aiplatform.V1.Content, deprecated: false

  field :system_instruction, 8,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :cached_content, 9, type: :string, json_name: "cachedContent", deprecated: false
  field :tools, 6, repeated: true, type: Google.Cloud.Aiplatform.V1.Tool, deprecated: false

  field :tool_config, 7,
    type: Google.Cloud.Aiplatform.V1.ToolConfig,
    json_name: "toolConfig",
    deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.GenerateContentRequest.LabelsEntry,
    map: true,
    deprecated: false

  field :safety_settings, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SafetySetting,
    json_name: "safetySettings",
    deprecated: false

  field :generation_config, 4,
    type: Google.Cloud.Aiplatform.V1.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerateContentResponse.PromptFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :block_reason, 1,
    type: Google.Cloud.Aiplatform.V1.GenerateContentResponse.PromptFeedback.BlockedReason,
    json_name: "blockReason",
    enum: true,
    deprecated: false

  field :safety_ratings, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SafetyRating,
    json_name: "safetyRatings",
    deprecated: false

  field :block_reason_message, 3,
    type: :string,
    json_name: "blockReasonMessage",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenerateContentResponse.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :prompt_token_count, 1, type: :int32, json_name: "promptTokenCount"
  field :candidates_token_count, 2, type: :int32, json_name: "candidatesTokenCount"

  field :thoughts_token_count, 14,
    type: :int32,
    json_name: "thoughtsTokenCount",
    deprecated: false

  field :total_token_count, 3, type: :int32, json_name: "totalTokenCount"

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
end

defmodule Google.Cloud.Aiplatform.V1.GenerateContentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidates, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Candidate,
    deprecated: false

  field :model_version, 11, type: :string, json_name: "modelVersion", deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :response_id, 13, type: :string, json_name: "responseId", deprecated: false

  field :prompt_feedback, 3,
    type: Google.Cloud.Aiplatform.V1.GenerateContentResponse.PromptFeedback,
    json_name: "promptFeedback",
    deprecated: false

  field :usage_metadata, 4,
    type: Google.Cloud.Aiplatform.V1.GenerateContentResponse.UsageMetadata,
    json_name: "usageMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.PredictionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.PredictionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Predict,
      Google.Cloud.Aiplatform.V1.PredictRequest,
      Google.Cloud.Aiplatform.V1.PredictResponse

  rpc :RawPredict, Google.Cloud.Aiplatform.V1.RawPredictRequest, Google.Api.HttpBody

  rpc :StreamRawPredict,
      Google.Cloud.Aiplatform.V1.StreamRawPredictRequest,
      stream(Google.Api.HttpBody)

  rpc :DirectPredict,
      Google.Cloud.Aiplatform.V1.DirectPredictRequest,
      Google.Cloud.Aiplatform.V1.DirectPredictResponse

  rpc :DirectRawPredict,
      Google.Cloud.Aiplatform.V1.DirectRawPredictRequest,
      Google.Cloud.Aiplatform.V1.DirectRawPredictResponse

  rpc :StreamDirectPredict,
      stream(Google.Cloud.Aiplatform.V1.StreamDirectPredictRequest),
      stream(Google.Cloud.Aiplatform.V1.StreamDirectPredictResponse)

  rpc :StreamDirectRawPredict,
      stream(Google.Cloud.Aiplatform.V1.StreamDirectRawPredictRequest),
      stream(Google.Cloud.Aiplatform.V1.StreamDirectRawPredictResponse)

  rpc :StreamingPredict,
      stream(Google.Cloud.Aiplatform.V1.StreamingPredictRequest),
      stream(Google.Cloud.Aiplatform.V1.StreamingPredictResponse)

  rpc :ServerStreamingPredict,
      Google.Cloud.Aiplatform.V1.StreamingPredictRequest,
      stream(Google.Cloud.Aiplatform.V1.StreamingPredictResponse)

  rpc :StreamingRawPredict,
      stream(Google.Cloud.Aiplatform.V1.StreamingRawPredictRequest),
      stream(Google.Cloud.Aiplatform.V1.StreamingRawPredictResponse)

  rpc :Explain,
      Google.Cloud.Aiplatform.V1.ExplainRequest,
      Google.Cloud.Aiplatform.V1.ExplainResponse

  rpc :GenerateContent,
      Google.Cloud.Aiplatform.V1.GenerateContentRequest,
      Google.Cloud.Aiplatform.V1.GenerateContentResponse

  rpc :StreamGenerateContent,
      Google.Cloud.Aiplatform.V1.GenerateContentRequest,
      stream(Google.Cloud.Aiplatform.V1.GenerateContentResponse)
end

defmodule Google.Cloud.Aiplatform.V1.PredictionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.PredictionService.Service
end
