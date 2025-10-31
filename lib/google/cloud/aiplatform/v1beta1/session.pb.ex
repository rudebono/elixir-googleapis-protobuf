defmodule Google.Cloud.Aiplatform.V1beta1.Session do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :ttl, 14, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :session_state, 10,
    type: Google.Protobuf.Struct,
    json_name: "sessionState",
    deprecated: false

  field :user_id, 12, type: :string, json_name: "userId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SessionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :author, 3, type: :string, deprecated: false
  field :content, 4, type: Google.Cloud.Aiplatform.V1beta1.Content, deprecated: false
  field :invocation_id, 5, type: :string, json_name: "invocationId", deprecated: false
  field :actions, 6, type: Google.Cloud.Aiplatform.V1beta1.EventActions, deprecated: false
  field :timestamp, 8, type: Google.Protobuf.Timestamp, deprecated: false
  field :error_code, 9, type: :string, json_name: "errorCode", deprecated: false
  field :error_message, 10, type: :string, json_name: "errorMessage", deprecated: false

  field :event_metadata, 11,
    type: Google.Cloud.Aiplatform.V1beta1.EventMetadata,
    json_name: "eventMetadata",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EventMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :grounding_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GroundingMetadata,
    json_name: "groundingMetadata",
    deprecated: false

  field :partial, 2, type: :bool, deprecated: false
  field :turn_complete, 3, type: :bool, json_name: "turnComplete", deprecated: false
  field :interrupted, 4, type: :bool, deprecated: false

  field :long_running_tool_ids, 5,
    repeated: true,
    type: :string,
    json_name: "longRunningToolIds",
    deprecated: false

  field :branch, 6, type: :string, deprecated: false
  field :custom_metadata, 7, type: Google.Protobuf.Struct, json_name: "customMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.EventActions.ArtifactDeltaEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.EventActions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :skip_summarization, 1, type: :bool, json_name: "skipSummarization", deprecated: false
  field :state_delta, 2, type: Google.Protobuf.Struct, json_name: "stateDelta", deprecated: false

  field :artifact_delta, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.EventActions.ArtifactDeltaEntry,
    json_name: "artifactDelta",
    map: true,
    deprecated: false

  field :escalate, 6, type: :bool, deprecated: false

  field :requested_auth_configs, 7,
    type: Google.Protobuf.Struct,
    json_name: "requestedAuthConfigs",
    deprecated: false

  field :transfer_agent, 8, type: :string, json_name: "transferAgent", deprecated: false
end
