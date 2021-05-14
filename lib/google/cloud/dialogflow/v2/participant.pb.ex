defmodule Google.Cloud.Dialogflow.V2.Participant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER

  field :ROLE_UNSPECIFIED, 0

  field :HUMAN_AGENT, 1

  field :AUTOMATED_AGENT, 2

  field :END_USER, 3
end

defmodule Google.Cloud.Dialogflow.V2.Participant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          sip_recording_media_label: String.t()
        }

  defstruct [:name, :role, :sip_recording_media_label]

  field :name, 1, type: :string
  field :role, 2, type: Google.Cloud.Dialogflow.V2.Participant.Role, enum: true
  field :sip_recording_media_label, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t(),
          language_code: String.t(),
          participant: String.t(),
          participant_role: Google.Cloud.Dialogflow.V2.Participant.Role.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          message_annotation: Google.Cloud.Dialogflow.V2.MessageAnnotation.t() | nil
        }

  defstruct [
    :name,
    :content,
    :language_code,
    :participant,
    :participant_role,
    :create_time,
    :message_annotation
  ]

  field :name, 1, type: :string
  field :content, 2, type: :string
  field :language_code, 3, type: :string
  field :participant, 4, type: :string
  field :participant_role, 5, type: Google.Cloud.Dialogflow.V2.Participant.Role, enum: true
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :message_annotation, 7, type: Google.Cloud.Dialogflow.V2.MessageAnnotation
end

defmodule Google.Cloud.Dialogflow.V2.CreateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          participant: Google.Cloud.Dialogflow.V2.Participant.t() | nil
        }

  defstruct [:parent, :participant]

  field :parent, 1, type: :string
  field :participant, 2, type: Google.Cloud.Dialogflow.V2.Participant
end

defmodule Google.Cloud.Dialogflow.V2.GetParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListParticipantsRequest do
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

defmodule Google.Cloud.Dialogflow.V2.ListParticipantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participants: [Google.Cloud.Dialogflow.V2.Participant.t()],
          next_page_token: String.t()
        }

  defstruct [:participants, :next_page_token]

  field :participants, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Participant
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.UpdateParticipantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: Google.Cloud.Dialogflow.V2.Participant.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:participant, :update_mask]

  field :participant, 1, type: Google.Cloud.Dialogflow.V2.Participant
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {atom, any},
          participant: String.t(),
          reply_audio_config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          query_params: Google.Cloud.Dialogflow.V2.QueryParameters.t() | nil,
          request_id: String.t()
        }

  defstruct [:input, :participant, :reply_audio_config, :query_params, :request_id]

  oneof :input, 0
  field :participant, 1, type: :string
  field :text_input, 6, type: Google.Cloud.Dialogflow.V2.TextInput, oneof: 0
  field :event_input, 8, type: Google.Cloud.Dialogflow.V2.EventInput, oneof: 0
  field :reply_audio_config, 5, type: Google.Cloud.Dialogflow.V2.OutputAudioConfig
  field :query_params, 9, type: Google.Cloud.Dialogflow.V2.QueryParameters
  field :request_id, 11, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.DtmfParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accepts_dtmf_input: boolean
        }

  defstruct [:accepts_dtmf_input]

  field :accepts_dtmf_input, 1, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.AnalyzeContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply_text: String.t(),
          reply_audio: Google.Cloud.Dialogflow.V2.OutputAudio.t() | nil,
          automated_agent_reply: Google.Cloud.Dialogflow.V2.AutomatedAgentReply.t() | nil,
          message: Google.Cloud.Dialogflow.V2.Message.t() | nil,
          human_agent_suggestion_results: [Google.Cloud.Dialogflow.V2.SuggestionResult.t()],
          end_user_suggestion_results: [Google.Cloud.Dialogflow.V2.SuggestionResult.t()],
          dtmf_parameters: Google.Cloud.Dialogflow.V2.DtmfParameters.t() | nil
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
  field :reply_audio, 2, type: Google.Cloud.Dialogflow.V2.OutputAudio
  field :automated_agent_reply, 3, type: Google.Cloud.Dialogflow.V2.AutomatedAgentReply
  field :message, 5, type: Google.Cloud.Dialogflow.V2.Message

  field :human_agent_suggestion_results, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult

  field :end_user_suggestion_results, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SuggestionResult

  field :dtmf_parameters, 9, type: Google.Cloud.Dialogflow.V2.DtmfParameters
end

defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesRequest do
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

defmodule Google.Cloud.Dialogflow.V2.SuggestArticlesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          article_answers: [Google.Cloud.Dialogflow.V2.ArticleAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:article_answers, :latest_message, :context_size]

  field :article_answers, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.ArticleAnswer
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest do
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

defmodule Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          faq_answers: [Google.Cloud.Dialogflow.V2.FaqAnswer.t()],
          latest_message: String.t(),
          context_size: integer
        }

  defstruct [:faq_answers, :latest_message, :context_size]

  field :faq_answers, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.FaqAnswer
  field :latest_message, 2, type: :string
  field :context_size, 3, type: :int32
end

defmodule Google.Cloud.Dialogflow.V2.OutputAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dialogflow.V2.OutputAudioConfig.t() | nil,
          audio: binary
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Dialogflow.V2.OutputAudioConfig
  field :audio, 2, type: :bytes
end

defmodule Google.Cloud.Dialogflow.V2.AutomatedAgentReply do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detect_intent_response: Google.Cloud.Dialogflow.V2.DetectIntentResponse.t() | nil
        }

  defstruct [:detect_intent_response]

  field :detect_intent_response, 1, type: Google.Cloud.Dialogflow.V2.DetectIntentResponse
end

defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry do
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

defmodule Google.Cloud.Dialogflow.V2.ArticleAnswer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          snippets: [String.t()],
          confidence: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          answer_record: String.t()
        }

  defstruct [:title, :uri, :snippets, :confidence, :metadata, :answer_record]

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :snippets, 3, repeated: true, type: :string
  field :confidence, 4, type: :float

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ArticleAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry do
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

defmodule Google.Cloud.Dialogflow.V2.FaqAnswer do
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
    type: Google.Cloud.Dialogflow.V2.FaqAnswer.MetadataEntry,
    map: true

  field :answer_record, 6, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.SuggestionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion_response: {atom, any}
        }

  defstruct [:suggestion_response]

  oneof :suggestion_response, 0
  field :error, 1, type: Google.Rpc.Status, oneof: 0

  field :suggest_articles_response, 2,
    type: Google.Cloud.Dialogflow.V2.SuggestArticlesResponse,
    oneof: 0

  field :suggest_faq_answers_response, 3,
    type: Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse,
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.AnnotatedMessagePart do
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

defmodule Google.Cloud.Dialogflow.V2.MessageAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parts: [Google.Cloud.Dialogflow.V2.AnnotatedMessagePart.t()],
          contain_entities: boolean
        }

  defstruct [:parts, :contain_entities]

  field :parts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.AnnotatedMessagePart
  field :contain_entities, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2.Participants.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Participants"

  rpc :CreateParticipant,
      Google.Cloud.Dialogflow.V2.CreateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :GetParticipant,
      Google.Cloud.Dialogflow.V2.GetParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :ListParticipants,
      Google.Cloud.Dialogflow.V2.ListParticipantsRequest,
      Google.Cloud.Dialogflow.V2.ListParticipantsResponse

  rpc :UpdateParticipant,
      Google.Cloud.Dialogflow.V2.UpdateParticipantRequest,
      Google.Cloud.Dialogflow.V2.Participant

  rpc :AnalyzeContent,
      Google.Cloud.Dialogflow.V2.AnalyzeContentRequest,
      Google.Cloud.Dialogflow.V2.AnalyzeContentResponse

  rpc :SuggestArticles,
      Google.Cloud.Dialogflow.V2.SuggestArticlesRequest,
      Google.Cloud.Dialogflow.V2.SuggestArticlesResponse

  rpc :SuggestFaqAnswers,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersRequest,
      Google.Cloud.Dialogflow.V2.SuggestFaqAnswersResponse
end

defmodule Google.Cloud.Dialogflow.V2.Participants.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Participants.Service
end
