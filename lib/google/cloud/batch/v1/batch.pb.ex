defmodule Google.Cloud.Batch.V1.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId"
  field :job, 3, type: Google.Cloud.Batch.V1.Job, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Batch.V1.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :reason, 2, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Batch.V1.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Batch.V1.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Batch.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Batch.V1.ListTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Batch.V1.ListTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tasks, 1, repeated: true, type: Google.Cloud.Batch.V1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Batch.V1.GetTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Batch.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Batch.V1.BatchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.batch.v1.BatchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateJob, Google.Cloud.Batch.V1.CreateJobRequest, Google.Cloud.Batch.V1.Job

  rpc :GetJob, Google.Cloud.Batch.V1.GetJobRequest, Google.Cloud.Batch.V1.Job

  rpc :DeleteJob, Google.Cloud.Batch.V1.DeleteJobRequest, Google.Longrunning.Operation

  rpc :ListJobs, Google.Cloud.Batch.V1.ListJobsRequest, Google.Cloud.Batch.V1.ListJobsResponse

  rpc :GetTask, Google.Cloud.Batch.V1.GetTaskRequest, Google.Cloud.Batch.V1.Task

  rpc :ListTasks, Google.Cloud.Batch.V1.ListTasksRequest, Google.Cloud.Batch.V1.ListTasksResponse
end

defmodule Google.Cloud.Batch.V1.BatchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Batch.V1.BatchService.Service
end