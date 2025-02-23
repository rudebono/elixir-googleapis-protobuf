defmodule Google.Cloud.Aiplatform.V1beta1.CachedContent.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_token_count, 1, type: :int32, json_name: "totalTokenCount"
  field :text_count, 2, type: :int32, json_name: "textCount"
  field :image_count, 3, type: :int32, json_name: "imageCount"
  field :video_duration_seconds, 4, type: :int32, json_name: "videoDurationSeconds"
  field :audio_duration_seconds, 5, type: :int32, json_name: "audioDurationSeconds"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CachedContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 9, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 10, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :display_name, 11, type: :string, json_name: "displayName", deprecated: false
  field :model, 2, type: :string, deprecated: false

  field :system_instruction, 3,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :contents, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    deprecated: false

  field :tools, 5, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Tool, deprecated: false

  field :tool_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.ToolConfig,
    json_name: "toolConfig",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :usage_metadata, 12,
    type: Google.Cloud.Aiplatform.V1beta1.CachedContent.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false
end
