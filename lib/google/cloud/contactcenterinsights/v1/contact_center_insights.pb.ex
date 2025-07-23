defmodule Google.Cloud.Contactcenterinsights.V1.ConversationView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONVERSATION_VIEW_UNSPECIFIED, 0
  field :FULL, 2
  field :BASIC, 1
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource.BucketObjectType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BUCKET_OBJECT_TYPE_UNSPECIFIED, 0
  field :TRANSCRIPT, 1
  field :AUDIO, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_TRUNCATE, 1
  field :WRITE_APPEND, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension.DimensionKey do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIMENSION_KEY_UNSPECIFIED, 0
  field :ISSUE, 1
  field :AGENT, 2
  field :AGENT_TEAM, 3
  field :QA_QUESTION_ID, 4
  field :QA_QUESTION_ANSWER_VALUE, 5
  field :CONVERSATION_PROFILE_ID, 6
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsRequest.TimeGranularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIME_GRANULARITY_UNSPECIFIED, 0
  field :NONE, 1
  field :DAILY, 2
  field :HOURLY, 3
  field :PER_MINUTE, 4
  field :PER_5_MINUTES, 5
  field :MONTHLY, 6
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest.GcsSource.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :CSV, 1
  field :JSON, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.FeedbackLabelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FEEDBACK_LABEL_TYPE_UNSPECIFIED, 0
  field :QUALITY_AI, 1
  field :TOPIC_MODELING, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.GcsDestination.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :CSV, 1
  field :JSON, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :conversation_count, 2, type: :int32, json_name: "conversationCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :interval_duration, 1, type: Google.Protobuf.Duration, json_name: "intervalDuration"

  field :points, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.SmartHighlighterMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.CustomHighlighterMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesStatsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :average_duration, 1, type: Google.Protobuf.Duration, json_name: "averageDuration"
  field :average_turn_count, 2, type: :int32, json_name: "averageTurnCount"
  field :conversation_count, 3, type: :int32, json_name: "conversationCount"

  field :smart_highlighter_matches, 4,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.SmartHighlighterMatchesEntry,
    json_name: "smartHighlighterMatches",
    map: true

  field :custom_highlighter_matches, 5,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.CustomHighlighterMatchesEntry,
    json_name: "customHighlighterMatches",
    map: true

  field :issue_matches, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesEntry,
    json_name: "issueMatches",
    map: true,
    deprecated: true

  field :issue_matches_stats, 8,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesStatsEntry,
    json_name: "issueMatchesStats",
    map: true

  field :conversation_count_time_series, 7,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries,
    json_name: "conversationCountTimeSeries"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :conversation, 3, type: :string, deprecated: false

  field :annotator_selector, 4,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector,
    json_name: "annotatorSelector",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation, 2,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation,
    deprecated: false

  field :conversation_id, 3, type: :string, json_name: "conversationId"
end

defmodule Google.Cloud.Contactcenterinsights.V1.UploadConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation, 2,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation,
    deprecated: false

  field :conversation_id, 3, type: :string, json_name: "conversationId", deprecated: false

  field :redaction_config, 4,
    type: Google.Cloud.Contactcenterinsights.V1.RedactionConfig,
    json_name: "redactionConfig",
    deprecated: false

  field :speech_config, 11,
    type: Google.Cloud.Contactcenterinsights.V1.SpeechConfig,
    json_name: "speechConfig",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UploadConversationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.UploadConversationRequest,
    deprecated: false

  field :analysis_operation, 4, type: :string, json_name: "analysisOperation", deprecated: false

  field :applied_redaction_config, 5,
    type: Google.Cloud.Contactcenterinsights.V1.RedactionConfig,
    json_name: "appliedRedactionConfig",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 7, type: :string, json_name: "orderBy", deprecated: false
  field :view, 5, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversations, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversation, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation,
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_uri, 1, type: :string, json_name: "bucketUri", deprecated: false

  field :bucket_object_type, 2,
    type:
      Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource.BucketObjectType,
    json_name: "bucketObjectType",
    enum: true,
    deprecated: false

  field :metadata_bucket_uri, 3,
    proto3_optional: true,
    type: :string,
    json_name: "metadataBucketUri",
    deprecated: false

  field :custom_metadata_keys, 12,
    repeated: true,
    type: :string,
    json_name: "customMetadataKeys",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.TranscriptObjectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :medium, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.ConversationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :agent_id, 1, type: :string, json_name: "agentId", deprecated: false
  field :agent_channel, 2, type: :int32, json_name: "agentChannel", deprecated: false
  field :customer_channel, 3, type: :int32, json_name: "customerChannel", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  oneof :object_config, 1

  field :gcs_source, 2,
    type: Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :transcript_object_config, 3,
    type: Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.TranscriptObjectConfig,
    json_name: "transcriptObjectConfig",
    oneof: 1

  field :parent, 1, type: :string, deprecated: false

  field :conversation_config, 4,
    type: Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.ConversationConfig,
    json_name: "conversationConfig"

  field :redaction_config, 5,
    type: Google.Cloud.Contactcenterinsights.V1.RedactionConfig,
    json_name: "redactionConfig",
    deprecated: false

  field :speech_config, 6,
    type: Google.Cloud.Contactcenterinsights.V1.SpeechConfig,
    json_name: "speechConfig",
    deprecated: false

  field :sample_size, 7,
    proto3_optional: true,
    type: :int32,
    json_name: "sampleSize",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsMetadata.IngestConversationsStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processed_object_count, 1,
    type: :int32,
    json_name: "processedObjectCount",
    deprecated: false

  field :duplicates_skipped_count, 2,
    type: :int32,
    json_name: "duplicatesSkippedCount",
    deprecated: false

  field :successful_ingest_count, 3,
    type: :int32,
    json_name: "successfulIngestCount",
    deprecated: false

  field :failed_ingest_count, 4, type: :int32, json_name: "failedIngestCount", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest,
    deprecated: false

  field :partial_errors, 4,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialErrors",
    deprecated: false

  field :ingest_conversations_stats, 5,
    type:
      Google.Cloud.Contactcenterinsights.V1.IngestConversationsMetadata.IngestConversationsStats,
    json_name: "ingestConversationsStats",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :analysis, 2, type: Google.Cloud.Contactcenterinsights.V1.Analysis, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :analyses, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Analysis
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :analysis_percentage, 3, type: :float, json_name: "analysisPercentage", deprecated: false

  field :annotator_selector, 8,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector,
    json_name: "annotatorSelector"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsRequest
  field :completed_analyses_count, 4, type: :int32, json_name: "completedAnalysesCount"
  field :failed_analyses_count, 5, type: :int32, json_name: "failedAnalysesCount"
  field :total_requested_analyses_count, 6, type: :int32, json_name: "totalRequestedAnalysesCount"

  field :partial_errors, 7,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialErrors",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :successful_analysis_count, 1, type: :int32, json_name: "successfulAnalysisCount"
  field :failed_analysis_count, 2, type: :int32, json_name: "failedAnalysisCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :max_delete_count, 3, type: :int32, json_name: "maxDeleteCount"
  field :force, 4, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsRequest
  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 3, type: :string, json_name: "projectId"
  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :big_query_destination, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination,
    json_name: "bigQueryDestination",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 3, type: :string
  field :kms_key, 4, type: :string, json_name: "kmsKey"

  field :write_disposition, 5,
    type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition,
    json_name: "writeDisposition",
    enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest
  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :issue_model, 2,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_model, 1,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_models, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModels"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportIssueModelRequest.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object_uri, 1, type: :string, json_name: "objectUri", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :Destination, 0

  field :gcs_destination, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ExportIssueModelRequest.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.ExportIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.ImportIssueModelRequest.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :object_uri, 1, type: :string, json_name: "objectUri", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ImportIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :Source, 0

  field :gcs_source, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ImportIssueModelRequest.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :create_new_model, 3, type: :bool, json_name: "createNewModel", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ImportIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ImportIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.ImportIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issues, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Issue
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue, 1, type: Google.Cloud.Contactcenterinsights.V1.Issue, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_model, 1, type: :string, json_name: "issueModel", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :current_stats, 4,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats,
    json_name: "currentStats"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreatePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :phrase_matcher, 2,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :phrase_matchers, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatchers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetPhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeletePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdatePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :phrase_matcher, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :settings, 1, type: Google.Cloud.Contactcenterinsights.V1.Settings, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :analysis_rule, 2,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisRule,
    json_name: "analysisRule",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetAnalysisRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateAnalysisRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :analysis_rule, 1,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisRule,
    json_name: "analysisRule",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysisRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysisRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :analysis_rules, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.AnalysisRule,
    json_name: "analysisRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetEncryptionSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.InitializeEncryptionSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encryption_spec, 1,
    type: Google.Cloud.Contactcenterinsights.V1.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.InitializeEncryptionSpecResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.InitializeEncryptionSpecMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.InitializeEncryptionSpecRequest,
    deprecated: false

  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Contactcenterinsights.V1.View, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :views, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.View
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :view, 1, type: Google.Cloud.Contactcenterinsights.V1.View, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension.IssueDimensionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_id, 1, type: :string, json_name: "issueId", deprecated: false
  field :issue_display_name, 2, type: :string, json_name: "issueDisplayName"
  field :issue_model_id, 3, type: :string, json_name: "issueModelId", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension.AgentDimensionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :agent_id, 1, type: :string, json_name: "agentId", deprecated: false
  field :agent_display_name, 2, type: :string, json_name: "agentDisplayName", deprecated: false
  field :agent_team, 3, type: :string, json_name: "agentTeam", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension.QaQuestionDimensionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_scorecard_id, 1, type: :string, json_name: "qaScorecardId", deprecated: false
  field :qa_question_id, 2, type: :string, json_name: "qaQuestionId", deprecated: false
  field :question_body, 3, type: :string, json_name: "questionBody", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension.QaQuestionAnswerDimensionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_scorecard_id, 1, type: :string, json_name: "qaScorecardId", deprecated: false
  field :qa_question_id, 2, type: :string, json_name: "qaQuestionId", deprecated: false
  field :question_body, 3, type: :string, json_name: "questionBody", deprecated: false
  field :answer_value, 4, type: :string, json_name: "answerValue", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.Dimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dimension_metadata, 0

  field :issue_dimension_metadata, 2,
    type: Google.Cloud.Contactcenterinsights.V1.Dimension.IssueDimensionMetadata,
    json_name: "issueDimensionMetadata",
    oneof: 0,
    deprecated: false

  field :agent_dimension_metadata, 3,
    type: Google.Cloud.Contactcenterinsights.V1.Dimension.AgentDimensionMetadata,
    json_name: "agentDimensionMetadata",
    oneof: 0,
    deprecated: false

  field :qa_question_dimension_metadata, 4,
    type: Google.Cloud.Contactcenterinsights.V1.Dimension.QaQuestionDimensionMetadata,
    json_name: "qaQuestionDimensionMetadata",
    oneof: 0,
    deprecated: false

  field :qa_question_answer_dimension_metadata, 5,
    type: Google.Cloud.Contactcenterinsights.V1.Dimension.QaQuestionAnswerDimensionMetadata,
    json_name: "qaQuestionAnswerDimensionMetadata",
    oneof: 0,
    deprecated: false

  field :dimension_key, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Dimension.DimensionKey,
    json_name: "dimensionKey",
    enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false

  field :time_granularity, 3,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsRequest.TimeGranularity,
    json_name: "timeGranularity",
    enum: true

  field :dimensions, 4, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Dimension
  field :measure_mask, 5, type: Google.Protobuf.FieldMask, json_name: "measureMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint.ConversationMeasure.QaTagScore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag, 1, type: :string
  field :average_tag_normalized_score, 2, type: :double, json_name: "averageTagNormalizedScore"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint.ConversationMeasure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversation_count, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "conversationCount"

  field :average_silence_percentage, 2,
    proto3_optional: true,
    type: :float,
    json_name: "averageSilencePercentage"

  field :average_duration, 3,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "averageDuration"

  field :average_turn_count, 4, proto3_optional: true, type: :float, json_name: "averageTurnCount"

  field :average_agent_sentiment_score, 5,
    proto3_optional: true,
    type: :float,
    json_name: "averageAgentSentimentScore"

  field :average_client_sentiment_score, 6,
    proto3_optional: true,
    type: :float,
    json_name: "averageClientSentimentScore"

  field :average_customer_satisfaction_rating, 8,
    proto3_optional: true,
    type: :double,
    json_name: "averageCustomerSatisfactionRating"

  field :average_qa_normalized_score, 7,
    proto3_optional: true,
    type: :double,
    json_name: "averageQaNormalizedScore"

  field :qa_tag_scores, 9,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint.ConversationMeasure.QaTagScore,
    json_name: "qaTagScores"

  field :average_qa_question_normalized_score, 10,
    proto3_optional: true,
    type: :double,
    json_name: "averageQaQuestionNormalizedScore"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :measure, 0

  field :conversation_measure, 2,
    type:
      Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint.ConversationMeasure,
    json_name: "conversationMeasure",
    oneof: 0

  field :interval, 1, type: Google.Type.Interval
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_points, 4,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint,
    json_name: "dataPoints"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimensions, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Dimension

  field :total, 2,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.DataPoint

  field :time_series, 3,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice.TimeSeries,
    json_name: "timeSeries"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :slices, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice

  field :macro_average_slice, 4,
    proto3_optional: true,
    type: Google.Cloud.Contactcenterinsights.V1.QueryMetricsResponse.Slice,
    json_name: "macroAverageSlice"
end

defmodule Google.Cloud.Contactcenterinsights.V1.QueryMetricsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateQaQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :qa_question, 2,
    type: Google.Cloud.Contactcenterinsights.V1.QaQuestion,
    json_name: "qaQuestion",
    deprecated: false

  field :qa_question_id, 3, type: :string, json_name: "qaQuestionId", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetQaQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaQuestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaQuestionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_questions, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.QaQuestion,
    json_name: "qaQuestions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateQaQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_question, 1,
    type: Google.Cloud.Contactcenterinsights.V1.QaQuestion,
    json_name: "qaQuestion",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteQaQuestionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateQaScorecardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :qa_scorecard, 2,
    type: Google.Cloud.Contactcenterinsights.V1.QaScorecard,
    json_name: "qaScorecard",
    deprecated: false

  field :qa_scorecard_id, 3, type: :string, json_name: "qaScorecardId", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetQaScorecardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateQaScorecardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_scorecard, 1,
    type: Google.Cloud.Contactcenterinsights.V1.QaScorecard,
    json_name: "qaScorecard",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteQaScorecardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :qa_scorecard_revision, 2,
    type: Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision,
    json_name: "qaScorecardRevision",
    deprecated: false

  field :qa_scorecard_revision_id, 3,
    type: :string,
    json_name: "qaScorecardRevisionId",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false

  field :dataset_validation_warnings, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.DatasetValidationWarning,
    json_name: "datasetValidationWarnings",
    enum: true

  field :valid_feedback_labels_count, 3, type: :int32, json_name: "validFeedbackLabelsCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetTuningMetrics.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accuracy, 1, type: :double
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetTuningMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false

  field :metrics, 2,
    type:
      Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetTuningMetrics.Metrics,
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionRequest,
    deprecated: false

  field :qa_question_dataset_validation_results, 4,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetValidationResult,
    json_name: "qaQuestionDatasetValidationResults",
    deprecated: false

  field :qa_question_dataset_tuning_metrics, 5,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionMetadata.QaQuestionDatasetTuningMetrics,
    json_name: "qaQuestionDatasetTuningMetrics",
    deprecated: false

  field :tuning_completion_ratio, 6,
    type: :double,
    json_name: "tuningCompletionRatio",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteQaScorecardRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaScorecardsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaScorecardsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_scorecards, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.QaScorecard,
    json_name: "qaScorecards"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaScorecardRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListQaScorecardRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :qa_scorecard_revisions, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision,
    json_name: "qaScorecardRevisions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateFeedbackLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :feedback_label_id, 2, type: :string, json_name: "feedbackLabelId", deprecated: false

  field :feedback_label, 3,
    type: Google.Cloud.Contactcenterinsights.V1.FeedbackLabel,
    json_name: "feedbackLabel",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListFeedbackLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListFeedbackLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feedback_labels, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.FeedbackLabel,
    json_name: "feedbackLabels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetFeedbackLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateFeedbackLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feedback_label, 1,
    type: Google.Cloud.Contactcenterinsights.V1.FeedbackLabel,
    json_name: "feedbackLabel",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteFeedbackLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAllFeedbackLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAllFeedbackLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feedback_labels, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.FeedbackLabel,
    json_name: "feedbackLabels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :format, 1,
    type: Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest.GcsSource.Format,
    enum: true,
    deprecated: false

  field :object_uri, 2, type: :string, json_name: "objectUri", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 2,
    type: Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsMetadata.UploadStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processed_object_count, 1, type: :int32, json_name: "processedObjectCount"
  field :failed_validation_count, 2, type: :int32, json_name: "failedValidationCount"
  field :successful_upload_count, 3, type: :int32, json_name: "successfulUploadCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest,
    deprecated: false

  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"

  field :upload_stats, 5,
    type: Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsMetadata.UploadStats,
    json_name: "uploadStats",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :format, 1,
    type:
      Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.GcsDestination.Format,
    enum: true,
    deprecated: false

  field :object_uri, 2, type: :string, json_name: "objectUri", deprecated: false
  field :add_whitespace, 3, type: :bool, json_name: "addWhitespace", deprecated: false

  field :always_print_empty_fields, 4,
    type: :bool,
    json_name: "alwaysPrintEmptyFields",
    deprecated: false

  field :records_per_file_count, 5,
    type: :int64,
    json_name: "recordsPerFileCount",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 3,
    type: Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :max_download_count, 4, type: :int32, json_name: "maxDownloadCount", deprecated: false

  field :feedback_label_type, 5,
    type:
      Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest.FeedbackLabelType,
    json_name: "feedbackLabelType",
    enum: true,
    deprecated: false

  field :conversation_filter, 6, type: :string, json_name: "conversationFilter", deprecated: false

  field :template_qa_scorecard_id, 7,
    repeated: true,
    type: :string,
    json_name: "templateQaScorecardId",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsMetadata.DownloadStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :processed_object_count, 1, type: :int32, json_name: "processedObjectCount"
  field :successful_download_count, 2, type: :int32, json_name: "successfulDownloadCount"
  field :total_files_written, 3, type: :int32, json_name: "totalFilesWritten"
  field :file_names, 4, repeated: true, type: :string, json_name: "fileNames", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :request, 3,
    type: Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest,
    deprecated: false

  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"

  field :download_stats, 5,
    type: Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsMetadata.DownloadStats,
    json_name: "downloadStats",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contactcenterinsights.v1.ContactCenterInsights",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateConversation,
      Google.Cloud.Contactcenterinsights.V1.CreateConversationRequest,
      Google.Cloud.Contactcenterinsights.V1.Conversation

  rpc :UploadConversation,
      Google.Cloud.Contactcenterinsights.V1.UploadConversationRequest,
      Google.Longrunning.Operation

  rpc :UpdateConversation,
      Google.Cloud.Contactcenterinsights.V1.UpdateConversationRequest,
      Google.Cloud.Contactcenterinsights.V1.Conversation

  rpc :GetConversation,
      Google.Cloud.Contactcenterinsights.V1.GetConversationRequest,
      Google.Cloud.Contactcenterinsights.V1.Conversation

  rpc :ListConversations,
      Google.Cloud.Contactcenterinsights.V1.ListConversationsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListConversationsResponse

  rpc :DeleteConversation,
      Google.Cloud.Contactcenterinsights.V1.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :CreateAnalysis,
      Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRequest,
      Google.Longrunning.Operation

  rpc :GetAnalysis,
      Google.Cloud.Contactcenterinsights.V1.GetAnalysisRequest,
      Google.Cloud.Contactcenterinsights.V1.Analysis

  rpc :ListAnalyses,
      Google.Cloud.Contactcenterinsights.V1.ListAnalysesRequest,
      Google.Cloud.Contactcenterinsights.V1.ListAnalysesResponse

  rpc :DeleteAnalysis,
      Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRequest,
      Google.Protobuf.Empty

  rpc :BulkAnalyzeConversations,
      Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsRequest,
      Google.Longrunning.Operation

  rpc :BulkDeleteConversations,
      Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsRequest,
      Google.Longrunning.Operation

  rpc :IngestConversations,
      Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest,
      Google.Longrunning.Operation

  rpc :ExportInsightsData,
      Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest,
      Google.Longrunning.Operation

  rpc :CreateIssueModel,
      Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest,
      Google.Longrunning.Operation

  rpc :UpdateIssueModel,
      Google.Cloud.Contactcenterinsights.V1.UpdateIssueModelRequest,
      Google.Cloud.Contactcenterinsights.V1.IssueModel

  rpc :GetIssueModel,
      Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest,
      Google.Cloud.Contactcenterinsights.V1.IssueModel

  rpc :ListIssueModels,
      Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse

  rpc :DeleteIssueModel,
      Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest,
      Google.Longrunning.Operation

  rpc :DeployIssueModel,
      Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest,
      Google.Longrunning.Operation

  rpc :UndeployIssueModel,
      Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest,
      Google.Longrunning.Operation

  rpc :ExportIssueModel,
      Google.Cloud.Contactcenterinsights.V1.ExportIssueModelRequest,
      Google.Longrunning.Operation

  rpc :ImportIssueModel,
      Google.Cloud.Contactcenterinsights.V1.ImportIssueModelRequest,
      Google.Longrunning.Operation

  rpc :GetIssue,
      Google.Cloud.Contactcenterinsights.V1.GetIssueRequest,
      Google.Cloud.Contactcenterinsights.V1.Issue

  rpc :ListIssues,
      Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest,
      Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse

  rpc :UpdateIssue,
      Google.Cloud.Contactcenterinsights.V1.UpdateIssueRequest,
      Google.Cloud.Contactcenterinsights.V1.Issue

  rpc :DeleteIssue,
      Google.Cloud.Contactcenterinsights.V1.DeleteIssueRequest,
      Google.Protobuf.Empty

  rpc :CalculateIssueModelStats,
      Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsRequest,
      Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsResponse

  rpc :CreatePhraseMatcher,
      Google.Cloud.Contactcenterinsights.V1.CreatePhraseMatcherRequest,
      Google.Cloud.Contactcenterinsights.V1.PhraseMatcher

  rpc :GetPhraseMatcher,
      Google.Cloud.Contactcenterinsights.V1.GetPhraseMatcherRequest,
      Google.Cloud.Contactcenterinsights.V1.PhraseMatcher

  rpc :ListPhraseMatchers,
      Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersRequest,
      Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersResponse

  rpc :DeletePhraseMatcher,
      Google.Cloud.Contactcenterinsights.V1.DeletePhraseMatcherRequest,
      Google.Protobuf.Empty

  rpc :UpdatePhraseMatcher,
      Google.Cloud.Contactcenterinsights.V1.UpdatePhraseMatcherRequest,
      Google.Cloud.Contactcenterinsights.V1.PhraseMatcher

  rpc :CalculateStats,
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsRequest,
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse

  rpc :GetSettings,
      Google.Cloud.Contactcenterinsights.V1.GetSettingsRequest,
      Google.Cloud.Contactcenterinsights.V1.Settings

  rpc :UpdateSettings,
      Google.Cloud.Contactcenterinsights.V1.UpdateSettingsRequest,
      Google.Cloud.Contactcenterinsights.V1.Settings

  rpc :CreateAnalysisRule,
      Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRuleRequest,
      Google.Cloud.Contactcenterinsights.V1.AnalysisRule

  rpc :GetAnalysisRule,
      Google.Cloud.Contactcenterinsights.V1.GetAnalysisRuleRequest,
      Google.Cloud.Contactcenterinsights.V1.AnalysisRule

  rpc :ListAnalysisRules,
      Google.Cloud.Contactcenterinsights.V1.ListAnalysisRulesRequest,
      Google.Cloud.Contactcenterinsights.V1.ListAnalysisRulesResponse

  rpc :UpdateAnalysisRule,
      Google.Cloud.Contactcenterinsights.V1.UpdateAnalysisRuleRequest,
      Google.Cloud.Contactcenterinsights.V1.AnalysisRule

  rpc :DeleteAnalysisRule,
      Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRuleRequest,
      Google.Protobuf.Empty

  rpc :GetEncryptionSpec,
      Google.Cloud.Contactcenterinsights.V1.GetEncryptionSpecRequest,
      Google.Cloud.Contactcenterinsights.V1.EncryptionSpec

  rpc :InitializeEncryptionSpec,
      Google.Cloud.Contactcenterinsights.V1.InitializeEncryptionSpecRequest,
      Google.Longrunning.Operation

  rpc :CreateView,
      Google.Cloud.Contactcenterinsights.V1.CreateViewRequest,
      Google.Cloud.Contactcenterinsights.V1.View

  rpc :GetView,
      Google.Cloud.Contactcenterinsights.V1.GetViewRequest,
      Google.Cloud.Contactcenterinsights.V1.View

  rpc :ListViews,
      Google.Cloud.Contactcenterinsights.V1.ListViewsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListViewsResponse

  rpc :UpdateView,
      Google.Cloud.Contactcenterinsights.V1.UpdateViewRequest,
      Google.Cloud.Contactcenterinsights.V1.View

  rpc :DeleteView, Google.Cloud.Contactcenterinsights.V1.DeleteViewRequest, Google.Protobuf.Empty

  rpc :QueryMetrics,
      Google.Cloud.Contactcenterinsights.V1.QueryMetricsRequest,
      Google.Longrunning.Operation

  rpc :CreateQaQuestion,
      Google.Cloud.Contactcenterinsights.V1.CreateQaQuestionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaQuestion

  rpc :GetQaQuestion,
      Google.Cloud.Contactcenterinsights.V1.GetQaQuestionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaQuestion

  rpc :UpdateQaQuestion,
      Google.Cloud.Contactcenterinsights.V1.UpdateQaQuestionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaQuestion

  rpc :DeleteQaQuestion,
      Google.Cloud.Contactcenterinsights.V1.DeleteQaQuestionRequest,
      Google.Protobuf.Empty

  rpc :ListQaQuestions,
      Google.Cloud.Contactcenterinsights.V1.ListQaQuestionsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListQaQuestionsResponse

  rpc :CreateQaScorecard,
      Google.Cloud.Contactcenterinsights.V1.CreateQaScorecardRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecard

  rpc :GetQaScorecard,
      Google.Cloud.Contactcenterinsights.V1.GetQaScorecardRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecard

  rpc :UpdateQaScorecard,
      Google.Cloud.Contactcenterinsights.V1.UpdateQaScorecardRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecard

  rpc :DeleteQaScorecard,
      Google.Cloud.Contactcenterinsights.V1.DeleteQaScorecardRequest,
      Google.Protobuf.Empty

  rpc :ListQaScorecards,
      Google.Cloud.Contactcenterinsights.V1.ListQaScorecardsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListQaScorecardsResponse

  rpc :CreateQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.CreateQaScorecardRevisionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision

  rpc :GetQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.GetQaScorecardRevisionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision

  rpc :TuneQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.TuneQaScorecardRevisionRequest,
      Google.Longrunning.Operation

  rpc :DeployQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.DeployQaScorecardRevisionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision

  rpc :UndeployQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.UndeployQaScorecardRevisionRequest,
      Google.Cloud.Contactcenterinsights.V1.QaScorecardRevision

  rpc :DeleteQaScorecardRevision,
      Google.Cloud.Contactcenterinsights.V1.DeleteQaScorecardRevisionRequest,
      Google.Protobuf.Empty

  rpc :ListQaScorecardRevisions,
      Google.Cloud.Contactcenterinsights.V1.ListQaScorecardRevisionsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListQaScorecardRevisionsResponse

  rpc :CreateFeedbackLabel,
      Google.Cloud.Contactcenterinsights.V1.CreateFeedbackLabelRequest,
      Google.Cloud.Contactcenterinsights.V1.FeedbackLabel

  rpc :ListFeedbackLabels,
      Google.Cloud.Contactcenterinsights.V1.ListFeedbackLabelsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListFeedbackLabelsResponse

  rpc :GetFeedbackLabel,
      Google.Cloud.Contactcenterinsights.V1.GetFeedbackLabelRequest,
      Google.Cloud.Contactcenterinsights.V1.FeedbackLabel

  rpc :UpdateFeedbackLabel,
      Google.Cloud.Contactcenterinsights.V1.UpdateFeedbackLabelRequest,
      Google.Cloud.Contactcenterinsights.V1.FeedbackLabel

  rpc :DeleteFeedbackLabel,
      Google.Cloud.Contactcenterinsights.V1.DeleteFeedbackLabelRequest,
      Google.Protobuf.Empty

  rpc :ListAllFeedbackLabels,
      Google.Cloud.Contactcenterinsights.V1.ListAllFeedbackLabelsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListAllFeedbackLabelsResponse

  rpc :BulkUploadFeedbackLabels,
      Google.Cloud.Contactcenterinsights.V1.BulkUploadFeedbackLabelsRequest,
      Google.Longrunning.Operation

  rpc :BulkDownloadFeedbackLabels,
      Google.Cloud.Contactcenterinsights.V1.BulkDownloadFeedbackLabelsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service
end
