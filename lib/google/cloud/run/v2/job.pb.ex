defmodule Google.Cloud.Run.V2.ExecutionReference.CompletionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPLETION_STATUS_UNSPECIFIED, 0
  field :EXECUTION_SUCCEEDED, 1
  field :EXECUTION_FAILED, 2
  field :EXECUTION_RUNNING, 3
  field :EXECUTION_PENDING, 4
  field :EXECUTION_CANCELLED, 5
end

defmodule Google.Cloud.Run.V2.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job, 2, type: Google.Cloud.Run.V2.Job, deprecated: false
  field :job_id, 3, type: :string, json_name: "jobId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Run.V2.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.UpdateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job, 1, type: Google.Cloud.Run.V2.Job, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Run.V2.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Run.V2.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Run.V2.RunJobRequest.Overrides.ContainerOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :args, 2, repeated: true, type: :string, deprecated: false
  field :env, 3, repeated: true, type: Google.Cloud.Run.V2.EnvVar
  field :clear_args, 4, type: :bool, json_name: "clearArgs", deprecated: false
end

defmodule Google.Cloud.Run.V2.RunJobRequest.Overrides do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :container_overrides, 1,
    repeated: true,
    type: Google.Cloud.Run.V2.RunJobRequest.Overrides.ContainerOverride,
    json_name: "containerOverrides"

  field :task_count, 2, type: :int32, json_name: "taskCount", deprecated: false
  field :timeout, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Run.V2.RunJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :etag, 3, type: :string
  field :overrides, 4, type: Google.Cloud.Run.V2.RunJobRequest.Overrides
end

defmodule Google.Cloud.Run.V2.Job.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Job.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :create_execution, 0

  field :name, 1, type: :string
  field :uid, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
  field :labels, 4, repeated: true, type: Google.Cloud.Run.V2.Job.LabelsEntry, map: true
  field :annotations, 5, repeated: true, type: Google.Cloud.Run.V2.Job.AnnotationsEntry, map: true

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :creator, 10, type: :string, deprecated: false
  field :last_modifier, 11, type: :string, json_name: "lastModifier", deprecated: false
  field :client, 12, type: :string
  field :client_version, 13, type: :string, json_name: "clientVersion"
  field :launch_stage, 14, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true

  field :binary_authorization, 15,
    type: Google.Cloud.Run.V2.BinaryAuthorization,
    json_name: "binaryAuthorization"

  field :template, 16, type: Google.Cloud.Run.V2.ExecutionTemplate, deprecated: false
  field :observed_generation, 17, type: :int64, json_name: "observedGeneration", deprecated: false

  field :terminal_condition, 18,
    type: Google.Cloud.Run.V2.Condition,
    json_name: "terminalCondition",
    deprecated: false

  field :conditions, 19, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false
  field :execution_count, 20, type: :int32, json_name: "executionCount", deprecated: false

  field :latest_created_execution, 22,
    type: Google.Cloud.Run.V2.ExecutionReference,
    json_name: "latestCreatedExecution",
    deprecated: false

  field :reconciling, 23, type: :bool, deprecated: false
  field :satisfies_pzs, 25, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :start_execution_token, 26, type: :string, json_name: "startExecutionToken", oneof: 0
  field :run_execution_token, 27, type: :string, json_name: "runExecutionToken", oneof: 0
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.ExecutionReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :completion_time, 3, type: Google.Protobuf.Timestamp, json_name: "completionTime"
  field :delete_time, 5, type: Google.Protobuf.Timestamp, json_name: "deleteTime"

  field :completion_status, 4,
    type: Google.Cloud.Run.V2.ExecutionReference.CompletionStatus,
    json_name: "completionStatus",
    enum: true
end

defmodule Google.Cloud.Run.V2.Jobs.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Jobs", protoc_gen_elixir_version: "0.14.1"

  rpc :CreateJob, Google.Cloud.Run.V2.CreateJobRequest, Google.Longrunning.Operation

  rpc :GetJob, Google.Cloud.Run.V2.GetJobRequest, Google.Cloud.Run.V2.Job

  rpc :ListJobs, Google.Cloud.Run.V2.ListJobsRequest, Google.Cloud.Run.V2.ListJobsResponse

  rpc :UpdateJob, Google.Cloud.Run.V2.UpdateJobRequest, Google.Longrunning.Operation

  rpc :DeleteJob, Google.Cloud.Run.V2.DeleteJobRequest, Google.Longrunning.Operation

  rpc :RunJob, Google.Cloud.Run.V2.RunJobRequest, Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Run.V2.Jobs.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Jobs.Service
end
