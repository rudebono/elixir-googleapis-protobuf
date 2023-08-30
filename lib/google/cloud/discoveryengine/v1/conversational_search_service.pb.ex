defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationRequest.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: Google.Cloud.Discoveryengine.V1.TextInput, deprecated: false
  field :serving_config, 3, type: :string, json_name: "servingConfig", deprecated: false
  field :conversation, 5, type: Google.Cloud.Discoveryengine.V1.Conversation
  field :safe_search, 6, type: :bool, json_name: "safeSearch"

  field :user_labels, 7,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.ConverseConversationRequest.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :summary_spec, 8,
    type: Google.Cloud.Discoveryengine.V1.SearchRequest.ContentSearchSpec.SummarySpec,
    json_name: "summarySpec"
end

defmodule Google.Cloud.Discoveryengine.V1.ConverseConversationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply, 1, type: Google.Cloud.Discoveryengine.V1.Reply
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1.Conversation

  field :search_results, 3,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchResponse.SearchResult,
    json_name: "searchResults"
end

defmodule Google.Cloud.Discoveryengine.V1.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :conversation, 2, type: Google.Cloud.Discoveryengine.V1.Conversation, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation, 1, type: Google.Cloud.Discoveryengine.V1.Conversation, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Discoveryengine.V1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.ConversationalSearchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ConverseConversation,
      Google.Cloud.Discoveryengine.V1.ConverseConversationRequest,
      Google.Cloud.Discoveryengine.V1.ConverseConversationResponse

  rpc :CreateConversation,
      Google.Cloud.Discoveryengine.V1.CreateConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Discoveryengine.V1.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :UpdateConversation,
      Google.Cloud.Discoveryengine.V1.UpdateConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :GetConversation,
      Google.Cloud.Discoveryengine.V1.GetConversationRequest,
      Google.Cloud.Discoveryengine.V1.Conversation

  rpc :ListConversations,
      Google.Cloud.Discoveryengine.V1.ListConversationsRequest,
      Google.Cloud.Discoveryengine.V1.ListConversationsResponse
end

defmodule Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.ConversationalSearchService.Service
end