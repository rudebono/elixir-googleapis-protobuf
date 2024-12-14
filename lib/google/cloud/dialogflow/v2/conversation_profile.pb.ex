defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections.SectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SECTION_TYPE_UNSPECIFIED, 0
  field :SITUATION, 1
  field :ACTION, 2
  field :RESOLUTION, 3
  field :REASON_FOR_CANCELLATION, 4
  field :CUSTOMER_SATISFACTION, 5
  field :ENTITIES, 6
end

defmodule Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MESSAGE_FORMAT_UNSPECIFIED, 0
  field :PROTO, 1
  field :JSON, 2
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionFeature.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ARTICLE_SUGGESTION, 1
  field :FAQ, 2
  field :SMART_REPLY, 3
  field :KNOWLEDGE_SEARCH, 14
  field :KNOWLEDGE_ASSIST, 15
end

defmodule Google.Cloud.Dialogflow.V2.ConversationProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
    type: Google.Cloud.Dialogflow.V2.AutomatedAgentConfig,
    json_name: "automatedAgentConfig"

  field :human_agent_assistant_config, 4,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig,
    json_name: "humanAgentAssistantConfig"

  field :human_agent_handoff_config, 5,
    type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig,
    json_name: "humanAgentHandoffConfig"

  field :notification_config, 6,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig,
    json_name: "notificationConfig"

  field :logging_config, 7,
    type: Google.Cloud.Dialogflow.V2.LoggingConfig,
    json_name: "loggingConfig"

  field :new_message_event_notification_config, 8,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig,
    json_name: "newMessageEventNotificationConfig"

  field :new_recognition_result_notification_config, 21,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig,
    json_name: "newRecognitionResultNotificationConfig",
    deprecated: false

  field :stt_config, 9,
    type: Google.Cloud.Dialogflow.V2.SpeechToTextConfig,
    json_name: "sttConfig"

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :time_zone, 14, type: :string, json_name: "timeZone"
  field :security_settings, 13, type: :string, json_name: "securitySettings", deprecated: false

  field :tts_config, 18,
    type: Google.Cloud.Dialogflow.V2.SynthesizeSpeechConfig,
    json_name: "ttsConfig"
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profiles, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation_profile, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.UpdateConversationProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profile, 1,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent, 1, type: :string, deprecated: false

  field :session_ttl, 3,
    type: Google.Protobuf.Duration,
    json_name: "sessionTtl",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :no_smalltalk, 1, type: :bool, json_name: "noSmalltalk"
  field :only_end_user, 2, type: :bool, json_name: "onlyEndUser"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :suggestion_feature, 5,
    type: Google.Cloud.Dialogflow.V2.SuggestionFeature,
    json_name: "suggestionFeature"

  field :enable_event_based_suggestion, 3, type: :bool, json_name: "enableEventBasedSuggestion"

  field :disable_agent_query_logging, 14,
    type: :bool,
    json_name: "disableAgentQueryLogging",
    deprecated: false

  field :enable_query_suggestion_when_no_answer, 15,
    type: :bool,
    json_name: "enableQuerySuggestionWhenNoAnswer",
    deprecated: false

  field :enable_conversation_augmented_query, 16,
    type: :bool,
    json_name: "enableConversationAugmentedQuery",
    deprecated: false

  field :enable_query_suggestion_only, 17,
    type: :bool,
    json_name: "enableQuerySuggestionOnly",
    deprecated: false

  field :suggestion_trigger_settings, 10,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings,
    json_name: "suggestionTriggerSettings"

  field :query_config, 6,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig,
    json_name: "queryConfig"

  field :conversation_model_config, 7,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig,
    json_name: "conversationModelConfig"

  field :conversation_process_config, 8,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationProcessConfig,
    json_name: "conversationProcessConfig"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_configs, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig,
    json_name: "featureConfigs"

  field :group_suggestion_responses, 3, type: :bool, json_name: "groupSuggestionResponses"
  field :generators, 4, repeated: true, type: :string, deprecated: false

  field :disable_high_latency_features_sync_delivery, 5,
    type: :bool,
    json_name: "disableHighLatencyFeaturesSyncDelivery",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :knowledge_bases, 1,
    repeated: true,
    type: :string,
    json_name: "knowledgeBases",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :documents, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource.HumanAgentSideConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent, 1, type: :string, deprecated: false

  field :human_agent_side_config, 3,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource.HumanAgentSideConfig,
    json_name: "humanAgentSideConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :drop_handoff_messages, 1, type: :bool, json_name: "dropHandoffMessages"
  field :drop_virtual_agent_messages, 2, type: :bool, json_name: "dropVirtualAgentMessages"
  field :drop_ivr_messages, 3, type: :bool, json_name: "dropIvrMessages"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :section_types, 1,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections.SectionType,
    json_name: "sectionTypes",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :query_source, 0

  field :knowledge_base_query_source, 1,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource,
    json_name: "knowledgeBaseQuerySource",
    oneof: 0

  field :document_query_source, 2,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource,
    json_name: "documentQuerySource",
    oneof: 0

  field :dialogflow_query_source, 3,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource,
    json_name: "dialogflowQuerySource",
    oneof: 0

  field :max_results, 4, type: :int32, json_name: "maxResults"
  field :confidence_threshold, 5, type: :float, json_name: "confidenceThreshold"

  field :context_filter_settings, 7,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings,
    json_name: "contextFilterSettings"

  field :sections, 8,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.Sections,
    deprecated: false

  field :context_size, 9, type: :int32, json_name: "contextSize", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :baseline_model_version, 8, type: :string, json_name: "baselineModelVersion"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationProcessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :recent_sentences_count, 2, type: :int32, json_name: "recentSentencesCount"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_entity_extraction, 2, type: :bool, json_name: "enableEntityExtraction"
  field :enable_sentiment_analysis, 3, type: :bool, json_name: "enableSentimentAnalysis"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notification_config, 2,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig,
    json_name: "notificationConfig"

  field :human_agent_suggestion_config, 3,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig,
    json_name: "humanAgentSuggestionConfig"

  field :end_user_suggestion_config, 4,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig,
    json_name: "endUserSuggestionConfig"

  field :message_analysis_config, 5,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig,
    json_name: "messageAnalysisConfig"
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.LivePersonConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_number, 1, type: :string, json_name: "accountNumber", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId", deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :button_id, 3, type: :string, json_name: "buttonId", deprecated: false
  field :endpoint_domain, 4, type: :string, json_name: "endpointDomain", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :agent_service, 0

  field :live_person_config, 1,
    type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.LivePersonConfig,
    json_name: "livePersonConfig",
    oneof: 0

  field :salesforce_live_agent_config, 2,
    type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig,
    json_name: "salesforceLiveAgentConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string

  field :message_format, 2,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat,
    json_name: "messageFormat",
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_stackdriver_logging, 3, type: :bool, json_name: "enableStackdriverLogging"
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionFeature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type, enum: true
end

defmodule Google.Cloud.Dialogflow.V2.SetSuggestionFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profile, 1,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_config, 3,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig,
    json_name: "suggestionFeatureConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ClearSuggestionFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profile, 1,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.SetSuggestionFeatureConfigOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profile, 1, type: :string, json_name: "conversationProfile"

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.ClearSuggestionFeatureConfigOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conversation_profile, 1, type: :string, json_name: "conversationProfile"

  field :participant_role, 2,
    type: Google.Cloud.Dialogflow.V2.Participant.Role,
    json_name: "participantRole",
    enum: true,
    deprecated: false

  field :suggestion_feature_type, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type,
    json_name: "suggestionFeatureType",
    enum: true,
    deprecated: false

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.V2.ConversationProfiles.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.ConversationProfiles",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListConversationProfiles,
      Google.Cloud.Dialogflow.V2.ListConversationProfilesRequest,
      Google.Cloud.Dialogflow.V2.ListConversationProfilesResponse

  rpc :GetConversationProfile,
      Google.Cloud.Dialogflow.V2.GetConversationProfileRequest,
      Google.Cloud.Dialogflow.V2.ConversationProfile

  rpc :CreateConversationProfile,
      Google.Cloud.Dialogflow.V2.CreateConversationProfileRequest,
      Google.Cloud.Dialogflow.V2.ConversationProfile

  rpc :UpdateConversationProfile,
      Google.Cloud.Dialogflow.V2.UpdateConversationProfileRequest,
      Google.Cloud.Dialogflow.V2.ConversationProfile

  rpc :DeleteConversationProfile,
      Google.Cloud.Dialogflow.V2.DeleteConversationProfileRequest,
      Google.Protobuf.Empty

  rpc :SetSuggestionFeatureConfig,
      Google.Cloud.Dialogflow.V2.SetSuggestionFeatureConfigRequest,
      Google.Longrunning.Operation

  rpc :ClearSuggestionFeatureConfig,
      Google.Cloud.Dialogflow.V2.ClearSuggestionFeatureConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.ConversationProfiles.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.ConversationProfiles.Service
end