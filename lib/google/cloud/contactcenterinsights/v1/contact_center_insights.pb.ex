defmodule Google.Cloud.Contactcenterinsights.V1.ConversationView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONVERSATION_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :CONVERSATION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :WRITE_DISPOSITION_UNSPECIFIED | :WRITE_TRUNCATE | :WRITE_APPEND

  field :WRITE_DISPOSITION_UNSPECIFIED, 0
  field :WRITE_TRUNCATE, 1
  field :WRITE_APPEND, 2
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          filter: String.t()
        }

  defstruct [:location, :filter]

  field :location, 1, type: :string
  field :filter, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          conversation_count: integer
        }

  defstruct [:start_time, :conversation_count]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :conversation_count, 2, type: :int32, json_name: "conversationCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interval_duration: Google.Protobuf.Duration.t() | nil,
          points: [
            Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval.t()
          ]
        }

  defstruct [:interval_duration, :points]

  field :interval_duration, 1, type: Google.Protobuf.Duration, json_name: "intervalDuration"

  field :points, 2,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.Interval

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.SmartHighlighterMatchesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.CustomHighlighterMatchesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesStatsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          average_duration: Google.Protobuf.Duration.t() | nil,
          average_turn_count: integer,
          conversation_count: integer,
          smart_highlighter_matches: %{String.t() => integer},
          custom_highlighter_matches: %{String.t() => integer},
          issue_matches: %{String.t() => integer},
          issue_matches_stats: %{
            String.t() =>
              Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.IssueStats.t() | nil
          },
          conversation_count_time_series:
            Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries.t() | nil
        }

  defstruct [
    :average_duration,
    :average_turn_count,
    :conversation_count,
    :smart_highlighter_matches,
    :custom_highlighter_matches,
    :issue_matches,
    :issue_matches_stats,
    :conversation_count_time_series
  ]

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
    deprecated: true,
    json_name: "issueMatches",
    map: true

  field :issue_matches_stats, 8,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesStatsEntry,
    json_name: "issueMatchesStats",
    map: true

  field :conversation_count_time_series, 7,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.TimeSeries,
    json_name: "conversationCountTimeSeries"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          conversation: String.t()
        }

  defstruct [:create_time, :end_time, :conversation]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :conversation, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation: Google.Cloud.Contactcenterinsights.V1.Conversation.t() | nil,
          conversation_id: String.t()
        }

  defstruct [:parent, :conversation, :conversation_id]

  field :parent, 1, type: :string
  field :conversation, 2, type: Google.Cloud.Contactcenterinsights.V1.Conversation
  field :conversation_id, 3, type: :string, json_name: "conversationId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListConversationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          view: Google.Cloud.Contactcenterinsights.V1.ConversationView.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :view, 5, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListConversationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversations: [Google.Cloud.Contactcenterinsights.V1.Conversation.t()],
          next_page_token: String.t()
        }

  defstruct [:conversations, :next_page_token]

  field :conversations, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.Conversation

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Contactcenterinsights.V1.ConversationView.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation: Google.Cloud.Contactcenterinsights.V1.Conversation.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:conversation, :update_mask]

  field :conversation, 1, type: Google.Cloud.Contactcenterinsights.V1.Conversation
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteConversationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          analysis: Google.Cloud.Contactcenterinsights.V1.Analysis.t() | nil
        }

  defstruct [:parent, :analysis]

  field :parent, 1, type: :string
  field :analysis, 2, type: Google.Cloud.Contactcenterinsights.V1.Analysis

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListAnalysesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analyses: [Google.Cloud.Contactcenterinsights.V1.Analysis.t()],
          next_page_token: String.t()
        }

  defstruct [:analyses, :next_page_token]

  field :analyses, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Analysis
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          dataset: String.t(),
          table: String.t()
        }

  defstruct [:project_id, :dataset, :table]

  field :project_id, 3, type: :string, json_name: "projectId"
  field :dataset, 1, type: :string
  field :table, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:big_query_destination,
             Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination.t()
             | nil},
          parent: String.t(),
          filter: String.t(),
          kms_key: String.t(),
          write_disposition:
            Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition.t()
        }

  defstruct [:destination, :parent, :filter, :kms_key, :write_disposition]

  oneof :destination, 0

  field :big_query_destination, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination,
    json_name: "bigQueryDestination",
    oneof: 0

  field :parent, 1, type: :string
  field :filter, 3, type: :string
  field :kms_key, 4, type: :string, json_name: "kmsKey"

  field :write_disposition, 5,
    type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.WriteDisposition,
    enum: true,
    json_name: "writeDisposition"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.t() | nil,
          partial_errors: [Google.Rpc.Status.t()]
        }

  defstruct [:create_time, :end_time, :request, :partial_errors]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest
  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          issue_model: Google.Cloud.Contactcenterinsights.V1.IssueModel.t() | nil
        }

  defstruct [:parent, :issue_model]

  field :parent, 1, type: :string

  field :issue_model, 2,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreateIssueModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest.t() | nil
        }

  defstruct [:create_time, :end_time, :request]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.CreateIssueModelRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_model: Google.Cloud.Contactcenterinsights.V1.IssueModel.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:issue_model, :update_mask]

  field :issue_model, 1,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModel"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_models: [Google.Cloud.Contactcenterinsights.V1.IssueModel.t()]
        }

  defstruct [:issue_models]

  field :issue_models, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModel,
    json_name: "issueModels"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest.t() | nil
        }

  defstruct [:create_time, :end_time, :request]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeleteIssueModelRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeployIssueModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest.t() | nil
        }

  defstruct [:create_time, :end_time, :request]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.DeployIssueModelRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          request: Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest.t() | nil
        }

  defstruct [:create_time, :end_time, :request]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.UndeployIssueModelRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issues: [Google.Cloud.Contactcenterinsights.V1.Issue.t()]
        }

  defstruct [:issues]

  field :issues, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Issue

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateIssueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue: Google.Cloud.Contactcenterinsights.V1.Issue.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:issue, :update_mask]

  field :issue, 1, type: Google.Cloud.Contactcenterinsights.V1.Issue
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_model: String.t()
        }

  defstruct [:issue_model]

  field :issue_model, 1, type: :string, json_name: "issueModel"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_stats: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.t() | nil
        }

  defstruct [:current_stats]

  field :current_stats, 4,
    type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats,
    json_name: "currentStats"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.CreatePhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          phrase_matcher: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.t() | nil
        }

  defstruct [:parent, :phrase_matcher]

  field :parent, 1, type: :string

  field :phrase_matcher, 2,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListPhraseMatchersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_matchers: [Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.t()],
          next_page_token: String.t()
        }

  defstruct [:phrase_matchers, :next_page_token]

  field :phrase_matchers, 1,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatchers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetPhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeletePhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdatePhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrase_matcher: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:phrase_matcher, :update_mask]

  field :phrase_matcher, 1,
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher,
    json_name: "phraseMatcher"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.UpdateSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: Google.Cloud.Contactcenterinsights.V1.Settings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:settings, :update_mask]

  field :settings, 1, type: Google.Cloud.Contactcenterinsights.V1.Settings
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.contactcenterinsights.v1.ContactCenterInsights"

  rpc :CreateConversation,
      Google.Cloud.Contactcenterinsights.V1.CreateConversationRequest,
      Google.Cloud.Contactcenterinsights.V1.Conversation

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
end

defmodule Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Contactcenterinsights.V1.ContactCenterInsights.Service
end
