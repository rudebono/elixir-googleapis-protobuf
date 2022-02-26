defmodule Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MESSAGE_FORMAT_UNSPECIFIED | :PROTO | :JSON

  field :MESSAGE_FORMAT_UNSPECIFIED, 0
  field :PROTO, 1
  field :JSON, 2
end
defmodule Google.Cloud.Dialogflow.V2.SuggestionFeature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :ARTICLE_SUGGESTION | :FAQ | :SMART_REPLY

  field :TYPE_UNSPECIFIED, 0
  field :ARTICLE_SUGGESTION, 1
  field :FAQ, 2
  field :SMART_REPLY, 3
end
defmodule Google.Cloud.Dialogflow.V2.ConversationProfile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          automated_agent_config: Google.Cloud.Dialogflow.V2.AutomatedAgentConfig.t() | nil,
          human_agent_assistant_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.t() | nil,
          human_agent_handoff_config:
            Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.t() | nil,
          notification_config: Google.Cloud.Dialogflow.V2.NotificationConfig.t() | nil,
          logging_config: Google.Cloud.Dialogflow.V2.LoggingConfig.t() | nil,
          new_message_event_notification_config:
            Google.Cloud.Dialogflow.V2.NotificationConfig.t() | nil,
          stt_config: Google.Cloud.Dialogflow.V2.SpeechToTextConfig.t() | nil,
          language_code: String.t(),
          time_zone: String.t(),
          security_settings: String.t()
        }

  defstruct name: "",
            display_name: "",
            create_time: nil,
            update_time: nil,
            automated_agent_config: nil,
            human_agent_assistant_config: nil,
            human_agent_handoff_config: nil,
            notification_config: nil,
            logging_config: nil,
            new_message_event_notification_config: nil,
            stt_config: nil,
            language_code: "",
            time_zone: "",
            security_settings: ""

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

  field :stt_config, 9,
    type: Google.Cloud.Dialogflow.V2.SpeechToTextConfig,
    json_name: "sttConfig"

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :time_zone, 14, type: :string, json_name: "timeZone"
  field :security_settings, 13, type: :string, json_name: "securitySettings", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profiles: [Google.Cloud.Dialogflow.V2.ConversationProfile.t()],
          next_page_token: String.t()
        }

  defstruct conversation_profiles: [],
            next_page_token: ""

  field :conversation_profiles, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.GetConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation_profile: Google.Cloud.Dialogflow.V2.ConversationProfile.t() | nil
        }

  defstruct parent: "",
            conversation_profile: nil

  field :parent, 1, type: :string, deprecated: false

  field :conversation_profile, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile,
    json_name: "conversationProfile",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.UpdateConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: Google.Cloud.Dialogflow.V2.ConversationProfile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct conversation_profile: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: String.t()
        }

  defstruct agent: ""

  field :agent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          no_smalltalk: boolean,
          only_end_user: boolean
        }

  defstruct no_smalltalk: false,
            only_end_user: false

  field :no_smalltalk, 1, type: :bool, json_name: "noSmalltalk"
  field :only_end_user, 2, type: :bool, json_name: "onlyEndUser"
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_feature: Google.Cloud.Dialogflow.V2.SuggestionFeature.t() | nil,
          enable_event_based_suggestion: boolean,
          suggestion_trigger_settings:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings.t()
            | nil,
          query_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.t() | nil,
          conversation_model_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig.t() | nil,
          conversation_process_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationProcessConfig.t()
            | nil
        }

  defstruct suggestion_feature: nil,
            enable_event_based_suggestion: false,
            suggestion_trigger_settings: nil,
            query_config: nil,
            conversation_model_config: nil,
            conversation_process_config: nil

  field :suggestion_feature, 5,
    type: Google.Cloud.Dialogflow.V2.SuggestionFeature,
    json_name: "suggestionFeature"

  field :enable_event_based_suggestion, 3, type: :bool, json_name: "enableEventBasedSuggestion"

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_configs: [
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig.t()
          ],
          group_suggestion_responses: boolean
        }

  defstruct feature_configs: [],
            group_suggestion_responses: false

  field :feature_configs, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig,
    json_name: "featureConfigs"

  field :group_suggestion_responses, 3, type: :bool, json_name: "groupSuggestionResponses"
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          knowledge_bases: [String.t()]
        }

  defstruct knowledge_bases: []

  field :knowledge_bases, 1,
    repeated: true,
    type: :string,
    json_name: "knowledgeBases",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [String.t()]
        }

  defstruct documents: []

  field :documents, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: String.t()
        }

  defstruct agent: ""

  field :agent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          drop_handoff_messages: boolean,
          drop_virtual_agent_messages: boolean,
          drop_ivr_messages: boolean
        }

  defstruct drop_handoff_messages: false,
            drop_virtual_agent_messages: false,
            drop_ivr_messages: false

  field :drop_handoff_messages, 1, type: :bool, json_name: "dropHandoffMessages"
  field :drop_virtual_agent_messages, 2, type: :bool, json_name: "dropVirtualAgentMessages"
  field :drop_ivr_messages, 3, type: :bool, json_name: "dropIvrMessages"
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_source:
            {:knowledge_base_query_source,
             Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource.t()
             | nil}
            | {:document_query_source,
               Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource.t()
               | nil}
            | {:dialogflow_query_source,
               Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource.t()
               | nil},
          max_results: integer,
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          context_filter_settings:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings.t()
            | nil
        }

  defstruct query_source: nil,
            max_results: 0,
            confidence_threshold: 0.0,
            context_filter_settings: nil

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
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct model: ""

  field :model, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationProcessConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recent_sentences_count: integer
        }

  defstruct recent_sentences_count: 0

  field :recent_sentences_count, 2, type: :int32, json_name: "recentSentencesCount"
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_entity_extraction: boolean,
          enable_sentiment_analysis: boolean
        }

  defstruct enable_entity_extraction: false,
            enable_sentiment_analysis: false

  field :enable_entity_extraction, 2, type: :bool, json_name: "enableEntityExtraction"
  field :enable_sentiment_analysis, 3, type: :bool, json_name: "enableSentimentAnalysis"
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_config: Google.Cloud.Dialogflow.V2.NotificationConfig.t() | nil,
          human_agent_suggestion_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig.t() | nil,
          end_user_suggestion_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig.t() | nil,
          message_analysis_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig.t() | nil
        }

  defstruct notification_config: nil,
            human_agent_suggestion_config: nil,
            end_user_suggestion_config: nil,
            message_analysis_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_number: String.t()
        }

  defstruct account_number: ""

  field :account_number, 1, type: :string, json_name: "accountNumber", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization_id: String.t(),
          deployment_id: String.t(),
          button_id: String.t(),
          endpoint_domain: String.t()
        }

  defstruct organization_id: "",
            deployment_id: "",
            button_id: "",
            endpoint_domain: ""

  field :organization_id, 1, type: :string, json_name: "organizationId", deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false
  field :button_id, 3, type: :string, json_name: "buttonId", deprecated: false
  field :endpoint_domain, 4, type: :string, json_name: "endpointDomain", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_service:
            {:live_person_config,
             Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.LivePersonConfig.t() | nil}
            | {:salesforce_live_agent_config,
               Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig.t()
               | nil}
        }

  defstruct agent_service: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          message_format: Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat.t()
        }

  defstruct topic: "",
            message_format: :MESSAGE_FORMAT_UNSPECIFIED

  field :topic, 1, type: :string

  field :message_format, 2,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat,
    json_name: "messageFormat",
    enum: true
end
defmodule Google.Cloud.Dialogflow.V2.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_stackdriver_logging: boolean
        }

  defstruct enable_stackdriver_logging: false

  field :enable_stackdriver_logging, 3, type: :bool, json_name: "enableStackdriverLogging"
end
defmodule Google.Cloud.Dialogflow.V2.SuggestionFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type.t()
        }

  defstruct type: :TYPE_UNSPECIFIED

  field :type, 1, type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type, enum: true
end
defmodule Google.Cloud.Dialogflow.V2.SetSuggestionFeatureConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          suggestion_feature_config:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig.t() | nil
        }

  defstruct conversation_profile: "",
            participant_role: :ROLE_UNSPECIFIED,
            suggestion_feature_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          suggestion_feature_type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type.t()
        }

  defstruct conversation_profile: "",
            participant_role: :ROLE_UNSPECIFIED,
            suggestion_feature_type: :TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          suggestion_feature_type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct conversation_profile: "",
            participant_role: :ROLE_UNSPECIFIED,
            suggestion_feature_type: :TYPE_UNSPECIFIED,
            create_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          suggestion_feature_type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct conversation_profile: "",
            participant_role: :ROLE_UNSPECIFIED,
            suggestion_feature_type: :TYPE_UNSPECIFIED,
            create_time: nil

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
  use GRPC.Service, name: "google.cloud.dialogflow.v2.ConversationProfiles"

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
