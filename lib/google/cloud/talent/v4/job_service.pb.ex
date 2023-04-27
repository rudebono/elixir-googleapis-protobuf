defmodule Google.Cloud.Talent.V4.JobView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :JOB_VIEW_UNSPECIFIED, 0
  field :JOB_VIEW_ID_ONLY, 1
  field :JOB_VIEW_MINIMAL, 2
  field :JOB_VIEW_SMALL, 3
  field :JOB_VIEW_FULL, 4
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest.SearchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEARCH_MODE_UNSPECIFIED, 0
  field :JOB_SEARCH, 1
  field :FEATURED_JOB_SEARCH, 2
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest.DiversificationLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DIVERSIFICATION_LEVEL_UNSPECIFIED, 0
  field :DISABLED, 1
  field :SIMPLE, 2
  field :ONE_PER_COMPANY, 3
  field :TWO_PER_COMPANY, 4
  field :DIVERSIFY_BY_LOOSER_SIMILARITY, 5
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest.KeywordMatchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KEYWORD_MATCH_MODE_UNSPECIFIED, 0
  field :KEYWORD_MATCH_DISABLED, 1
  field :KEYWORD_MATCH_ALL, 2
  field :KEYWORD_MATCH_TITLE_ONLY, 3
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Talent.V4.Job, deprecated: false
end

defmodule Google.Cloud.Talent.V4.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Talent.V4.UpdateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Talent.V4.Job, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Talent.V4.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Talent.V4.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :job_view, 5, type: Google.Cloud.Talent.V4.JobView, json_name: "jobView", enum: true
end

defmodule Google.Cloud.Talent.V4.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Talent.V4.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :metadata, 3, type: Google.Cloud.Talent.V4.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :importance_level, 1,
    type: Google.Cloud.Talent.V4.SearchJobsRequest.CustomRankingInfo.ImportanceLevel,
    json_name: "importanceLevel",
    enum: true,
    deprecated: false

  field :ranking_expression, 2, type: :string, json_name: "rankingExpression", deprecated: false
end

defmodule Google.Cloud.Talent.V4.SearchJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_location, 1, type: Google.Cloud.Talent.V4.Location, json_name: "jobLocation"
  field :travel_duration, 2, type: Google.Protobuf.Duration, json_name: "travelDuration"
end

defmodule Google.Cloud.Talent.V4.SearchJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4.Job, deprecated: false
end

defmodule Google.Cloud.Talent.V4.BatchUpdateJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :jobs, 2, repeated: true, type: Google.Cloud.Talent.V4.Job, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Talent.V4.BatchDeleteJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Talent.V4.JobResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Talent.V4.Job
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Talent.V4.BatchCreateJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end

defmodule Google.Cloud.Talent.V4.BatchUpdateJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end

defmodule Google.Cloud.Talent.V4.BatchDeleteJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.JobResult,
    json_name: "jobResults"
end

defmodule Google.Cloud.Talent.V4.JobService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.talent.v4.JobService", protoc_gen_elixir_version: "0.12.0"

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