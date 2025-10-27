defmodule Google.Cloud.Geminidataanalytics.V1alpha.Conversation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :agents, 2, repeated: true, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_used_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUsedTime",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Conversation.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :conversation_id, 2, type: :string, json_name: "conversationId", deprecated: false

  field :conversation, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Conversation,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversations, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Conversation

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
