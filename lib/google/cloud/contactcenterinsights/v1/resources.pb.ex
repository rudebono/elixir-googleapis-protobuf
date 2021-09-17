defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Medium do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MEDIUM_UNSPECIFIED | :PHONE_CALL | :CHAT

  field :MEDIUM_UNSPECIFIED, 0

  field :PHONE_CALL, 1

  field :CHAT, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.Entity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :PERSON
          | :LOCATION
          | :ORGANIZATION
          | :EVENT
          | :WORK_OF_ART
          | :CONSUMER_GOOD
          | :OTHER
          | :PHONE_NUMBER
          | :ADDRESS
          | :DATE
          | :NUMBER
          | :PRICE

  field :TYPE_UNSPECIFIED, 0

  field :PERSON, 1

  field :LOCATION, 2

  field :ORGANIZATION, 3

  field :EVENT, 4

  field :WORK_OF_ART, 5

  field :CONSUMER_GOOD, 6

  field :OTHER, 7

  field :PHONE_NUMBER, 9

  field :ADDRESS, 10

  field :DATE, 11

  field :NUMBER, 12

  field :PRICE, 13
end

defmodule Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MENTION_TYPE_UNSPECIFIED | :PROPER | :COMMON

  field :MENTION_TYPE_UNSPECIFIED, 0

  field :PROPER, 1

  field :COMMON, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :UNDEPLOYED
          | :DEPLOYING
          | :DEPLOYED
          | :UNDEPLOYING
          | :DELETING

  field :STATE_UNSPECIFIED, 0

  field :UNDEPLOYED, 1

  field :DEPLOYING, 2

  field :DEPLOYED, 3

  field :UNDEPLOYING, 4

  field :DELETING, 5
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PHRASE_MATCHER_TYPE_UNSPECIFIED | :ALL_OF | :ANY_OF

  field :PHRASE_MATCHER_TYPE_UNSPECIFIED, 0

  field :ALL_OF, 1

  field :ANY_OF, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED | :ALL_OF | :ANY_OF

  field :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED, 0

  field :ALL_OF, 1

  field :ANY_OF, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CORRECTNESS_LEVEL_UNSPECIFIED
          | :NOT_CORRECT
          | :PARTIALLY_CORRECT
          | :FULLY_CORRECT

  field :CORRECTNESS_LEVEL_UNSPECIFIED, 0

  field :NOT_CORRECT, 1

  field :PARTIALLY_CORRECT, 2

  field :FULLY_CORRECT, 3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :ROLE_UNSPECIFIED | :HUMAN_AGENT | :AUTOMATED_AGENT | :END_USER | :ANY_AGENT

  field :ROLE_UNSPECIFIED, 0

  field :HUMAN_AGENT, 1

  field :AUTOMATED_AGENT, 2

  field :END_USER, 3

  field :ANY_AGENT, 4
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_channel: integer,
          agent_channel: integer
        }

  defstruct [:customer_channel, :agent_channel]

  field :customer_channel, 1, type: :int32
  field :agent_channel, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_offset: Google.Protobuf.Duration.t() | nil,
          end_offset: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:start_offset, :end_offset, :word, :confidence]

  field :start_offset, 1, type: Google.Protobuf.Duration
  field :end_offset, 2, type: Google.Protobuf.Duration
  field :word, 3, type: :string
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [
            Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo.t()
          ],
          language_code: String.t(),
          channel_tag: integer,
          segment_participant:
            Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.t() | nil
        }

  defstruct [:text, :confidence, :words, :language_code, :channel_tag, :segment_participant]

  field :text, 1, type: :string
  field :confidence, 2, type: :float

  field :words, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo

  field :language_code, 4, type: :string
  field :channel_tag, 5, type: :int32

  field :segment_participant, 9,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript_segments: [
            Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.t()
          ]
        }

  defstruct [:transcript_segments]

  field :transcript_segments, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.DialogflowIntent.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.DialogflowIntent
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          expiration: {atom, any},
          name: String.t(),
          data_source: Google.Cloud.Contactcenterinsights.V1.ConversationDataSource.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          language_code: String.t(),
          agent_id: String.t(),
          labels: %{String.t() => String.t()},
          transcript: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.t() | nil,
          medium: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          turn_count: integer,
          latest_analysis: Google.Cloud.Contactcenterinsights.V1.Analysis.t() | nil,
          runtime_annotations: [Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation.t()],
          dialogflow_intents: %{
            String.t() => Google.Cloud.Contactcenterinsights.V1.DialogflowIntent.t() | nil
          }
        }

  defstruct [
    :metadata,
    :expiration,
    :name,
    :data_source,
    :create_time,
    :update_time,
    :start_time,
    :language_code,
    :agent_id,
    :labels,
    :transcript,
    :medium,
    :duration,
    :turn_count,
    :latest_analysis,
    :runtime_annotations,
    :dialogflow_intents
  ]

  oneof :metadata, 0
  oneof :expiration, 1

  field :call_metadata, 7,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata,
    oneof: 0

  field :expire_time, 15, type: Google.Protobuf.Timestamp, oneof: 1
  field :ttl, 16, type: Google.Protobuf.Duration, oneof: 1
  field :name, 1, type: :string
  field :data_source, 2, type: Google.Cloud.Contactcenterinsights.V1.ConversationDataSource
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :start_time, 17, type: Google.Protobuf.Timestamp
  field :language_code, 14, type: :string
  field :agent_id, 5, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry,
    map: true

  field :transcript, 8, type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript
  field :medium, 9, type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium, enum: true
  field :duration, 10, type: Google.Protobuf.Duration
  field :turn_count, 11, type: :int32
  field :latest_analysis, 12, type: Google.Cloud.Contactcenterinsights.V1.Analysis

  field :runtime_annotations, 13,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation

  field :dialogflow_intents, 18,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry,
    map: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.Analysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_time: Google.Protobuf.Timestamp.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          analysis_result: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.t() | nil
        }

  defstruct [:name, :request_time, :create_time, :analysis_result]

  field :name, 1, type: :string
  field :request_time, 2, type: Google.Protobuf.Timestamp
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :analysis_result, 7, type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationDataSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Contactcenterinsights.V1.GcsSource, oneof: 0

  field :dialogflow_source, 3,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowSource,
    oneof: 0
end

defmodule Google.Cloud.Contactcenterinsights.V1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_uri: String.t(),
          transcript_uri: String.t()
        }

  defstruct [:audio_uri, :transcript_uri]

  field :audio_uri, 1, type: :string
  field :transcript_uri, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dialogflow_conversation: String.t(),
          audio_uri: String.t()
        }

  defstruct [:dialogflow_conversation, :audio_uri]

  field :dialogflow_conversation, 1, type: :string
  field :audio_uri, 3, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.EntitiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.Entity.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Entity
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.IntentsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.Intent.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Intent
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.PhraseMatchersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotations: [Google.Cloud.Contactcenterinsights.V1.CallAnnotation.t()],
          entities: %{String.t() => Google.Cloud.Contactcenterinsights.V1.Entity.t() | nil},
          sentiments: [Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment.t()],
          intents: %{String.t() => Google.Cloud.Contactcenterinsights.V1.Intent.t() | nil},
          phrase_matchers: %{
            String.t() => Google.Cloud.Contactcenterinsights.V1.PhraseMatchData.t() | nil
          },
          issue_model_result: Google.Cloud.Contactcenterinsights.V1.IssueModelResult.t() | nil
        }

  defstruct [
    :annotations,
    :entities,
    :sentiments,
    :intents,
    :phrase_matchers,
    :issue_model_result
  ]

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CallAnnotation

  field :entities, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.EntitiesEntry,
    map: true

  field :sentiments, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment

  field :intents, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.IntentsEntry,
    map: true

  field :phrase_matchers, 7,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.PhraseMatchersEntry,
    map: true

  field :issue_model_result, 8, type: Google.Cloud.Contactcenterinsights.V1.IssueModelResult
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:metadata, :end_time]

  oneof :metadata, 0

  field :call_analysis_metadata, 2,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata,
    oneof: 0

  field :end_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_model: String.t(),
          issues: [Google.Cloud.Contactcenterinsights.V1.IssueAssignment.t()]
        }

  defstruct [:issue_model, :issues]

  field :issue_model, 1, type: :string
  field :issues, 2, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.IssueAssignment
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_tag: integer,
          sentiment_data: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct [:channel_tag, :sentiment_data]

  field :channel_tag, 1, type: :int32
  field :sentiment_data, 2, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          display_name: String.t()
        }

  defstruct [:issue, :score, :display_name]

  field :issue, 1, type: :string
  field :score, 2, type: :double
  field :display_name, 3, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.CallAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {atom, any},
          channel_tag: integer,
          annotation_start_boundary:
            Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          annotation_end_boundary:
            Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil
        }

  defstruct [:data, :channel_tag, :annotation_start_boundary, :annotation_end_boundary]

  oneof :data, 0

  field :interruption_data, 10,
    type: Google.Cloud.Contactcenterinsights.V1.InterruptionData,
    oneof: 0

  field :sentiment_data, 11, type: Google.Cloud.Contactcenterinsights.V1.SentimentData, oneof: 0
  field :silence_data, 12, type: Google.Cloud.Contactcenterinsights.V1.SilenceData, oneof: 0
  field :hold_data, 13, type: Google.Cloud.Contactcenterinsights.V1.HoldData, oneof: 0

  field :entity_mention_data, 15,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData,
    oneof: 0

  field :intent_match_data, 16,
    type: Google.Cloud.Contactcenterinsights.V1.IntentMatchData,
    oneof: 0

  field :phrase_match_data, 17,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData,
    oneof: 0

  field :channel_tag, 1, type: :int32

  field :annotation_start_boundary, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary

  field :annotation_end_boundary, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detailed_boundary: {atom, any},
          transcript_index: integer
        }

  defstruct [:detailed_boundary, :transcript_index]

  oneof :detailed_boundary, 0
  field :word_index, 3, type: :int32, oneof: 0
  field :transcript_index, 1, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.Entity.MetadataEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.Entity.Type.t(),
          metadata: %{String.t() => String.t()},
          salience: float | :infinity | :negative_infinity | :nan,
          sentiment: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct [:display_name, :type, :metadata, :salience, :sentiment]

  field :display_name, 1, type: :string
  field :type, 2, type: Google.Cloud.Contactcenterinsights.V1.Entity.Type, enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Entity.MetadataEntry,
    map: true

  field :salience, 4, type: :float
  field :sentiment, 5, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end

defmodule Google.Cloud.Contactcenterinsights.V1.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          display_name: String.t()
        }

  defstruct [:id, :display_name]

  field :id, 1, type: :string
  field :display_name, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_matcher: String.t(),
          display_name: String.t()
        }

  defstruct [:phrase_matcher, :display_name]

  field :phrase_matcher, 1, type: :string
  field :display_name, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowIntent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t()
        }

  defstruct [:display_name]

  field :display_name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.InterruptionData do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Contactcenterinsights.V1.SilenceData do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Contactcenterinsights.V1.HoldData do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Contactcenterinsights.V1.EntityMentionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_unique_id: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType.t(),
          sentiment: Google.Cloud.Contactcenterinsights.V1.SentimentData.t() | nil
        }

  defstruct [:entity_unique_id, :type, :sentiment]

  field :entity_unique_id, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType,
    enum: true

  field :sentiment, 3, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end

defmodule Google.Cloud.Contactcenterinsights.V1.IntentMatchData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intent_unique_id: String.t()
        }

  defstruct [:intent_unique_id]

  field :intent_unique_id, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SentimentData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          magnitude: float | :infinity | :negative_infinity | :nan,
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:magnitude, :score]

  field :magnitude, 1, type: :float
  field :score, 2, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          medium: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium.t(),
          training_conversations_count: integer,
          filter: String.t()
        }

  defstruct [:medium, :training_conversations_count, :filter]

  field :medium, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    deprecated: true,
    enum: true

  field :training_conversations_count, 2, type: :int64
  field :filter, 3, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Contactcenterinsights.V1.IssueModel.State.t(),
          input_data_config:
            Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig.t() | nil,
          training_stats: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :create_time,
    :update_time,
    :state,
    :input_data_config,
    :training_stats
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :state, 5, type: Google.Cloud.Contactcenterinsights.V1.IssueModel.State, enum: true

  field :input_data_config, 6,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig

  field :training_stats, 7, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats
end

defmodule Google.Cloud.Contactcenterinsights.V1.Issue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :display_name, :create_time, :update_time]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: String.t(),
          labeled_conversations_count: integer
        }

  defstruct [:issue, :labeled_conversations_count]

  field :issue, 1, type: :string
  field :labeled_conversations_count, 2, type: :int64
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analyzed_conversations_count: integer,
          unclassified_conversations_count: integer,
          issue_stats: %{
            String.t() =>
              Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
          }
        }

  defstruct [:analyzed_conversations_count, :unclassified_conversations_count, :issue_stats]

  field :analyzed_conversations_count, 1, type: :int64
  field :unclassified_conversations_count, 2, type: :int64

  field :issue_stats, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry,
    map: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          revision_id: String.t(),
          version_tag: String.t(),
          revision_create_time: Google.Protobuf.Timestamp.t() | nil,
          display_name: String.t(),
          type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType.t(),
          active: boolean,
          phrase_match_rule_groups: [
            Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.t()
          ],
          activation_update_time: Google.Protobuf.Timestamp.t() | nil,
          role_match: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :revision_id,
    :version_tag,
    :revision_create_time,
    :display_name,
    :type,
    :active,
    :phrase_match_rule_groups,
    :activation_update_time,
    :role_match,
    :update_time
  ]

  field :name, 1, type: :string
  field :revision_id, 2, type: :string
  field :version_tag, 3, type: :string
  field :revision_create_time, 4, type: Google.Protobuf.Timestamp
  field :display_name, 5, type: :string

  field :type, 6,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType,
    enum: true

  field :active, 7, type: :bool

  field :phrase_match_rule_groups, 8,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup

  field :activation_update_time, 9, type: Google.Protobuf.Timestamp

  field :role_match, 10,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    enum: true

  field :update_time, 11, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType.t(),
          phrase_match_rules: [Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule.t()]
        }

  defstruct [:type, :phrase_match_rules]

  field :type, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType,
    enum: true

  field :phrase_match_rules, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          negated: boolean,
          config: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig.t() | nil
        }

  defstruct [:query, :negated, :config]

  field :query, 1, type: :string
  field :negated, 2, type: :bool
  field :config, 3, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {atom, any}
        }

  defstruct [:config]

  oneof :config, 0

  field :exact_match_config, 1,
    type: Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig,
    oneof: 0
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          case_sensitive: boolean
        }

  defstruct [:case_sensitive]

  field :case_sensitive, 1, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runtime_integration_analysis_percentage: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:runtime_integration_analysis_percentage]

  field :runtime_integration_analysis_percentage, 1, type: :double
end

defmodule Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          language_code: String.t(),
          conversation_ttl: Google.Protobuf.Duration.t() | nil,
          pubsub_notification_settings: %{String.t() => String.t()},
          analysis_config: Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig.t() | nil
        }

  defstruct [
    :name,
    :create_time,
    :update_time,
    :language_code,
    :conversation_ttl,
    :pubsub_notification_settings,
    :analysis_config
  ]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :language_code, 4, type: :string
  field :conversation_ttl, 5, type: Google.Protobuf.Duration

  field :pubsub_notification_settings, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry,
    map: true

  field :analysis_config, 7, type: Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig
end

defmodule Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {atom, any},
          annotation_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_boundary: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          end_boundary: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary.t() | nil,
          answer_feedback: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.t() | nil
        }

  defstruct [
    :data,
    :annotation_id,
    :create_time,
    :start_boundary,
    :end_boundary,
    :answer_feedback
  ]

  oneof :data, 0

  field :article_suggestion, 6,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData,
    oneof: 0

  field :faq_answer, 7, type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData, oneof: 0
  field :smart_reply, 8, type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData, oneof: 0

  field :smart_compose_suggestion, 9,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData,
    oneof: 0

  field :dialogflow_interaction, 10,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData,
    oneof: 0

  field :annotation_id, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :start_boundary, 3, type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary
  field :end_boundary, 4, type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary
  field :answer_feedback, 5, type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          correctness_level:
            Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel.t(),
          clicked: boolean,
          displayed: boolean
        }

  defstruct [:correctness_level, :clicked, :displayed]

  field :correctness_level, 1,
    type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel,
    enum: true

  field :clicked, 2, type: :bool
  field :displayed, 3, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          uri: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t(),
          source: String.t()
        }

  defstruct [:title, :uri, :confidence_score, :metadata, :query_record, :source]

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :confidence_score, 3, type: :float

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string
  field :source, 6, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          answer: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          question: String.t(),
          metadata: %{String.t() => String.t()},
          query_record: String.t(),
          source: String.t()
        }

  defstruct [:answer, :confidence_score, :question, :metadata, :query_record, :source]

  field :answer, 1, type: :string
  field :confidence_score, 2, type: :float
  field :question, 3, type: :string

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string
  field :source, 6, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reply: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t()
        }

  defstruct [:reply, :confidence_score, :metadata, :query_record]

  field :reply, 1, type: :string
  field :confidence_score, 2, type: :double

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry do
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

defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: String.t(),
          confidence_score: float | :infinity | :negative_infinity | :nan,
          metadata: %{String.t() => String.t()},
          query_record: String.t()
        }

  defstruct [:suggestion, :confidence_score, :metadata, :query_record]

  field :suggestion, 1, type: :string
  field :confidence_score, 2, type: :double

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dialogflow_intent_id: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:dialogflow_intent_id, :confidence]

  field :dialogflow_intent_id, 1, type: :string
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          participant: {atom, any},
          dialogflow_participant: String.t(),
          role: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role.t()
        }

  defstruct [:participant, :dialogflow_participant, :role]

  oneof :participant, 0
  field :dialogflow_participant_name, 5, type: :string, oneof: 0
  field :user_id, 6, type: :string, oneof: 0
  field :dialogflow_participant, 1, type: :string, deprecated: true

  field :role, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    enum: true
end
