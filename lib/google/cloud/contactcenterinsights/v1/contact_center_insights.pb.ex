defmodule Google.Cloud.Contactcenterinsights.V1.ConversationView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONVERSATION_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :CONVERSATION_VIEW_UNSPECIFIED, 0

  field :BASIC, 1

  field :FULL, 2
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
          issue_matches: %{String.t() => integer}
        }

  defstruct [
    :average_duration,
    :average_turn_count,
    :conversation_count,
    :smart_highlighter_matches,
    :custom_highlighter_matches,
    :issue_matches
  ]

  field :average_duration, 1, type: Google.Protobuf.Duration
  field :average_turn_count, 2, type: :int32
  field :conversation_count, 3, type: :int32

  field :smart_highlighter_matches, 4,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.SmartHighlighterMatchesEntry,
    map: true

  field :custom_highlighter_matches, 5,
    repeated: true,
    type:
      Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.CustomHighlighterMatchesEntry,
    map: true

  field :issue_matches, 6,
    repeated: true,
    type: Google.Cloud.Contactcenterinsights.V1.CalculateStatsResponse.IssueMatchesEntry,
    map: true
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

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :conversation, 3, type: :string
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
  field :conversation_id, 3, type: :string
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :view, 5, type: Google.Cloud.Contactcenterinsights.V1.ConversationView, enum: true
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

  field :next_page_token, 2, type: :string
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
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
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeleteAnalysisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          table: String.t()
        }

  defstruct [:dataset, :table]

  field :dataset, 1, type: :string
  field :table, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          parent: String.t(),
          filter: String.t(),
          kms_key: String.t()
        }

  defstruct [:destination, :parent, :filter, :kms_key]

  oneof :destination, 0

  field :big_query_destination, 2,
    type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest.BigQueryDestination,
    oneof: 0

  field :parent, 1, type: :string
  field :filter, 3, type: :string
  field :kms_key, 4, type: :string
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

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :request, 3, type: Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataRequest
  field :partial_errors, 4, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Contactcenterinsights.V1.ExportInsightsDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_models: [Google.Cloud.Contactcenterinsights.V1.IssueModel.t()]
        }

  defstruct [:issue_models]

  field :issue_models, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.IssueModel
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetIssueRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issues: [Google.Cloud.Contactcenterinsights.V1.Issue.t()]
        }

  defstruct [:issues]

  field :issues, 1, repeated: true, type: Google.Cloud.Contactcenterinsights.V1.Issue
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_model: String.t()
        }

  defstruct [:issue_model]

  field :issue_model, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.CalculateIssueModelStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_stats: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats.t() | nil
        }

  defstruct [:current_stats]

  field :current_stats, 4, type: Google.Cloud.Contactcenterinsights.V1.IssueModelLabelStats
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
  field :phrase_matcher, 2, type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
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
    type: Google.Cloud.Contactcenterinsights.V1.PhraseMatcher

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetPhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.DeletePhraseMatcherRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Contactcenterinsights.V1.GetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
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

  rpc :GetIssueModel,
      Google.Cloud.Contactcenterinsights.V1.GetIssueModelRequest,
      Google.Cloud.Contactcenterinsights.V1.IssueModel

  rpc :ListIssueModels,
      Google.Cloud.Contactcenterinsights.V1.ListIssueModelsRequest,
      Google.Cloud.Contactcenterinsights.V1.ListIssueModelsResponse

  rpc :GetIssue,
      Google.Cloud.Contactcenterinsights.V1.GetIssueRequest,
      Google.Cloud.Contactcenterinsights.V1.Issue

  rpc :ListIssues,
      Google.Cloud.Contactcenterinsights.V1.ListIssuesRequest,
      Google.Cloud.Contactcenterinsights.V1.ListIssuesResponse

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