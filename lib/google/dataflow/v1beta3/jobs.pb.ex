defmodule Google.Dataflow.V1beta3.KindType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN_KIND, 0
  field :PAR_DO_KIND, 1
  field :GROUP_BY_KEY_KIND, 2
  field :FLATTEN_KIND, 3
  field :READ_KIND, 4
  field :WRITE_KIND, 5
  field :CONSTANT_KIND, 6
  field :SINGLETON_KIND, 7
  field :SHUFFLE_KIND, 8
end

defmodule Google.Dataflow.V1beta3.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :JOB_STATE_UNKNOWN, 0
  field :JOB_STATE_STOPPED, 1
  field :JOB_STATE_RUNNING, 2
  field :JOB_STATE_DONE, 3
  field :JOB_STATE_FAILED, 4
  field :JOB_STATE_CANCELLED, 5
  field :JOB_STATE_UPDATED, 6
  field :JOB_STATE_DRAINING, 7
  field :JOB_STATE_DRAINED, 8
  field :JOB_STATE_PENDING, 9
  field :JOB_STATE_CANCELLING, 10
  field :JOB_STATE_QUEUED, 11
  field :JOB_STATE_RESOURCE_CLEANING_UP, 12
end

defmodule Google.Dataflow.V1beta3.JobView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :JOB_VIEW_UNKNOWN, 0
  field :JOB_VIEW_SUMMARY, 1
  field :JOB_VIEW_ALL, 2
  field :JOB_VIEW_DESCRIPTION, 3
end

defmodule Google.Dataflow.V1beta3.SdkVersion.SdkSupportStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SUPPORTED, 1
  field :STALE, 2
  field :DEPRECATED, 3
  field :UNSUPPORTED, 4
end

defmodule Google.Dataflow.V1beta3.ListJobsRequest.Filter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ALL, 1
  field :TERMINATED, 2
  field :ACTIVE, 3
end

defmodule Google.Dataflow.V1beta3.Job.TransformNameMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.Job.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :name, 3, type: :string
  field :type, 4, type: Google.Dataflow.V1beta3.JobType, enum: true
  field :environment, 5, type: Google.Dataflow.V1beta3.Environment
  field :steps, 6, repeated: true, type: Google.Dataflow.V1beta3.Step
  field :steps_location, 24, type: :string, json_name: "stepsLocation"

  field :current_state, 7,
    type: Google.Dataflow.V1beta3.JobState,
    json_name: "currentState",
    enum: true

  field :current_state_time, 8, type: Google.Protobuf.Timestamp, json_name: "currentStateTime"

  field :requested_state, 9,
    type: Google.Dataflow.V1beta3.JobState,
    json_name: "requestedState",
    enum: true

  field :execution_info, 10,
    type: Google.Dataflow.V1beta3.JobExecutionInfo,
    json_name: "executionInfo"

  field :create_time, 11, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :replace_job_id, 12, type: :string, json_name: "replaceJobId"

  field :transform_name_mapping, 13,
    repeated: true,
    type: Google.Dataflow.V1beta3.Job.TransformNameMappingEntry,
    json_name: "transformNameMapping",
    map: true

  field :client_request_id, 14, type: :string, json_name: "clientRequestId"
  field :replaced_by_job_id, 15, type: :string, json_name: "replacedByJobId"
  field :temp_files, 16, repeated: true, type: :string, json_name: "tempFiles"
  field :labels, 17, repeated: true, type: Google.Dataflow.V1beta3.Job.LabelsEntry, map: true
  field :location, 18, type: :string

  field :pipeline_description, 19,
    type: Google.Dataflow.V1beta3.PipelineDescription,
    json_name: "pipelineDescription"

  field :stage_states, 20,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageState,
    json_name: "stageStates"

  field :job_metadata, 21, type: Google.Dataflow.V1beta3.JobMetadata, json_name: "jobMetadata"
  field :start_time, 22, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :created_from_snapshot_id, 23, type: :string, json_name: "createdFromSnapshotId"
  field :satisfies_pzs, 25, type: :bool, json_name: "satisfiesPzs"
end

defmodule Google.Dataflow.V1beta3.DatastoreIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Dataflow.V1beta3.PubSubIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic, 1, type: :string
  field :subscription, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.FileIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :file_pattern, 1, type: :string, json_name: "filePattern"
end

defmodule Google.Dataflow.V1beta3.BigTableIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :table_id, 3, type: :string, json_name: "tableId"
end

defmodule Google.Dataflow.V1beta3.BigQueryIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :table, 1, type: :string
  field :dataset, 2, type: :string
  field :project_id, 3, type: :string, json_name: "projectId"
  field :query, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.SpannerIODetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :database_id, 3, type: :string, json_name: "databaseId"
end

defmodule Google.Dataflow.V1beta3.SdkVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :string
  field :version_display_name, 2, type: :string, json_name: "versionDisplayName"

  field :sdk_support_status, 3,
    type: Google.Dataflow.V1beta3.SdkVersion.SdkSupportStatus,
    json_name: "sdkSupportStatus",
    enum: true
end

defmodule Google.Dataflow.V1beta3.JobMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sdk_version, 1, type: Google.Dataflow.V1beta3.SdkVersion, json_name: "sdkVersion"

  field :spanner_details, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.SpannerIODetails,
    json_name: "spannerDetails"

  field :bigquery_details, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.BigQueryIODetails,
    json_name: "bigqueryDetails"

  field :big_table_details, 4,
    repeated: true,
    type: Google.Dataflow.V1beta3.BigTableIODetails,
    json_name: "bigTableDetails"

  field :pubsub_details, 5,
    repeated: true,
    type: Google.Dataflow.V1beta3.PubSubIODetails,
    json_name: "pubsubDetails"

  field :file_details, 6,
    repeated: true,
    type: Google.Dataflow.V1beta3.FileIODetails,
    json_name: "fileDetails"

  field :datastore_details, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.DatastoreIODetails,
    json_name: "datastoreDetails"
end

defmodule Google.Dataflow.V1beta3.ExecutionStageState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :execution_stage_name, 1, type: :string, json_name: "executionStageName"

  field :execution_stage_state, 2,
    type: Google.Dataflow.V1beta3.JobState,
    json_name: "executionStageState",
    enum: true

  field :current_state_time, 3, type: Google.Protobuf.Timestamp, json_name: "currentStateTime"
end

defmodule Google.Dataflow.V1beta3.PipelineDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :original_pipeline_transform, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.TransformSummary,
    json_name: "originalPipelineTransform"

  field :execution_pipeline_stage, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageSummary,
    json_name: "executionPipelineStage"

  field :display_data, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.DisplayData,
    json_name: "displayData"
end

defmodule Google.Dataflow.V1beta3.TransformSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: Google.Dataflow.V1beta3.KindType, enum: true
  field :id, 2, type: :string
  field :name, 3, type: :string

  field :display_data, 4,
    repeated: true,
    type: Google.Dataflow.V1beta3.DisplayData,
    json_name: "displayData"

  field :output_collection_name, 5,
    repeated: true,
    type: :string,
    json_name: "outputCollectionName"

  field :input_collection_name, 6, repeated: true, type: :string, json_name: "inputCollectionName"
end

defmodule Google.Dataflow.V1beta3.ExecutionStageSummary.StageSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_name, 1, type: :string, json_name: "userName"
  field :name, 2, type: :string

  field :original_transform_or_collection, 3,
    type: :string,
    json_name: "originalTransformOrCollection"

  field :size_bytes, 4, type: :int64, json_name: "sizeBytes"
end

defmodule Google.Dataflow.V1beta3.ExecutionStageSummary.ComponentTransform do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_name, 1, type: :string, json_name: "userName"
  field :name, 2, type: :string
  field :original_transform, 3, type: :string, json_name: "originalTransform"
end

defmodule Google.Dataflow.V1beta3.ExecutionStageSummary.ComponentSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_name, 1, type: :string, json_name: "userName"
  field :name, 2, type: :string

  field :original_transform_or_collection, 3,
    type: :string,
    json_name: "originalTransformOrCollection"
end

defmodule Google.Dataflow.V1beta3.ExecutionStageSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :kind, 3, type: Google.Dataflow.V1beta3.KindType, enum: true

  field :input_source, 4,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageSummary.StageSource,
    json_name: "inputSource"

  field :output_source, 5,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageSummary.StageSource,
    json_name: "outputSource"

  field :prerequisite_stage, 8, repeated: true, type: :string, json_name: "prerequisiteStage"

  field :component_transform, 6,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageSummary.ComponentTransform,
    json_name: "componentTransform"

  field :component_source, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.ExecutionStageSummary.ComponentSource,
    json_name: "componentSource"
end

defmodule Google.Dataflow.V1beta3.DisplayData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :Value, 0

  field :key, 1, type: :string
  field :namespace, 2, type: :string
  field :str_value, 4, type: :string, json_name: "strValue", oneof: 0
  field :int64_value, 5, type: :int64, json_name: "int64Value", oneof: 0
  field :float_value, 6, type: :float, json_name: "floatValue", oneof: 0
  field :java_class_value, 7, type: :string, json_name: "javaClassValue", oneof: 0

  field :timestamp_value, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampValue",
    oneof: 0

  field :duration_value, 9, type: Google.Protobuf.Duration, json_name: "durationValue", oneof: 0
  field :bool_value, 10, type: :bool, json_name: "boolValue", oneof: 0
  field :short_str_value, 11, type: :string, json_name: "shortStrValue"
  field :url, 12, type: :string
  field :label, 13, type: :string
end

defmodule Google.Dataflow.V1beta3.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kind, 1, type: :string
  field :name, 2, type: :string
  field :properties, 3, type: Google.Protobuf.Struct
end

defmodule Google.Dataflow.V1beta3.JobExecutionInfo.StagesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Dataflow.V1beta3.JobExecutionStageInfo
end

defmodule Google.Dataflow.V1beta3.JobExecutionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stages, 1,
    repeated: true,
    type: Google.Dataflow.V1beta3.JobExecutionInfo.StagesEntry,
    map: true
end

defmodule Google.Dataflow.V1beta3.JobExecutionStageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :step_name, 1, repeated: true, type: :string, json_name: "stepName"
end

defmodule Google.Dataflow.V1beta3.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job, 2, type: Google.Dataflow.V1beta3.Job
  field :view, 3, type: Google.Dataflow.V1beta3.JobView, enum: true
  field :replace_job_id, 4, type: :string, json_name: "replaceJobId"
  field :location, 5, type: :string
end

defmodule Google.Dataflow.V1beta3.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :view, 3, type: Google.Dataflow.V1beta3.JobView, enum: true
  field :location, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.UpdateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :job, 3, type: Google.Dataflow.V1beta3.Job
  field :location, 4, type: :string
end

defmodule Google.Dataflow.V1beta3.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :filter, 5, type: Google.Dataflow.V1beta3.ListJobsRequest.Filter, enum: true
  field :project_id, 1, type: :string, json_name: "projectId"
  field :view, 2, type: Google.Dataflow.V1beta3.JobView, enum: true, deprecated: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :location, 17, type: :string
end

defmodule Google.Dataflow.V1beta3.FailedLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Dataflow.V1beta3.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Dataflow.V1beta3.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :failed_location, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.FailedLocation,
    json_name: "failedLocation"
end

defmodule Google.Dataflow.V1beta3.SnapshotJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :ttl, 3, type: Google.Protobuf.Duration
  field :location, 4, type: :string
  field :snapshot_sources, 5, type: :bool, json_name: "snapshotSources"
  field :description, 6, type: :string
end

defmodule Google.Dataflow.V1beta3.CheckActiveJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
end

defmodule Google.Dataflow.V1beta3.CheckActiveJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :active_jobs_exist, 1, type: :bool, json_name: "activeJobsExist"
end

defmodule Google.Dataflow.V1beta3.JobsV1Beta3.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.dataflow.v1beta3.JobsV1Beta3",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateJob, Google.Dataflow.V1beta3.CreateJobRequest, Google.Dataflow.V1beta3.Job

  rpc :GetJob, Google.Dataflow.V1beta3.GetJobRequest, Google.Dataflow.V1beta3.Job

  rpc :UpdateJob, Google.Dataflow.V1beta3.UpdateJobRequest, Google.Dataflow.V1beta3.Job

  rpc :ListJobs, Google.Dataflow.V1beta3.ListJobsRequest, Google.Dataflow.V1beta3.ListJobsResponse

  rpc :AggregatedListJobs,
      Google.Dataflow.V1beta3.ListJobsRequest,
      Google.Dataflow.V1beta3.ListJobsResponse

  rpc :CheckActiveJobs,
      Google.Dataflow.V1beta3.CheckActiveJobsRequest,
      Google.Dataflow.V1beta3.CheckActiveJobsResponse

  rpc :SnapshotJob, Google.Dataflow.V1beta3.SnapshotJobRequest, Google.Dataflow.V1beta3.Snapshot
end

defmodule Google.Dataflow.V1beta3.JobsV1Beta3.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Dataflow.V1beta3.JobsV1Beta3.Service
end