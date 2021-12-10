defmodule Google.Cloud.Talent.V4.JobView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_VIEW_UNSPECIFIED
          | :JOB_VIEW_ID_ONLY
          | :JOB_VIEW_MINIMAL
          | :JOB_VIEW_SMALL
          | :JOB_VIEW_FULL

  field :JOB_VIEW_UNSPECIFIED, 0
  field :JOB_VIEW_ID_ONLY, 1
  field :JOB_VIEW_MINIMAL, 2
  field :JOB_VIEW_SMALL, 3
  field :JOB_VIEW_FULL, 4
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest.SearchMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEARCH_MODE_UNSPECIFIED | :JOB_SEARCH | :FEATURED_JOB_SEARCH

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :JOB_SEARCH, 1
  field :FEATURED_JOB_SEARCH, 2
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest.DiversificationLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DIVERSIFICATION_LEVEL_UNSPECIFIED
          | :DISABLED
          | :SIMPLE
          | :ONE_PER_COMPANY
          | :TWO_PER_COMPANY
          | :DIVERSIFY_BY_LOOSER_SIMILARITY

  field :DIVERSIFICATION_LEVEL_UNSPECIFIED, 0
  field :DISABLED, 1
  field :SIMPLE, 2
  field :ONE_PER_COMPANY, 3
  field :TWO_PER_COMPANY, 4
  field :DIVERSIFY_BY_LOOSER_SIMILARITY, 5
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest.KeywordMatchMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :KEYWORD_MATCH_MODE_UNSPECIFIED
          | :KEYWORD_MATCH_DISABLED
          | :KEYWORD_MATCH_ALL
          | :KEYWORD_MATCH_TITLE_ONLY

  field :KEYWORD_MATCH_MODE_UNSPECIFIED, 0
  field :KEYWORD_MATCH_DISABLED, 1
  field :KEYWORD_MATCH_ALL, 2
  field :KEYWORD_MATCH_TITLE_ONLY, 3
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :IMPORTANCE_LEVEL_UNSPECIFIED
          | :NONE
          | :LOW
          | :MILD
          | :MEDIUM
          | :HIGH
          | :EXTREME

  field :IMPORTANCE_LEVEL_UNSPECIFIED, 0
  field :NONE, 1
  field :LOW, 2
  field :MILD, 3
  field :MEDIUM, 4
  field :HIGH, 5
  field :EXTREME, 6
end
defmodule Google.Cloud.Talent.V4.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Talent.V4.Job.t() | nil
        }

  defstruct parent: "",
            job: nil

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Talent.V4.Job, deprecated: false
end
defmodule Google.Cloud.Talent.V4.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4.UpdateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4.Job.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct job: nil,
            update_mask: nil

  field :job, 1, type: Google.Cloud.Talent.V4.Job, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer,
          job_view: Google.Cloud.Talent.V4.JobView.t()
        }

  defstruct parent: "",
            filter: "",
            page_token: "",
            page_size: 0,
            job_view: :JOB_VIEW_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :job_view, 5, type: Google.Cloud.Talent.V4.JobView, json_name: "jobView", enum: true
end
defmodule Google.Cloud.Talent.V4.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Talent.V4.Job.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4.ResponseMetadata.t() | nil
        }

  defstruct jobs: [],
            next_page_token: "",
            metadata: nil

  field :jobs, 1, repeated: true, type: Google.Cloud.Talent.V4.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4.ResponseMetadata
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          importance_level:
            Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel.t(),
          ranking_expression: String.t()
        }

  defstruct importance_level: :IMPORTANCE_LEVEL_UNSPECIFIED,
            ranking_expression: ""

  field :importance_level, 1,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel,
    json_name: "importanceLevel",
    enum: true,
    deprecated: false

  field :ranking_expression, 2, type: :string, json_name: "rankingExpression", deprecated: false
end
defmodule Google.Cloud.Talent.V4.SearchJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          search_mode: Google.Cloud.Talent.V4.SearchJobsRequest.SearchMode.t(),
          request_metadata: Google.Cloud.Talent.V4.RequestMetadata.t() | nil,
          job_query: Google.Cloud.Talent.V4.JobQuery.t() | nil,
          enable_broadening: boolean,
          histogram_queries: [Google.Cloud.Talent.V4.HistogramQuery.t()],
          job_view: Google.Cloud.Talent.V4.JobView.t(),
          offset: integer,
          max_page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          diversification_level:
            Google.Cloud.Talent.V4.SearchJobsRequest.DiversificationLevel.t(),
          custom_ranking_info:
            Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.t() | nil,
          disable_keyword_match: boolean,
          keyword_match_mode: Google.Cloud.Talent.V4.SearchJobsRequest.KeywordMatchMode.t()
        }

  defstruct parent: "",
            search_mode: :SEARCH_MODE_UNSPECIFIED,
            request_metadata: nil,
            job_query: nil,
            enable_broadening: false,
            histogram_queries: [],
            job_view: :JOB_VIEW_UNSPECIFIED,
            offset: 0,
            max_page_size: 0,
            page_token: "",
            order_by: "",
            diversification_level: :DIVERSIFICATION_LEVEL_UNSPECIFIED,
            custom_ranking_info: nil,
            disable_keyword_match: false,
            keyword_match_mode: :KEYWORD_MATCH_MODE_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false

  field :search_mode, 2,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.SearchMode,
    json_name: "searchMode",
    enum: true

  field :request_metadata, 3,
    type: Google.Cloud.Talent.V4.RequestMetadata,
    json_name: "requestMetadata",
    deprecated: false

  field :job_query, 4, type: Google.Cloud.Talent.V4.JobQuery, json_name: "jobQuery"
  field :enable_broadening, 5, type: :bool, json_name: "enableBroadening"

  field :histogram_queries, 7,
    repeated: true,
    type: Google.Cloud.Talent.V4.HistogramQuery,
    json_name: "histogramQueries"

  field :job_view, 8, type: Google.Cloud.Talent.V4.JobView, json_name: "jobView", enum: true
  field :offset, 9, type: :int32
  field :max_page_size, 10, type: :int32, json_name: "maxPageSize"
  field :page_token, 11, type: :string, json_name: "pageToken"
  field :order_by, 12, type: :string, json_name: "orderBy"

  field :diversification_level, 13,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.DiversificationLevel,
    json_name: "diversificationLevel",
    enum: true

  field :custom_ranking_info, 14,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo,
    json_name: "customRankingInfo"

  field :disable_keyword_match, 16,
    type: :bool,
    json_name: "disableKeywordMatch",
    deprecated: true

  field :keyword_match_mode, 18,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.KeywordMatchMode,
    json_name: "keywordMatchMode",
    enum: true
end
defmodule Google.Cloud.Talent.V4.SearchJobsResponse.MatchingJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4.Job.t() | nil,
          job_summary: String.t(),
          job_title_snippet: String.t(),
          search_text_snippet: String.t(),
          commute_info: Google.Cloud.Talent.V4.SearchJobsResponse.CommuteInfo.t() | nil
        }

  defstruct job: nil,
            job_summary: "",
            job_title_snippet: "",
            search_text_snippet: "",
            commute_info: nil

  field :job, 1, type: Google.Cloud.Talent.V4.Job
  field :job_summary, 2, type: :string, json_name: "jobSummary"
  field :job_title_snippet, 3, type: :string, json_name: "jobTitleSnippet"
  field :search_text_snippet, 4, type: :string, json_name: "searchTextSnippet"

  field :commute_info, 5,
    type: Google.Cloud.Talent.V4.SearchJobsResponse.CommuteInfo,
    json_name: "commuteInfo"
end
defmodule Google.Cloud.Talent.V4.SearchJobsResponse.CommuteInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_location: Google.Cloud.Talent.V4.Location.t() | nil,
          travel_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct job_location: nil,
            travel_duration: nil

  field :job_location, 1, type: Google.Cloud.Talent.V4.Location, json_name: "jobLocation"
  field :travel_duration, 2, type: Google.Protobuf.Duration, json_name: "travelDuration"
end
defmodule Google.Cloud.Talent.V4.SearchJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matching_jobs: [Google.Cloud.Talent.V4.SearchJobsResponse.MatchingJob.t()],
          histogram_query_results: [Google.Cloud.Talent.V4.HistogramQueryResult.t()],
          next_page_token: String.t(),
          location_filters: [Google.Cloud.Talent.V4.Location.t()],
          total_size: integer,
          metadata: Google.Cloud.Talent.V4.ResponseMetadata.t() | nil,
          broadened_query_jobs_count: integer,
          spell_correction: Google.Cloud.Talent.V4.SpellingCorrection.t() | nil
        }

  defstruct matching_jobs: [],
            histogram_query_results: [],
            next_page_token: "",
            location_filters: [],
            total_size: 0,
            metadata: nil,
            broadened_query_jobs_count: 0,
            spell_correction: nil

  field :matching_jobs, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.SearchJobsResponse.MatchingJob,
    json_name: "matchingJobs"

  field :histogram_query_results, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4.HistogramQueryResult,
    json_name: "histogramQueryResults"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  field :location_filters, 4,
    repeated: true,
    type: Google.Cloud.Talent.V4.Location,
    json_name: "locationFilters"

  field :total_size, 6, type: :int32, json_name: "totalSize"
  field :metadata, 7, type: Google.Cloud.Talent.V4.ResponseMetadata
  field :broadened_query_jobs_count, 8, type: :int32, json_name: "broadenedQueryJobsCount"

  field :spell_correction, 9,
    type: Google.Cloud.Talent.V4.SpellingCorrection,
    json_name: "spellCorrection"
end
defmodule Google.Cloud.Talent.V4.BatchCreateJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          jobs: [Google.Cloud.Talent.V4.Job.t()]
        }

  defstruct parent: "",
            jobs: []

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4.Job, deprecated: false
end
defmodule Google.Cloud.Talent.V4.BatchUpdateJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          jobs: [Google.Cloud.Talent.V4.Job.t()],
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            jobs: [],
            update_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4.Job, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4.BatchDeleteJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct parent: "",
            names: []

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4.JobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4.Job.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct job: nil,
            status: nil

  field :job, 1, type: Google.Cloud.Talent.V4.Job
  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Cloud.Talent.V4.BatchCreateJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_results: [Google.Cloud.Talent.V4.JobResult.t()]
        }

  defstruct job_results: []

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end
defmodule Google.Cloud.Talent.V4.BatchUpdateJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_results: [Google.Cloud.Talent.V4.JobResult.t()]
        }

  defstruct job_results: []

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end
defmodule Google.Cloud.Talent.V4.BatchDeleteJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_results: [Google.Cloud.Talent.V4.JobResult.t()]
        }

  defstruct job_results: []

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end
defmodule Google.Cloud.Talent.V4.JobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4.JobService"

  rpc :CreateJob, Google.Cloud.Talent.V4.CreateJobRequest, Google.Cloud.Talent.V4.Job

  rpc :BatchCreateJobs,
      Google.Cloud.Talent.V4.BatchCreateJobsRequest,
      Google.Longrunning.Operation

  rpc :GetJob, Google.Cloud.Talent.V4.GetJobRequest, Google.Cloud.Talent.V4.Job

  rpc :UpdateJob, Google.Cloud.Talent.V4.UpdateJobRequest, Google.Cloud.Talent.V4.Job

  rpc :BatchUpdateJobs,
      Google.Cloud.Talent.V4.BatchUpdateJobsRequest,
      Google.Longrunning.Operation

  rpc :DeleteJob, Google.Cloud.Talent.V4.DeleteJobRequest, Google.Protobuf.Empty

  rpc :BatchDeleteJobs,
      Google.Cloud.Talent.V4.BatchDeleteJobsRequest,
      Google.Longrunning.Operation

  rpc :ListJobs, Google.Cloud.Talent.V4.ListJobsRequest, Google.Cloud.Talent.V4.ListJobsResponse

  rpc :SearchJobs,
      Google.Cloud.Talent.V4.SearchJobsRequest,
      Google.Cloud.Talent.V4.SearchJobsResponse

  rpc :SearchJobsForAlert,
      Google.Cloud.Talent.V4.SearchJobsRequest,
      Google.Cloud.Talent.V4.SearchJobsResponse
end

defmodule Google.Cloud.Talent.V4.JobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4.JobService.Service
end
