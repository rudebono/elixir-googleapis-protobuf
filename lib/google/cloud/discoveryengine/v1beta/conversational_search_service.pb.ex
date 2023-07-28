defmodule Google.Cloud.Discoveryengine.V1beta.ConverseConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1beta.TextInput, deprecated: false
  field :serving_config, 3, type: :string, json_name: "servingConfig", deprecated: false
  field :conversation, 5, type: Google.Cloud.Discoveryengine.V1beta.Conversation
  field :safe_search, 6, type: :bool, json_name: "safeSearch"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ConverseConversationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply, 1, type: Google.Cloud.Discoveryengine.V1beta.Reply
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1beta.Conversation

  field :search_results, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SearchResponse.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation, 2,
    type: Google.Cloud.Discoveryengine.V1beta.Conversation,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation, 1,
    type: Google.Cloud.Discoveryengine.V1beta.Conversation,
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ConversationalSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.ConversationalSearchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ConverseConversation,
      Google.Cloud.Discoveryengine.V1beta.ConverseConversationRequest,
      Google.Cloud.Discoveryengine.V1beta.ConverseConversationResponse

  rpc :CreateConversation,
      Google.Cloud.Discoveryengine.V1beta.CreateConversationRequest,
      Google.Cloud.Discoveryengine.V1beta.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Discoveryengine.V1beta.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :UpdateConversation,
      Google.Cloud.Discoveryengine.V1beta.UpdateConversationRequest,
      Google.Cloud.Discoveryengine.V1beta.Conversation

  rpc :GetConversation,
      Google.Cloud.Discoveryengine.V1beta.GetConversationRequest,
      Google.Cloud.Discoveryengine.V1beta.Conversation

  rpc :ListConversations,
      Google.Cloud.Discoveryengine.V1beta.ListConversationsRequest,
      Google.Cloud.Discoveryengine.V1beta.ListConversationsResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.ConversationalSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.ConversationalSearchService.Service
end