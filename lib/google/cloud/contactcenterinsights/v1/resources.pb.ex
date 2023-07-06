defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Medium do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MEDIUM_UNSPECIFIED, 0
  field :PHONE_CALL, 1
  field :CHAT, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.Entity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MENTION_TYPE_UNSPECIFIED, 0
  field :PROPER, 1
  field :COMMON, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNDEPLOYED, 1
  field :DEPLOYING, 2
  field :DEPLOYED, 3
  field :UNDEPLOYING, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :TYPE_V1, 1
  field :TYPE_V2, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PHRASE_MATCHER_TYPE_UNSPECIFIED, 0
  field :ALL_OF, 1
  field :ANY_OF, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PHRASE_MATCH_RULE_GROUP_TYPE_UNSPECIFIED, 0
  field :ALL_OF, 1
  field :ANY_OF, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CORRECTNESS_LEVEL_UNSPECIFIED, 0
  field :NOT_CORRECT, 1
  field :PARTIALLY_CORRECT, 2
  field :FULLY_CORRECT, 3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :HUMAN_AGENT, 1
  field :AUTOMATED_AGENT, 2
  field :END_USER, 3
  field :ANY_AGENT, 4
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector.SummarizationConfig.SummarizationModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SUMMARIZATION_MODEL_UNSPECIFIED, 0
  field :BASELINE_MODEL, 1
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_channel, 1, type: :int32, json_name: "customerChannel"
  field :agent_channel, 2, type: :int32, json_name: "agentChannel"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :word, 3, type: :string
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :smart_reply_allowlist_covered, 1, type: :bool, json_name: "smartReplyAllowlistCovered"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :message_time, 6, type: Google.Protobuf.Timestamp, json_name: "messageTime"
  field :text, 1, type: :string
  field :confidence, 2, type: :float

  field :words, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.WordInfo

  field :language_code, 4, type: :string, json_name: "languageCode"
  field :channel_tag, 5, type: :int32, json_name: "channelTag"

  field :segment_participant, 9,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant,
    json_name: "segmentParticipant"

  field :dialogflow_segment_metadata, 10,
    type:
      Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment.DialogflowSegmentMetadata,
    json_name: "dialogflowSegmentMetadata"

  field :sentiment, 11, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transcript_segments, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript.TranscriptSegment,
    json_name: "transcriptSegments"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.DialogflowIntent
end

defmodule Google.Cloud.Contactcenterinsights.V1.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :metadata, 0

  oneof :expiration, 1

  field :call_metadata, 7,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.CallMetadata,
    json_name: "callMetadata",
    oneof: 0

  field :expire_time, 15, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 1
  field :ttl, 16, type: Google.Protobuf.Duration, oneof: 1, deprecated: false
  field :name, 1, type: :string, deprecated: false

  field :data_source, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationDataSource,
    json_name: "dataSource"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :start_time, 17, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :language_code, 14, type: :string, json_name: "languageCode"
  field :agent_id, 5, type: :string, json_name: "agentId"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.LabelsEntry,
    map: true

  field :transcript, 8,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Transcript,
    deprecated: false

  field :medium, 9,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: false

  field :duration, 10, type: Google.Protobuf.Duration, deprecated: false
  field :turn_count, 11, type: :int32, json_name: "turnCount", deprecated: false

  field :latest_analysis, 12,
    type: Google.Cloud.Contactcenterinsights.V1.Analysis,
    json_name: "latestAnalysis",
    deprecated: false

  field :latest_summary, 20,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData,
    json_name: "latestSummary",
    deprecated: false

  field :runtime_annotations, 13,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation,
    json_name: "runtimeAnnotations",
    deprecated: false

  field :dialogflow_intents, 18,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.DialogflowIntentsEntry,
    json_name: "dialogflowIntents",
    map: true,
    deprecated: false

  field :obfuscated_user_id, 21, type: :string, json_name: "obfuscatedUserId"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Analysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :request_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "requestTime",
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :analysis_result, 7,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult,
    json_name: "analysisResult",
    deprecated: false

  field :annotator_selector, 8,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector,
    json_name: "annotatorSelector"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Contactcenterinsights.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :dialogflow_source, 3,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowSource,
    json_name: "dialogflowSource",
    oneof: 0
end

defmodule Google.Cloud.Contactcenterinsights.V1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audio_uri, 1, type: :string, json_name: "audioUri"
  field :transcript_uri, 2, type: :string, json_name: "transcriptUri", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dialogflow_conversation, 1,
    type: :string,
    json_name: "dialogflowConversation",
    deprecated: false

  field :audio_uri, 3, type: :string, json_name: "audioUri"
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.EntitiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Entity
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.IntentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.Intent
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata.PhraseMatchersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    json_name: "phraseMatchers",
    map: true

  field :issue_model_result, 8,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelResult,
    json_name: "issueModelResult"
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnalysisResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :metadata, 0

  field :call_analysis_metadata, 2,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisResult.CallAnalysisMetadata,
    json_name: "callAnalysisMetadata",
    oneof: 0

  field :end_time, 1, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_model, 1, type: :string, json_name: "issueModel", deprecated: false
  field :issues, 2, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.IssueAssignment
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationLevelSentiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :channel_tag, 1, type: :int32, json_name: "channelTag"

  field :sentiment_data, 2,
    type: Google.Cloud.Contactcenterinsights.V1.SentimentData,
    json_name: "sentimentData"
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueAssignment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue, 1, type: :string
  field :score, 2, type: :double
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CallAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

  field :interruption_data, 10,
    type: Google.Cloud.Contactcenterinsights.V1.InterruptionData,
    json_name: "interruptionData",
    oneof: 0

  field :sentiment_data, 11,
    type: Google.Cloud.Contactcenterinsights.V1.SentimentData,
    json_name: "sentimentData",
    oneof: 0

  field :silence_data, 12,
    type: Google.Cloud.Contactcenterinsights.V1.SilenceData,
    json_name: "silenceData",
    oneof: 0

  field :hold_data, 13,
    type: Google.Cloud.Contactcenterinsights.V1.HoldData,
    json_name: "holdData",
    oneof: 0

  field :entity_mention_data, 15,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData,
    json_name: "entityMentionData",
    oneof: 0

  field :intent_match_data, 16,
    type: Google.Cloud.Contactcenterinsights.V1.IntentMatchData,
    json_name: "intentMatchData",
    oneof: 0

  field :phrase_match_data, 17,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchData,
    json_name: "phraseMatchData",
    oneof: 0

  field :issue_match_data, 18,
    type: Google.Cloud.Contactcenterinsights.V1.IssueMatchData,
    json_name: "issueMatchData",
    oneof: 0

  field :channel_tag, 1, type: :int32, json_name: "channelTag"

  field :annotation_start_boundary, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "annotationStartBoundary"

  field :annotation_end_boundary, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "annotationEndBoundary"
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :detailed_boundary, 0

  field :word_index, 3, type: :int32, json_name: "wordIndex", oneof: 0
  field :transcript_index, 1, type: :int32, json_name: "transcriptIndex"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Entity.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_matcher, 1, type: :string, json_name: "phraseMatcher"
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowIntent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Contactcenterinsights.V1.InterruptionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.SilenceData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.HoldData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.EntityMentionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entity_unique_id, 1, type: :string, json_name: "entityUniqueId"

  field :type, 2,
    type: Google.Cloud.Contactcenterinsights.V1.EntityMentionData.MentionType,
    enum: true

  field :sentiment, 3, type: Google.Cloud.Contactcenterinsights.V1.SentimentData
end

defmodule Google.Cloud.Contactcenterinsights.V1.IntentMatchData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :intent_unique_id, 1, type: :string, json_name: "intentUniqueId"
end

defmodule Google.Cloud.Contactcenterinsights.V1.SentimentData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :magnitude, 1, type: :float
  field :score, 2, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueMatchData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_assignment, 1,
    type: Google.Cloud.Contactcenterinsights.V1.IssueAssignment,
    json_name: "issueAssignment"
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :medium, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: true

  field :training_conversations_count, 2,
    type: :int64,
    json_name: "trainingConversationsCount",
    deprecated: false

  field :filter, 3, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :issue_count, 8, type: :int64, json_name: "issueCount", deprecated: false

  field :state, 5,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.State,
    enum: true,
    deprecated: false

  field :input_data_config, 6,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.InputDataConfig,
    json_name: "inputDataConfig"

  field :training_stats, 7,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats,
    json_name: "trainingStats",
    deprecated: false

  field :model_type, 9,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel.ModelType,
    json_name: "modelType",
    enum: true

  field :language_code, 10, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Issue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :sample_utterances, 6,
    repeated: true,
    type: :string,
    json_name: "sampleUtterances",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue, 1, type: :string
  field :labeled_conversations_count, 2, type: :int64, json_name: "labeledConversationsCount"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats
end

defmodule Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :analyzed_conversations_count, 1, type: :int64, json_name: "analyzedConversationsCount"

  field :unclassified_conversations_count, 2,
    type: :int64,
    json_name: "unclassifiedConversationsCount"

  field :issue_stats, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStatsEntry,
    json_name: "issueStats",
    map: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
  field :version_tag, 3, type: :string, json_name: "versionTag"

  field :revision_create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName"

  field :type, 6,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.PhraseMatcherType,
    enum: true,
    deprecated: false

  field :active, 7, type: :bool

  field :phrase_match_rule_groups, 8,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup,
    json_name: "phraseMatchRuleGroups"

  field :activation_update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "activationUpdateTime",
    deprecated: false

  field :role_match, 10,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    json_name: "roleMatch",
    enum: true

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleGroup.PhraseMatchRuleGroupType,
    enum: true,
    deprecated: false

  field :phrase_match_rules, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule,
    json_name: "phraseMatchRules"
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :negated, 2, type: :bool
  field :config, 3, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig
end

defmodule Google.Cloud.Contactcenterinsights.V1.PhraseMatchRuleConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  field :exact_match_config, 1,
    type: Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig,
    json_name: "exactMatchConfig",
    oneof: 0
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExactMatchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :case_sensitive, 1, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :runtime_integration_analysis_percentage, 1,
    type: :double,
    json_name: "runtimeIntegrationAnalysisPercentage"

  field :upload_conversation_analysis_percentage, 6,
    type: :double,
    json_name: "uploadConversationAnalysisPercentage"

  field :annotator_selector, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector,
    json_name: "annotatorSelector"
end

defmodule Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :language_code, 4, type: :string, json_name: "languageCode"
  field :conversation_ttl, 5, type: Google.Protobuf.Duration, json_name: "conversationTtl"

  field :pubsub_notification_settings, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Settings.PubsubNotificationSettingsEntry,
    json_name: "pubsubNotificationSettings",
    map: true

  field :analysis_config, 7,
    type: Google.Cloud.Contactcenterinsights.V1.Settings.AnalysisConfig,
    json_name: "analysisConfig"

  field :redaction_config, 10,
    type: Google.Cloud.Contactcenterinsights.V1.RedactionConfig,
    json_name: "redactionConfig"
end

defmodule Google.Cloud.Contactcenterinsights.V1.RedactionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :deidentify_template, 1, type: :string, json_name: "deidentifyTemplate"
  field :inspect_template, 2, type: :string, json_name: "inspectTemplate"
end

defmodule Google.Cloud.Contactcenterinsights.V1.RuntimeAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

  field :article_suggestion, 6,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData,
    json_name: "articleSuggestion",
    oneof: 0

  field :faq_answer, 7,
    type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData,
    json_name: "faqAnswer",
    oneof: 0

  field :smart_reply, 8,
    type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData,
    json_name: "smartReply",
    oneof: 0

  field :smart_compose_suggestion, 9,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData,
    json_name: "smartComposeSuggestion",
    oneof: 0

  field :dialogflow_interaction, 10,
    type: Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData,
    json_name: "dialogflowInteraction",
    oneof: 0

  field :conversation_summarization_suggestion, 12,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData,
    json_name: "conversationSummarizationSuggestion",
    oneof: 0

  field :annotation_id, 1, type: :string, json_name: "annotationId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :start_boundary, 3,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "startBoundary"

  field :end_boundary, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotationBoundary,
    json_name: "endBoundary"

  field :answer_feedback, 5,
    type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback,
    json_name: "answerFeedback"
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnswerFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :correctness_level, 1,
    type: Google.Cloud.Contactcenterinsights.V1.AnswerFeedback.CorrectnessLevel,
    json_name: "correctnessLevel",
    enum: true

  field :clicked, 2, type: :bool
  field :displayed, 3, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string
  field :uri, 2, type: :string
  field :confidence_score, 3, type: :float, json_name: "confidenceScore"

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.ArticleSuggestionData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string, json_name: "queryRecord"
  field :source, 6, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.FaqAnswerData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :answer, 1, type: :string
  field :confidence_score, 2, type: :float, json_name: "confidenceScore"
  field :question, 3, type: :string

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.FaqAnswerData.MetadataEntry,
    map: true

  field :query_record, 5, type: :string, json_name: "queryRecord"
  field :source, 6, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartReplyData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply, 1, type: :string
  field :confidence_score, 2, type: :double, json_name: "confidenceScore"

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartReplyData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string, json_name: "queryRecord"
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suggestion, 1, type: :string
  field :confidence_score, 2, type: :double, json_name: "confidenceScore"

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.SmartComposeSuggestionData.MetadataEntry,
    map: true

  field :query_record, 4, type: :string, json_name: "queryRecord"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DialogflowInteractionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dialogflow_intent_id, 1, type: :string, json_name: "dialogflowIntentId"
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData.TextSectionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string

  field :text_sections, 5,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData.TextSectionsEntry,
    json_name: "textSections",
    map: true

  field :confidence, 2, type: :float

  field :metadata, 3,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.ConversationSummarizationSuggestionData.MetadataEntry,
    map: true

  field :answer_record, 4, type: :string, json_name: "answerRecord"
  field :conversation_model, 6, type: :string, json_name: "conversationModel"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ConversationParticipant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :participant, 0

  field :dialogflow_participant_name, 5,
    type: :string,
    json_name: "dialogflowParticipantName",
    oneof: 0,
    deprecated: false

  field :user_id, 6, type: :string, json_name: "userId", oneof: 0

  field :dialogflow_participant, 1,
    type: :string,
    json_name: "dialogflowParticipant",
    deprecated: true

  field :obfuscated_external_user_id, 3, type: :string, json_name: "obfuscatedExternalUserId"

  field :role, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ConversationParticipant.Role,
    enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.View do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :value, 5, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector.SummarizationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :model_source, 0

  field :conversation_profile, 1,
    type: :string,
    json_name: "conversationProfile",
    oneof: 0,
    deprecated: false

  field :summarization_model, 2,
    type:
      Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector.SummarizationConfig.SummarizationModel,
    json_name: "summarizationModel",
    enum: true,
    oneof: 0
end

defmodule Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :run_interruption_annotator, 1, type: :bool, json_name: "runInterruptionAnnotator"
  field :run_silence_annotator, 2, type: :bool, json_name: "runSilenceAnnotator"
  field :run_phrase_matcher_annotator, 3, type: :bool, json_name: "runPhraseMatcherAnnotator"

  field :phrase_matchers, 4,
    repeated: true,
    type: :string,
    json_name: "phraseMatchers",
    deprecated: false

  field :run_sentiment_annotator, 5, type: :bool, json_name: "runSentimentAnnotator"
  field :run_entity_annotator, 6, type: :bool, json_name: "runEntityAnnotator"
  field :run_intent_annotator, 7, type: :bool, json_name: "runIntentAnnotator"
  field :run_issue_model_annotator, 8, type: :bool, json_name: "runIssueModelAnnotator"

  field :issue_models, 10,
    repeated: true,
    type: :string,
    json_name: "issueModels",
    deprecated: false

  field :run_summarization_annotator, 9, type: :bool, json_name: "runSummarizationAnnotator"

  field :summarization_config, 11,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector.SummarizationConfig,
    json_name: "summarizationConfig"
end