defmodule Google.Cloud.Talent.V4beta1.JobView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :JOB_VIEW_UNSPECIFIED, 0
  field :JOB_VIEW_ID_ONLY, 1
  field :JOB_VIEW_MINIMAL, 2
  field :JOB_VIEW_SMALL, 3
  field :JOB_VIEW_FULL, 4
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.SearchMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :JOB_SEARCH, 1
  field :FEATURED_JOB_SEARCH, 2
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.DiversificationLevel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DIVERSIFICATION_LEVEL_UNSPECIFIED, 0
  field :DISABLED, 1
  field :SIMPLE, 2
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Talent.V4beta1.Job, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.GetJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.UpdateJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4beta1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.BatchDeleteJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.ListJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :job_view, 5, type: Google.Cloud.Talent.V4beta1.JobView, json_name: "jobView", enum: true
end
defmodule Google.Cloud.Talent.V4beta1.ListJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :importance_level, 1,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo.ImportanceLevel,
    json_name: "importanceLevel",
    enum: true,
    deprecated: false

  field :ranking_expression, 2, type: :string, json_name: "rankingExpression", deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :search_mode, 2,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.SearchMode,
    json_name: "searchMode",
    enum: true

  field :request_metadata, 3,
    type: Google.Cloud.Talent.V4beta1.RequestMetadata,
    json_name: "requestMetadata",
    deprecated: false

  field :job_query, 4, type: Google.Cloud.Talent.V4beta1.JobQuery, json_name: "jobQuery"
  field :enable_broadening, 5, type: :bool, json_name: "enableBroadening"
  field :require_precise_result_size, 6, type: :bool, json_name: "requirePreciseResultSize"

  field :histogram_queries, 7,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQuery,
    json_name: "histogramQueries"

  field :job_view, 8, type: Google.Cloud.Talent.V4beta1.JobView, json_name: "jobView", enum: true
  field :offset, 9, type: :int32
  field :page_size, 10, type: :int32, json_name: "pageSize"
  field :page_token, 11, type: :string, json_name: "pageToken"
  field :order_by, 12, type: :string, json_name: "orderBy"

  field :diversification_level, 13,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.DiversificationLevel,
    json_name: "diversificationLevel",
    enum: true

  field :custom_ranking_info, 14,
    type: Google.Cloud.Talent.V4beta1.SearchJobsRequest.CustomRankingInfo,
    json_name: "customRankingInfo"

  field :disable_keyword_match, 16, type: :bool, json_name: "disableKeywordMatch"
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse.MatchingJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job
  field :job_summary, 2, type: :string, json_name: "jobSummary"
  field :job_title_snippet, 3, type: :string, json_name: "jobTitleSnippet"
  field :search_text_snippet, 4, type: :string, json_name: "searchTextSnippet"

  field :commute_info, 5,
    type: Google.Cloud.Talent.V4beta1.SearchJobsResponse.CommuteInfo,
    json_name: "commuteInfo"
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse.CommuteInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_location, 1, type: Google.Cloud.Talent.V4beta1.Location, json_name: "jobLocation"
  field :travel_duration, 2, type: Google.Protobuf.Duration, json_name: "travelDuration"
end
defmodule Google.Cloud.Talent.V4beta1.SearchJobsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :matching_jobs, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.SearchJobsResponse.MatchingJob,
    json_name: "matchingJobs"

  field :histogram_query_results, 2,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQueryResult,
    json_name: "histogramQueryResults"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  field :location_filters, 4,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.Location,
    json_name: "locationFilters"

  field :estimated_total_size, 5, type: :int32, json_name: "estimatedTotalSize"
  field :total_size, 6, type: :int32, json_name: "totalSize"
  field :metadata, 7, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
  field :broadened_query_jobs_count, 8, type: :int32, json_name: "broadenedQueryJobsCount"

  field :spell_correction, 9,
    type: Google.Cloud.Talent.V4beta1.SpellingCorrection,
    json_name: "spellCorrection"
end
defmodule Google.Cloud.Talent.V4beta1.BatchCreateJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4beta1.Job, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.BatchUpdateJobsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4beta1.Job, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4beta1.JobOperationResult.JobResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Talent.V4beta1.Job
  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Cloud.Talent.V4beta1.JobOperationResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.JobOperationResult.JobResult,
    json_name: "jobResults"
end
defmodule Google.Cloud.Talent.V4beta1.JobService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.talent.v4beta1.JobService",
    protoc_gen_elixir_version: "0.10.0"

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
