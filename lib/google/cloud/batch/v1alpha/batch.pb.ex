defmodule Google.Cloud.Batch.V1alpha.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId"
  field :job, 3, type: Google.Cloud.Batch.V1alpha.Job, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :reason, 2, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.CancelJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.CancelJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Batch.V1alpha.UpdateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :job, 1, type: Google.Cloud.Batch.V1alpha.Job, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Batch.V1alpha.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Batch.V1alpha.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Batch.V1alpha.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Batch.V1alpha.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.CreateResourceAllowanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :resource_allowance_id, 2, type: :string, json_name: "resourceAllowanceId"

  field :resource_allowance, 3,
    type: Google.Cloud.Batch.V1alpha.ResourceAllowance,
    json_name: "resourceAllowance",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.GetResourceAllowanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.DeleteResourceAllowanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :reason, 2, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.ListResourceAllowancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.ListResourceAllowancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_allowances, 1,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.ResourceAllowance,
    json_name: "resourceAllowances"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.UpdateResourceAllowanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_allowance, 1,
    type: Google.Cloud.Batch.V1alpha.ResourceAllowance,
    json_name: "resourceAllowance",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.BatchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.batch.v1alpha.BatchService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateJob, Google.Cloud.Batch.V1alpha.CreateJobRequest, Google.Cloud.Batch.V1alpha.Job

  rpc :GetJob, Google.Cloud.Batch.V1alpha.GetJobRequest, Google.Cloud.Batch.V1alpha.Job

  rpc :DeleteJob, Google.Cloud.Batch.V1alpha.DeleteJobRequest, Google.Longrunning.Operation

  rpc :CancelJob, Google.Cloud.Batch.V1alpha.CancelJobRequest, Google.Longrunning.Operation

  rpc :UpdateJob, Google.Cloud.Batch.V1alpha.UpdateJobRequest, Google.Cloud.Batch.V1alpha.Job

  rpc :ListJobs,
      Google.Cloud.Batch.V1alpha.ListJobsRequest,
      Google.Cloud.Batch.V1alpha.ListJobsResponse

  rpc :GetTask, Google.Cloud.Batch.V1alpha.GetTaskRequest, Google.Cloud.Batch.V1alpha.Task

  rpc :ListTasks,
      Google.Cloud.Batch.V1alpha.ListTasksRequest,
      Google.Cloud.Batch.V1alpha.ListTasksResponse

  rpc :CreateResourceAllowance,
      Google.Cloud.Batch.V1alpha.CreateResourceAllowanceRequest,
      Google.Cloud.Batch.V1alpha.ResourceAllowance

  rpc :GetResourceAllowance,
      Google.Cloud.Batch.V1alpha.GetResourceAllowanceRequest,
      Google.Cloud.Batch.V1alpha.ResourceAllowance

  rpc :DeleteResourceAllowance,
      Google.Cloud.Batch.V1alpha.DeleteResourceAllowanceRequest,
      Google.Longrunning.Operation

  rpc :ListResourceAllowances,
      Google.Cloud.Batch.V1alpha.ListResourceAllowancesRequest,
      Google.Cloud.Batch.V1alpha.ListResourceAllowancesResponse

  rpc :UpdateResourceAllowance,
      Google.Cloud.Batch.V1alpha.UpdateResourceAllowanceRequest,
      Google.Cloud.Batch.V1alpha.ResourceAllowance
end

defmodule Google.Cloud.Batch.V1alpha.BatchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Batch.V1alpha.BatchService.Service
end
