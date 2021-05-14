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
  @type t :: integer | :TYPE_UNSPECIFIED | :ARTICLE_SUGGESTION | :FAQ

  field :TYPE_UNSPECIFIED, 0

  field :ARTICLE_SUGGESTION, 1

  field :FAQ, 2
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
          language_code: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :create_time,
    :update_time,
    :automated_agent_config,
    :human_agent_assistant_config,
    :human_agent_handoff_config,
    :notification_config,
    :logging_config,
    :new_message_event_notification_config,
    :stt_config,
    :language_code
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :update_time, 12, type: Google.Protobuf.Timestamp
  field :automated_agent_config, 3, type: Google.Cloud.Dialogflow.V2.AutomatedAgentConfig

  field :human_agent_assistant_config, 4,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig

  field :human_agent_handoff_config, 5, type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig
  field :notification_config, 6, type: Google.Cloud.Dialogflow.V2.NotificationConfig
  field :logging_config, 7, type: Google.Cloud.Dialogflow.V2.LoggingConfig

  field :new_message_event_notification_config, 8,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig

  field :stt_config, 9, type: Google.Cloud.Dialogflow.V2.SpeechToTextConfig
  field :language_code, 10, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profiles: [Google.Cloud.Dialogflow.V2.ConversationProfile.t()],
          next_page_token: String.t()
        }

  defstruct [:conversation_profiles, :next_page_token]

  field :conversation_profiles, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationProfile

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation_profile: Google.Cloud.Dialogflow.V2.ConversationProfile.t() | nil
        }

  defstruct [:parent, :conversation_profile]

  field :parent, 1, type: :string
  field :conversation_profile, 2, type: Google.Cloud.Dialogflow.V2.ConversationProfile
end

defmodule Google.Cloud.Dialogflow.V2.UpdateConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_profile: Google.Cloud.Dialogflow.V2.ConversationProfile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:conversation_profile, :update_mask]

  field :conversation_profile, 1, type: Google.Cloud.Dialogflow.V2.ConversationProfile
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: String.t()
        }

  defstruct [:agent]

  field :agent, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          no_smalltalk: boolean,
          only_end_user: boolean
        }

  defstruct [:no_smalltalk, :only_end_user]

  field :no_smalltalk, 1, type: :bool
  field :only_end_user, 2, type: :bool
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
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig.t() | nil
        }

  defstruct [
    :suggestion_feature,
    :enable_event_based_suggestion,
    :suggestion_trigger_settings,
    :query_config,
    :conversation_model_config
  ]

  field :suggestion_feature, 5, type: Google.Cloud.Dialogflow.V2.SuggestionFeature
  field :enable_event_based_suggestion, 3, type: :bool

  field :suggestion_trigger_settings, 10,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionTriggerSettings

  field :query_config, 6,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig

  field :conversation_model_config, 7,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig
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

  defstruct [:feature_configs, :group_suggestion_responses]

  field :feature_configs, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionFeatureConfig

  field :group_suggestion_responses, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          knowledge_bases: [String.t()]
        }

  defstruct [:knowledge_bases]

  field :knowledge_bases, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [String.t()]
        }

  defstruct [:documents]

  field :documents, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent: String.t()
        }

  defstruct [:agent]

  field :agent, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          drop_handoff_messages: boolean,
          drop_virtual_agent_messages: boolean,
          drop_ivr_messages: boolean
        }

  defstruct [:drop_handoff_messages, :drop_virtual_agent_messages, :drop_ivr_messages]

  field :drop_handoff_messages, 1, type: :bool
  field :drop_virtual_agent_messages, 2, type: :bool
  field :drop_ivr_messages, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_source: {atom, any},
          max_results: integer,
          confidence_threshold: float | :infinity | :negative_infinity | :nan,
          context_filter_settings:
            Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings.t()
            | nil
        }

  defstruct [:query_source, :max_results, :confidence_threshold, :context_filter_settings]

  oneof :query_source, 0

  field :knowledge_base_query_source, 1,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.KnowledgeBaseQuerySource,
    oneof: 0

  field :document_query_source, 2,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DocumentQuerySource,
    oneof: 0

  field :dialogflow_query_source, 3,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.DialogflowQuerySource,
    oneof: 0

  field :max_results, 4, type: :int32
  field :confidence_threshold, 5, type: :float

  field :context_filter_settings, 7,
    type:
      Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionQueryConfig.ContextFilterSettings
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.ConversationModelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_entity_extraction: boolean,
          enable_sentiment_analysis: boolean
        }

  defstruct [:enable_entity_extraction, :enable_sentiment_analysis]

  field :enable_entity_extraction, 2, type: :bool
  field :enable_sentiment_analysis, 3, type: :bool
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

  defstruct [
    :notification_config,
    :human_agent_suggestion_config,
    :end_user_suggestion_config,
    :message_analysis_config
  ]

  field :notification_config, 2, type: Google.Cloud.Dialogflow.V2.NotificationConfig

  field :human_agent_suggestion_config, 3,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig

  field :end_user_suggestion_config, 4,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.SuggestionConfig

  field :message_analysis_config, 5,
    type: Google.Cloud.Dialogflow.V2.HumanAgentAssistantConfig.MessageAnalysisConfig
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.LivePersonConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_number: String.t()
        }

  defstruct [:account_number]

  field :account_number, 1, type: :string
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

  defstruct [:organization_id, :deployment_id, :button_id, :endpoint_domain]

  field :organization_id, 1, type: :string
  field :deployment_id, 2, type: :string
  field :button_id, 3, type: :string
  field :endpoint_domain, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_service: {atom, any}
        }

  defstruct [:agent_service]

  oneof :agent_service, 0

  field :live_person_config, 1,
    type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.LivePersonConfig,
    oneof: 0

  field :salesforce_live_agent_config, 2,
    type: Google.Cloud.Dialogflow.V2.HumanAgentHandoffConfig.SalesforceLiveAgentConfig,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          message_format: Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat.t()
        }

  defstruct [:topic, :message_format]

  field :topic, 1, type: :string

  field :message_format, 2,
    type: Google.Cloud.Dialogflow.V2.NotificationConfig.MessageFormat,
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_stackdriver_logging: boolean
        }

  defstruct [:enable_stackdriver_logging]

  field :enable_stackdriver_logging, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Cloud.Dialogflow.V2.SuggestionFeature.Type, enum: true
end
