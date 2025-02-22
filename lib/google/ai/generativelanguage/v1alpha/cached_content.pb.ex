defmodule Google.Ai.Generativelanguage.V1alpha.CachedContent.UsageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :total_token_count, 1, type: :int32, json_name: "totalTokenCount"
end

defmodule Google.Ai.Generativelanguage.V1alpha.CachedContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 9, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 10, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :display_name, 11,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :model, 2, proto3_optional: true, type: :string, deprecated: false

  field :system_instruction, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    json_name: "systemInstruction",
    deprecated: false

  field :contents, 4,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Content,
    deprecated: false

  field :tools, 5,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Tool,
    deprecated: false

  field :tool_config, 6,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.ToolConfig,
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
    type: Google.Ai.Generativelanguage.V1alpha.CachedContent.UsageMetadata,
    json_name: "usageMetadata",
    deprecated: false
end
