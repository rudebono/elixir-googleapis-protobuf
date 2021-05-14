defmodule Google.Cloud.Talent.V4beta1.JobView do
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

defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.SearchMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SEARCH_MODE_UNSPECIFIED | :JOB_SEARCH | :FEATURED_JOB_SEARCH

  field :SEARCH_MODE_UNSPECIFIED, 0

  field :JOB_SEARCH, 1

  field :FEATURED_JOB_SEARCH, 2
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.DiversificationLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DIVERSIFICATION_LEVEL_UNSPECIFIED | :DISABLED | :SIMPLE

  field :DIVERSIFICATION_LEVEL_UNSPECIFIED, 0

  field :DISABLED, 1

  field :SIMPLE, 2
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel do
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

defmodule Google.Cloud.Talent.V4beta1.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Talent.V4beta1.Job.t() | nil
        }

  defstruct [:parent, :job]

  field :parent, 1, type: :string
  field :job, 2, type: Google.Cloud.Talent.V4beta1.Job
end

defmodule Google.Cloud.Talent.V4beta1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.UpdateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4beta1.Job.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:job, :update_mask]

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4beta1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.BatchDeleteJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :filter]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer,
          job_view: Google.Cloud.Talent.V4beta1.JobView.t()
        }

  defstruct [:parent, :filter, :page_token, :page_size, :job_view]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_token, 3, type: :string
  field :page_size, 4, type: :int32
  field :job_view, 5, type: Google.Cloud.Talent.V4beta1.JobView, enum: true
end

defmodule Google.Cloud.Talent.V4beta1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Talent.V4beta1.Job.t()],
          next_page_token: String.t(),
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil
        }

  defstruct [:jobs, :next_page_token, :metadata]

  field :jobs, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Job
  field :next_page_token, 2, type: :string
  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          importance_level:
            Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel.t(),
          ranking_expression: String.t()
        }

  defstruct [:importance_level, :ranking_expression]

  field :importance_level, 1,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel,
    enum: true

  field :ranking_expression, 2, type: :string
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          search_mode: Google.Cloud.Talent.V4beta1.SearchJobsRequest.SearchMode.t(),
          request_metadata: Google.Cloud.Talent.V4beta1.RequestMetadata.t() | nil,
          job_query: Google.Cloud.Talent.V4beta1.JobQuery.t() | nil,
          enable_broadening: boolean,
          require_precise_result_size: boolean,
          histogram_queries: [Google.Cloud.Talent.V4beta1.HistogramQuery.t()],
          job_view: Google.Cloud.Talent.V4beta1.JobView.t(),
          offset: integer,
          page_size: integer,
          page_token: String.t(),
          order_by: String.t(),
          diversification_level:
            Google.Cloud.Talent.V4beta1.SearchJobsRequest.DiversificationLevel.t(),
          custom_ranking_info:
            Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.t() | nil,
          disable_keyword_match: boolean
        }

  defstruct [
    :parent,
    :search_mode,
    :request_metadata,
    :job_query,
    :enable_broadening,
    :require_precise_result_size,
    :histogram_queries,
    :job_view,
    :offset,
    :page_size,
    :page_token,
    :order_by,
    :diversification_level,
    :custom_ranking_info,
    :disable_keyword_match
  ]

  field :parent, 1, type: :string

  field :search_mode, 2,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.SearchMode,
    enum: true

  field :request_metadata, 3, type: Google.Cloud.Talent.V4beta1.RequestMetadata
  field :job_query, 4, type: Google.Cloud.Talent.V4beta1.JobQuery
  field :enable_broadening, 5, type: :bool
  field :require_precise_result_size, 6, type: :bool
  field :histogram_queries, 7, repeated: true, type: Google.Cloud.Talent.V4beta1.HistogramQuery
  field :job_view, 8, type: Google.Cloud.Talent.V4beta1.JobView, enum: true
  field :offset, 9, type: :int32
  field :page_size, 10, type: :int32
  field :page_token, 11, type: :string
  field :order_by, 12, type: :string

  field :diversification_level, 13,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.DiversificationLevel,
    enum: true

  field :custom_ranking_info, 14,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo

  field :disable_keyword_match, 16, type: :bool
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse.MatchingJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4beta1.Job.t() | nil,
          job_summary: String.t(),
          job_title_snippet: String.t(),
          search_text_snippet: String.t(),
          commute_info: Google.Cloud.Talent.V4beta1.SearchJobsResponse.CommuteInfo.t() | nil
        }

  defstruct [:job, :job_summary, :job_title_snippet, :search_text_snippet, :commute_info]

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job
  field :job_summary, 2, type: :string
  field :job_title_snippet, 3, type: :string
  field :search_text_snippet, 4, type: :string
  field :commute_info, 5, type: Google.Cloud.Talent.V4beta1.SearchJobsResponse.CommuteInfo
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse.CommuteInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_location: Google.Cloud.Talent.V4beta1.Location.t() | nil,
          travel_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:job_location, :travel_duration]

  field :job_location, 1, type: Google.Cloud.Talent.V4beta1.Location
  field :travel_duration, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matching_jobs: [Google.Cloud.Talent.V4beta1.SearchJobsResponse.MatchingJob.t()],
          histogram_query_results: [Google.Cloud.Talent.V4beta1.HistogramQueryResult.t()],
          next_page_token: String.t(),
          location_filters: [Google.Cloud.Talent.V4beta1.Location.t()],
          estimated_total_size: integer,
          total_size: integer,
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil,
          broadened_query_jobs_count: integer,
          spell_correction: Google.Cloud.Talent.V4beta1.SpellingCorrection.t() | nil
        }

  defstruct [
    :matching_jobs,
    :histogram_query_results,
    :next_page_token,
    :location_filters,
    :estimated_total_size,
    :total_size,
    :metadata,
    :broadened_query_jobs_count,
    :spell_correction
  ]

  field :matching_jobs, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.SearchJobsResponse.MatchingJob

  field :histogram_query_results, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQueryResult

  field :next_page_token, 3, type: :string
  field :location_filters, 4, repeated: true, type: Google.Cloud.Talent.V4beta1.Location
  field :estimated_total_size, 5, type: :int32
  field :total_size, 6, type: :int32
  field :metadata, 7, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
  field :broadened_query_jobs_count, 8, type: :int32
  field :spell_correction, 9, type: Google.Cloud.Talent.V4beta1.SpellingCorrection
end

defmodule Google.Cloud.Talent.V4beta1.BatchCreateJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          jobs: [Google.Cloud.Talent.V4beta1.Job.t()]
        }

  defstruct [:parent, :jobs]

  field :parent, 1, type: :string
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4beta1.Job
end

defmodule Google.Cloud.Talent.V4beta1.BatchUpdateJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          jobs: [Google.Cloud.Talent.V4beta1.Job.t()],
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :jobs, :update_mask]

  field :parent, 1, type: :string
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4beta1.Job
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Talent.V4beta1.JobOperationResult.JobResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Talent.V4beta1.Job.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:job, :status]

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Talent.V4beta1.JobOperationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_results: [Google.Cloud.Talent.V4beta1.JobOperationResult.JobResult.t()]
        }

  defstruct [:job_results]

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobOperationResult.JobResult
end

defmodule Google.Cloud.Talent.V4beta1.JobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4beta1.JobService"

  rpc :CreateJob, Google.Cloud.Talent.V4beta1.CreateJobRequest, Google.Cloud.Talent.V4beta1.Job

  rpc :BatchCreateJobs,
      Google.Cloud.Talent.V4beta1.BatchCreateJobsRequest,
      Google.Longrunning.Operation

  rpc :GetJob, Google.Cloud.Talent.V4beta1.GetJobRequest, Google.Cloud.Talent.V4beta1.Job

  rpc :UpdateJob, Google.Cloud.Talent.V4beta1.UpdateJobRequest, Google.Cloud.Talent.V4beta1.Job

  rpc :BatchUpdateJobs,
      Google.Cloud.Talent.V4beta1.BatchUpdateJobsRequest,
      Google.Longrunning.Operation

  rpc :DeleteJob, Google.Cloud.Talent.V4beta1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :BatchDeleteJobs, Google.Cloud.Talent.V4beta1.BatchDeleteJobsRequest, Google.Protobuf.Empty

  rpc :ListJobs,
      Google.Cloud.Talent.V4beta1.ListJobsRequest,
      Google.Cloud.Talent.V4beta1.ListJobsResponse

  rpc :SearchJobs,
      Google.Cloud.Talent.V4beta1.SearchJobsRequest,
      Google.Cloud.Talent.V4beta1.SearchJobsResponse

  rpc :SearchJobsForAlert,
      Google.Cloud.Talent.V4beta1.SearchJobsRequest,
      Google.Cloud.Talent.V4beta1.SearchJobsResponse
end

defmodule Google.Cloud.Talent.V4beta1.JobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.JobService.Service
end
