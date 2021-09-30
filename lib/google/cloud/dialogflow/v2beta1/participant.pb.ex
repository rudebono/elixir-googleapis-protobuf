defmodule Google.Cloud.Dialogflow.V2beta1.Participant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER

  field :ROLE_UNSPECIFIED, 0

  field :HUMAN_AGENT, 1

  field :AUTOMATED_AGENT, 2

  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED | :PARTIAL | :FINAL

  field :AUTOMATED_AGENT_REPLY_TYPE_UNSPECIFIED, 0

  field :PARTIAL, 1

  field :FINAL, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :ARTICLE_SUGGESTION | :FAQ | :SMART_REPLY

  field :TYPE_UNSPECIFIED, 0

  field :ARTICLE_SUGGESTION, 1

  field :FAQ, 2

  field :SMART_REPLY, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          role: Google.Cloud.Dialogflow.V2beta1.Participant.Role.t(),
          obfuscated_external_user_id: String.t()
        }

  defstruct [:name, :role, :obfuscated_external_user_id]

  field :name, 1, type: :string
  field :role, 2, type: Google.Cloud.Dialogflow.V2beta1.Participant.Role, enum: true
  field :obfuscated_external_user_id, 7, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t(),
          language_code: String.t(),
          participant: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2beta1.Participant.Role.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          send_time: Google.Protobuf.Timestamp.t() | nil,
          message_annotation: Google.Cloud.Dialogflow.V2beta1.MessageAnnotation.t() | nil,
          sentiment_analysis: Google.Cloud.Dialogflow.V2beta1.SentimentAnalysisResult.t() | nil
        }

  defstruct [
    :name,
    :content,
    :language_code,
    :participant,
    :participant_role,
    :create_time,
    :send_time,
    :message_annotation,
    :sentiment_analysis
  ]

  field :name, 1, type: :string
  field :content, 2, type: :string
  field :language_code, 3, type: :string
  field :participant, 4, type: :string
  field :participant_role, 5, type: Google.Cloud.Dialogflow.V2beta1.Participant.Role, enum: true
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :send_time, 9, type: Google.Protobuf.Timestamp
  field :message_annotation, 7, type: Google.Cloud.Dialogflow.V2beta1.MessageAnnotation
  field :sentiment_analysis, 8, type: Google.Cloud.Dialogflow.V2beta1.SentimentAnalysisResult
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          participant: Google.Cloud.Dialogflow.V2beta1.Participant.t() | nil
        }

  defstruct [:parent, :participant]

  field :parent, 1, type: :string
  field :participant, 2, type: Google.Cloud.Dialogflow.V2beta1.Participant
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsRequest do
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

defmodule Google.Cloud.Dialogflow.V2beta1.ListParticipantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participants: [Google.Cloud.Dialogflow.V2beta1.Participant.t()],
          next_page_token: String.t()
        }

  defstruct [:participants, :next_page_token]

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Participant
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: Google.Cloud.Dialogflow.V2beta1.Participant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:participant, :update_mask]

  field :participant, 1, type: Google.Cloud.Dialogflow.V2beta1.Participant
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.OutputAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig.t() | nil,
          audio: binary
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any},
          match: {atom, any},
          response_messages: [Google.Cloud.Dialogflow.V2beta1.ResponseMessage.t()],
          match_confidence: float | :infinity | :negative_infinity | :nan,
          parameters: Google.Protobuf.Struct.t() | nil,
          cx_session_parameters: Google.Protobuf.Struct.t() | nil,
          automated_agent_reply_type:
            Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType.t(),
          allow_cancellation: boolean
        }

  defstruct [
    :response,
    :match,
    :response_messages,
    :match_confidence,
    :parameters,
    :cx_session_parameters,
    :automated_agent_reply_type,
    :allow_cancellation
  ]

  oneof :response, 0
  oneof :match, 1

  field :detect_intent_response, 1,
    type: Google.Cloud.Dialogflow.V2beta1.DetectIntentResponse,
    oneof: 0

  field :response_messages, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage

  field :intent, 4, type: :string, oneof: 1
  field :event, 5, type: :string, oneof: 1
  field :match_confidence, 9, type: :float
  field :parameters, 10, type: Google.Protobuf.Struct
  field :cx_session_parameters, 6, type: Google.Protobuf.Struct, deprecated: true

  field :automated_agent_reply_type, 7,
    type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.AutomatedAgentReplyType,
    enum: true

  field :allow_cancellation, 8, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type.t()
        }

  defstruct [:type]

  field :type, 1, type: Google.Cloud.Dialogflow.V2beta1.SuggestionFeature.Type, enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {atom, any},
          participant: String.t(),
          reply_audio_config: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig.t() | nil,
          query_params: Google.Cloud.Dialogflow.V2beta1.QueryParameters.t() | nil,
          message_send_time: Google.Protobuf.Timestamp.t() | nil,
          request_id: String.t()
        }

  defstruct [
    :input,
    :participant,
    :reply_audio_config,
    :query_params,
    :message_send_time,
    :request_id
  ]

  oneof :input, 0
  field :participant, 1, type: :string
  field :text_input, 6, type: Google.Cloud.Dialogflow.V2beta1.TextInput, oneof: 0
  field :event_input, 8, type: Google.Cloud.Dialogflow.V2beta1.EventInput, oneof: 0
  field :reply_audio_config, 5, type: Google.Cloud.Dialogflow.V2beta1.OutputAudioConfig
  field :query_params, 9, type: Google.Cloud.Dialogflow.V2beta1.QueryParameters
  field :message_send_time, 10, type: Google.Protobuf.Timestamp
  field :request_id, 11, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.DtmfParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accepts_dtmf_input: boolean
        }

  defstruct [:accepts_dtmf_input]

  field :accepts_dtmf_input, 1, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnalyzeContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply_text: String.t(),
          reply_audio: Google.Cloud.Dialogflow.V2beta1.OutputAudio.t() | nil,
          automated_agent_reply: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply.t() | nil,
          message: Google.Cloud.Dialogflow.V2beta1.Message.t() | nil,
          human_agent_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          end_user_suggestion_results: [Google.Cloud.Dialogflow.V2beta1.SuggestionResult.t()],
          dtmf_parameters: Google.Cloud.Dialogflow.V2beta1.DtmfParameters.t() | nil
        }

  defstruct [
    :reply_text,
    :reply_audio,
    :automated_agent_reply,
    :message,
    :human_agent_suggestion_results,
    :end_user_suggestion_results,
    :dtmf_parameters
  ]

  field :reply_text, 1, type: :string
  field :reply_audio, 2, type: Google.Cloud.Dialogflow.V2beta1.OutputAudio
  field :automated_agent_reply, 3, type: Google.Cloud.Dialogflow.V2beta1.AutomatedAgentReply
  field :message, 5, type: Google.Cloud.Dialogflow.V2beta1.Message

  field :human_agent_suggestion_results, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult

  field :end_user_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestionResult

  field :dtmf_parameters, 9, type: Google.Cloud.Dialogflow.V2beta1.DtmfParameters
end

defmodule Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          entity_type: String.t(),
          formatted_value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:text, :entity_type, :formatted_value]

  field :text, 1, type: :string
  field :entity_type, 2, type: :string
  field :formatted_value, 3, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Dialogflow.V2beta1.MessageAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parts: [Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart.t()],
          contain_entities: boolean
        }

  defstruct [:parts, :contain_entities]

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ArticleAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct [:title, :uri, :snippets, :metadata, :answer_record]

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.FaqAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.FaqAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          source: String.t(),
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct [:answer, :confidence, :question, :source, :metadata, :answer_record]

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          answer_record: String.t()
        }

  defstruct [:reply, :confidence, :answer_record]

  field :reply, 1, type: :string
  field :confidence, 2, type: :float
  field :answer_record, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_response: {atom, any}
        }

  defstruct [:suggestion_response]

  oneof :suggestion_response, 0
  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :suggest_articles_response, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse,
    oneof: 0

  field :suggest_faq_answers_response, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse,
    oneof: 0

  field :suggest_smart_replies_response, 4,
    type: Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestArticlesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:parent, :latest_message, :context_size]

  field :parent, 1, type: :string
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          article_answers: [Google.Cloud.Dialogflow.V2beta1.ArticleAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:article_answers, :latest_message, :context_size]

  field :article_answers, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.ArticleAnswer
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:parent, :latest_message, :context_size]

  field :parent, 1, type: :string
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          faq_answers: [Google.Cloud.Dialogflow.V2beta1.FaqAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:faq_answers, :latest_message, :context_size]

  field :faq_answers, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.FaqAnswer
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          current_text_input: Google.Cloud.Dialogflow.V2beta1.TextInput.t() | nil,
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:parent, :current_text_input, :latest_message, :context_size]

  field :parent, 1, type: :string
  field :current_text_input, 4, type: Google.Cloud.Dialogflow.V2beta1.TextInput
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          smart_reply_answers: [Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:smart_reply_answers, :latest_message, :context_size]

  field :smart_reply_answers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SmartReplyAnswer

  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.Article do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct [:title, :uri, :snippets, :metadata, :answer_record]

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          source: String.t(),
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct [:answer, :confidence, :question, :source, :metadata, :answer_record]

  field :answer, 1, type: :string
  field :confidence, 2, type: :float
  field :question, 3, type: :string
  field :source, 4, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Suggestion do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          articles: [Google.Cloud.Dialogflow.V2beta1.Suggestion.Article.t()],
          faq_answers: [Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          latest_message: String.t()
        }

  defstruct [:name, :articles, :faq_answers, :create_time, :latest_message]

  field :name, 1, type: :string
  field :articles, 2, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Suggestion.Article

  field :faq_answers, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Suggestion.FaqAnswer

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :latest_message, 7, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSuggestionsRequest do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSuggestionsResponse do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          suggestions: [Google.Cloud.Dialogflow.V2beta1.Suggestion.t()],
          next_page_token: String.t()
        }

  defstruct [:suggestions, :next_page_token]

  field :suggestions, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionRequest do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:parent, :latest_message, :context_size]

  field :parent, 1, type: :string
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.CompileSuggestionResponse do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: Google.Cloud.Dialogflow.V2beta1.Suggestion.t() | nil,
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:suggestion, :latest_message, :context_size]

  field :suggestion, 1, type: Google.Cloud.Dialogflow.V2beta1.Suggestion
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()]
        }

  defstruct [:text]

  field :text, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:metadata]

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: {atom, any}
        }

  defstruct [:endpoint]

  oneof :endpoint, 0
  field :phone_number, 1, type: :string, oneof: 0
  field :sip_uri, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.ResponseMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: {atom, any}
        }

  defstruct [:message]

  oneof :message, 0
  field :text, 1, type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.Text, oneof: 0
  field :payload, 2, type: Google.Protobuf.Struct, oneof: 0

  field :live_agent_handoff, 3,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.LiveAgentHandoff,
    oneof: 0

  field :end_interaction, 4,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.EndInteraction,
    oneof: 0

  field :telephony_transfer_call, 6,
    type: Google.Cloud.Dialogflow.V2beta1.ResponseMessage.TelephonyTransferCall,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participants.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Participants"

  rpc :CreateParticipant,
      Google.Cloud.Dialogflow.V2beta1.CreateParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :GetParticipant,
      Google.Cloud.Dialogflow.V2beta1.GetParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :ListParticipants,
      Google.Cloud.Dialogflow.V2beta1.ListParticipantsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListParticipantsResponse

  rpc :UpdateParticipant,
      Google.Cloud.Dialogflow.V2beta1.UpdateParticipantRequest,
      Google.Cloud.Dialogflow.V2beta1.Participant

  rpc :AnalyzeContent,
      Google.Cloud.Dialogflow.V2beta1.AnalyzeContentRequest,
      Google.Cloud.Dialogflow.V2beta1.AnalyzeContentResponse

  rpc :SuggestArticles,
      Google.Cloud.Dialogflow.V2beta1.SuggestArticlesRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestArticlesResponse

  rpc :SuggestFaqAnswers,
      Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestFaqAnswersResponse

  rpc :SuggestSmartReplies,
      Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesRequest,
      Google.Cloud.Dialogflow.V2beta1.SuggestSmartRepliesResponse

  rpc :ListSuggestions,
      Google.Cloud.Dialogflow.V2beta1.ListSuggestionsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListSuggestionsResponse

  rpc :CompileSuggestion,
      Google.Cloud.Dialogflow.V2beta1.CompileSuggestionRequest,
      Google.Cloud.Dialogflow.V2beta1.CompileSuggestionResponse
end

defmodule Google.Cloud.Dialogflow.V2beta1.Participants.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Participants.Service
end
