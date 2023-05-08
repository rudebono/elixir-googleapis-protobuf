defmodule Google.Cloud.Dialogflow.V2beta1.Conversation.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :COMPLETED, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Conversation.ConversationStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONVERSATION_STAGE_UNSPECIFIED, 0
  field :VIRTUAL_AGENT_STAGE, 1
  field :HUMAN_ASSIST_STAGE, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :lifecycle_state, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Conversation.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :conversation_profile, 3,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :phone_number, 4,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationPhoneNumber,
    json_name: "phoneNumber",
    deprecated: false

  field :conversation_stage, 7,
    type: Google.Cloud.Dialogflow.V2beta1.Conversation.ConversationStage,
    json_name: "conversationStage",
    enum: true

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationPhoneNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phone_number, 3, type: :string, json_name: "phoneNumber", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :conversation, 2, type: Google.Cloud.Dialogflow.V2beta1.Conversation, deprecated: false
  field :conversation_id, 3, type: :string, json_name: "conversationId", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CompleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :message, 2, type: Google.Cloud.Dialogflow.V2beta1.Message, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.CreateMessageRequest,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Message
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Message
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false
  field :latest_message, 3, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 4, type: :int32, json_name: "contextSize"

  field :assist_query_params, 5,
    type: Google.Cloud.Dialogflow.V2beta1.AssistQueryParameters,
    json_name: "assistQueryParams"
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse.Summary.TextSectionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string

  field :text_sections, 4,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse.Summary.TextSectionsEntry,
    json_name: "textSections",
    map: true

  field :answer_record, 3, type: :string, json_name: "answerRecord", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse.Summary

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryRequest.MinimalConversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :messages, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Message,
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stateless_conversation, 1,
    type: Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryRequest.MinimalConversation,
    json_name: "statelessConversation",
    deprecated: false

  field :conversation_profile, 2,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false

  field :latest_message, 3, type: :string, json_name: "latestMessage", deprecated: false
  field :max_context_size, 4, type: :int32, json_name: "maxContextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse.Summary.TextSectionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string

  field :text_sections, 2,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse.Summary.TextSectionsEntry,
    json_name: "textSections",
    map: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :summary, 1,
    type: Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse.Summary

  field :latest_message, 2, type: :string, json_name: "latestMessage", deprecated: false
  field :context_size, 3, type: :int32, json_name: "contextSize"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Conversations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Conversations",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateConversation,
      Google.Cloud.Dialogflow.V2beta1.CreateConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :ListConversations,
      Google.Cloud.Dialogflow.V2beta1.ListConversationsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListConversationsResponse

  rpc :GetConversation,
      Google.Cloud.Dialogflow.V2beta1.GetConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :CompleteConversation,
      Google.Cloud.Dialogflow.V2beta1.CompleteConversationRequest,
      Google.Cloud.Dialogflow.V2beta1.Conversation

  rpc :BatchCreateMessages,
      Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesRequest,
      Google.Cloud.Dialogflow.V2beta1.BatchCreateMessagesResponse

  rpc :ListMessages,
      Google.Cloud.Dialogflow.V2beta1.ListMessagesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListMessagesResponse

  rpc :SuggestConversationSummary,
      Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestConversationSummaryResponse

  rpc :GenerateStatelessSummary,
      Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryRequest,
      Google.Cloud.Dialogflow.V2beta1.GenerateStatelessSummaryResponse
end

defmodule Google.Cloud.Dialogflow.V2beta1.Conversations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Conversations.Service
end