defmodule Google.Cloud.Contactcenterinsights.V1.ConversationView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONVERSATION_VIEW_UNSPECIFIED, 0
  field :FULL, 2
  field :BASIC, 1
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource.BucketObjectType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BUCKET_OBJECT_TYPE_UNSPECIFIED, 0
  field :TRANSCRIPT, 1
  field :AUDIO, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_TRUNCATE, 1
  field :WRITE_APPEND, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :conversation_count, 2, type: :int32, json_name: "conversationCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :interval_duration, 1, type: Google.Protobuf.Duration, json_name: "intervalDuration"

  field :points, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.SmartHighlighterMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.CustomHighlighterMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesStatsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation, 2,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation,
    deprecated: false

  field :conversation_id, 3, type: :string, json_name: "conversationId"
end

defmodule Google.Cloud.Contactcenterinsights.V1.UploadConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :view, 5, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversations, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversation, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation,
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteConversationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket_uri, 1, type: :string, json_name: "bucketUri", deprecated: false

  field :bucket_object_type, 2,
    type:
      Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.GcsSource.BucketObjectType,
    json_name: "bucketObjectType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.TranscriptObjectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :medium, 1,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation.Medium,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest.ConversationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :agent_id, 1, type: :string, json_name: "agentId"
  field :agent_channel, 2, type: :int32, json_name: "agentChannel", deprecated: false
  field :customer_channel, 3, type: :int32, json_name: "customerChannel", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Contactcenterinsights.V1.IngestConversationsMetadata.IngestConversationsStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :analysis, 2, type: Google.Cloud.Contactcenterinsights.V1.Analysis, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :analyses, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Analysis
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :analysis_percentage, 3, type: :float, json_name: "analysisPercentage", deprecated: false

  field :annotator_selector, 8,
    type: Google.Cloud.Contactcenterinsights.V1.AnnotatorSelector,
    json_name: "annotatorSelector"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkAnalyzeConversationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :successful_analysis_count, 1, type: :int32, json_name: "successfulAnalysisCount"
  field :failed_analysis_count, 2, type: :int32, json_name: "failedAnalysisCount"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :max_delete_count, 3, type: :int32, json_name: "maxDeleteCount"
  field :force, 4, type: :bool
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsRequest
  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"
end

defmodule Google.Cloud.Contactcenterinsights.V1.BulkDeleteConversationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 3, type: :string, json_name: "projectId"
  field :dataset, 1, type: :string, deprecated: false
  field :table, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :issue_model, 2,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_model, 1,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_models, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModels"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issues, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Issue
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue, 1, type: Google.Cloud.Contactcenterinsights.V1.Issue, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_model, 1, type: :string, json_name: "issueModel", deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :current_stats, 4,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats,
    json_name: "currentStats"
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreatePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :phrase_matcher, 2,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_matchers, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatchers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetPhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeletePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdatePhraseMatcherRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_matcher, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :settings, 1, type: Google.Cloud.Contactcenterinsights.V1.Settings, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Contactcenterinsights.V1.View, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :views, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.View
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :view, 1, type: Google.Cloud.Contactcenterinsights.V1.View, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contactcenterinsights.v1.ContactCenterInsights",
    protoc_gen_elixir_version: "0.12.0"

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
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service
end