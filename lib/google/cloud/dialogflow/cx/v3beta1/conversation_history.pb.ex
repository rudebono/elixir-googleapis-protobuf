defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :AUDIO, 1
  field :TEXT, 2
  field :UNDETERMINED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversations, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics.QueryInputCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_count, 1, type: :int32, json_name: "textCount"
  field :intent_count, 2, type: :int32, json_name: "intentCount"
  field :audio_count, 3, type: :int32, json_name: "audioCount"
  field :event_count, 4, type: :int32, json_name: "eventCount"
  field :dtmf_count, 5, type: :int32, json_name: "dtmfCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics.MatchTypeCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :unspecified_count, 1, type: :int32, json_name: "unspecifiedCount"
  field :intent_count, 2, type: :int32, json_name: "intentCount"
  field :direct_intent_count, 3, type: :int32, json_name: "directIntentCount"
  field :parameter_filling_count, 4, type: :int32, json_name: "parameterFillingCount"
  field :no_match_count, 5, type: :int32, json_name: "noMatchCount"
  field :no_input_count, 6, type: :int32, json_name: "noInputCount"
  field :event_count, 7, type: :int32, json_name: "eventCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :interaction_count, 1, type: :int32, json_name: "interactionCount"
  field :input_audio_duration, 2, type: Google.Protobuf.Duration, json_name: "inputAudioDuration"

  field :output_audio_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "outputAudioDuration"

  field :max_webhook_latency, 4, type: Google.Protobuf.Duration, json_name: "maxWebhookLatency"
  field :has_end_interaction, 5, type: :bool, json_name: "hasEndInteraction"
  field :has_live_agent_handoff, 6, type: :bool, json_name: "hasLiveAgentHandoff"
  field :average_match_confidence, 7, type: :float, json_name: "averageMatchConfidence"

  field :query_input_count, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics.QueryInputCount,
    json_name: "queryInputCount"

  field :match_type_count, 9,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics.MatchTypeCount,
    json_name: "matchTypeCount"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Interaction.MissingTransition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :intent_display_name, 1, type: :string, json_name: "intentDisplayName"
  field :score, 2, type: :float
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Interaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :request, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentRequest
  field :response, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse

  field :partial_responses, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DetectIntentResponse,
    json_name: "partialResponses"

  field :request_utterances, 4, type: :string, json_name: "requestUtterances"
  field :response_utterances, 5, type: :string, json_name: "responseUtterances"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :missing_transition, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Interaction.MissingTransition,
    json_name: "missingTransition"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.FlowVersionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Type, enum: true
  field :language_code, 3, type: :string, json_name: "languageCode"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :duration, 5, type: Google.Protobuf.Duration
  field :metrics, 6, type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Metrics
  field :intents, 7, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Intent
  field :flows, 8, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Flow
  field :pages, 9, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Page

  field :interactions, 10,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.Interaction

  field :environment, 11, type: Google.Cloud.Dialogflow.Cx.V3beta1.Environment

  field :flow_versions, 12,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Conversation.FlowVersionsEntry,
    json_name: "flowVersions",
    map: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationHistory.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.ConversationHistory",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListConversations,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListConversationsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListConversationsResponse

  rpc :GetConversation,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetConversationRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteConversationRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ConversationHistory.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.ConversationHistory.Service
end