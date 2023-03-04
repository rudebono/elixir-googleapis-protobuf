defmodule Google.Cloud.Dialogflow.V2beta1.NotificationConfig.MessageFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MESSAGE_FORMAT_UNSPECIFIED, 0
  field :PROTO, 1
  field :JSON, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :automated_agent_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentConfig,
    json_name: "automatedAgentConfig"

  field :human_agent_assistant_config, 4,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig,
    json_name: "humanAgentAssistantConfig"

  field :human_agent_handoff_config, 5,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig,
    json_name: "humanAgentHandoffConfig"

  field :notification_config, 6,
    type: Google.Cloud.Dialogflow.V2beta1.NotificationConfig,
    json_name: "notificationConfig"

  field :logging_config, 7,
    type: Google.Cloud.Dialogflow.V2beta1.LoggingConfig,
    json_name: "loggingConfig"

  field :new_message_event_notification_config, 8,
    type: Google.Cloud.Dialogflow.V2beta1.NotificationConfig,
    json_name: "newMessageEventNotificationConfig"

  field :stt_config, 9,
    type: Google.Cloud.Dialogflow.V2beta1.SpeechToTextConfig,
    json_name: "sttConfig"

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :time_zone, 14, type: :string, json_name: "timeZone"
  field :security_settings, 13, type: :string, json_name: "securitySettings", deprecated: false

  field :tts_config, 18,
    type: Google.Cloud.Dialogflow.V2beta1.SynthesizeSpeechConfig,
    json_name: "ttsConfig"
end

defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :agent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionTriggerSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :no_small_talk, 1, type: :bool, json_name: "noSmallTalk"
  field :only_end_user, 2, type: :bool, json_name: "onlyEndUser"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionFeatureConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :suggestion_feature, 5,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature,
    json_name: "suggestionFeature"

  field :enable_event_based_suggestion, 3, type: :bool, json_name: "enableEventBasedSuggestion"

  field :suggestion_trigger_settings, 10,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionTriggerSettings,
    json_name: "suggestionTriggerSettings"

  field :query_config, 6,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig,
    json_name: "queryConfig"

  field :conversation_model_config, 7,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.ConversationModelConfig,
    json_name: "conversationModelConfig"

  field :conversation_process_config, 8,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.ConversationProcessConfig,
    json_name: "conversationProcessConfig"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :feature_configs, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionFeatureConfig,
    json_name: "featureConfigs"

  field :group_suggestion_responses, 3, type: :bool, json_name: "groupSuggestionResponses"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :knowledge_bases, 1,
    repeated: true,
    type: :string,
    json_name: "knowledgeBases",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :agent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :drop_handoff_messages, 1, type: :bool, json_name: "dropHandoffMessages"
  field :drop_virtual_agent_messages, 2, type: :bool, json_name: "dropVirtualAgentMessages"
  field :drop_ivr_messages, 3, type: :bool, json_name: "dropIvrMessages"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query_source, 0

  field :knowledge_base_query_source, 1,
    type:
      Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource,
    json_name: "knowledgeBaseQuerySource",
    oneof: 0

  field :document_query_source, 2,
    type:
      Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource,
    json_name: "documentQuerySource",
    oneof: 0

  field :dialogflow_query_source, 3,
    type:
      Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource,
    json_name: "dialogflowQuerySource",
    oneof: 0

  field :max_results, 4, type: :int32, json_name: "maxResults"
  field :confidence_threshold, 5, type: :float, json_name: "confidenceThreshold"

  field :context_filter_settings, 7,
    type:
      Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings,
    json_name: "contextFilterSettings"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.ConversationModelConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.ConversationProcessConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recent_sentences_count, 2, type: :int32, json_name: "recentSentencesCount"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.MessageAnalysisConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_entity_extraction, 2, type: :bool, json_name: "enableEntityExtraction"
  field :enable_sentiment_analysis, 3, type: :bool, json_name: "enableSentimentAnalysis"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notification_config, 2,
    type: Google.Cloud.Dialogflow.V2beta1.NotificationConfig,
    json_name: "notificationConfig"

  field :human_agent_suggestion_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionConfig,
    json_name: "humanAgentSuggestionConfig"

  field :end_user_suggestion_config, 4,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionConfig,
    json_name: "endUserSuggestionConfig"

  field :message_analysis_config, 5,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.MessageAnalysisConfig,
    json_name: "messageAnalysisConfig"
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig.LivePersonConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account_number, 1, type: :string, json_name: "accountNumber", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig.SalesforceLiveAgentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId", deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :button_id, 3, type: :string, json_name: "buttonId", deprecated: false
  field :endpoint_domain, 4, type: :string, json_name: "endpointDomain", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :agent_service, 0

  field :live_person_config, 1,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig.LivePersonConfig,
    json_name: "livePersonConfig",
    oneof: 0

  field :salesforce_live_agent_config, 2,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentHandoffConfig.SalesforceLiveAgentConfig,
    json_name: "salesforceLiveAgentConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.NotificationConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic, 1, type: :string

  field :message_format, 2,
    type: Google.Cloud.Dialogflow.V2beta1.NotificationConfig.MessageFormat,
    json_name: "messageFormat",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.LoggingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_stackdriver_logging, 3, type: :bool, json_name: "enableStackdriverLogging"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationProfilesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListConversationProfilesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profiles, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationProfile,
    json_name: "conversationProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetConversationProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateConversationProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation_profile, 2,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateConversationProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profile, 1,
    type: Google.Cloud.Dialogflow.V2beta1.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteConversationProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SetSuggestionFeatureConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profile, 1,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.HumanAgentAssistantConfig.SuggestionFeatureConfig,
    json_name: "suggestionFeatureConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ClearSuggestionFeatureConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profile, 1,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SetSuggestionFeatureConfigOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profile, 1, type: :string, json_name: "conversationProfile"

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ClearSuggestionFeatureConfigOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversation_profile, 1, type: :string, json_name: "conversationProfile"

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationProfiles.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.ConversationProfiles",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListConversationProfiles,
      Google.Cloud.Dialogflow.V2beta1.ListConversationProfilesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListConversationProfilesResponse

  rpc :GetConversationProfile,
      Google.Cloud.Dialogflow.V2beta1.GetConversationProfileRequest,
      Google.Cloud.Dialogflow.V2beta1.ConversationProfile

  rpc :CreateConversationProfile,
      Google.Cloud.Dialogflow.V2beta1.CreateConversationProfileRequest,
      Google.Cloud.Dialogflow.V2beta1.ConversationProfile

  rpc :UpdateConversationProfile,
      Google.Cloud.Dialogflow.V2beta1.UpdateConversationProfileRequest,
      Google.Cloud.Dialogflow.V2beta1.ConversationProfile

  rpc :DeleteConversationProfile,
      Google.Cloud.Dialogflow.V2beta1.DeleteConversationProfileRequest,
      Google.Protobuf.Empty

  rpc :SetSuggestionFeatureConfig,
      Google.Cloud.Dialogflow.V2beta1.SetSuggestionFeatureConfigRequest,
      Google.Longrunning.Operation

  rpc :ClearSuggestionFeatureConfig,
      Google.Cloud.Dialogflow.V2beta1.ClearSuggestionFeatureConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2beta1.ConversationProfiles.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.ConversationProfiles.Service
end