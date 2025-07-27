defmodule Google.Cloud.Storagebatchoperations.V1.ListJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.ListJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :jobs, 1, repeated: true, type: Google.Cloud.Storagebatchoperations.V1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storagebatchoperations.V1.GetJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.CreateJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
  field :job, 3, type: Google.Cloud.Storagebatchoperations.V1.Job, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.CancelJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.DeleteJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.CancelJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Storagebatchoperations.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :requested_cancellation, 7,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 8, type: :string, json_name: "apiVersion", deprecated: false
  field :job, 10, type: Google.Cloud.Storagebatchoperations.V1.Job, deprecated: false
end

defmodule Google.Cloud.Storagebatchoperations.V1.StorageBatchOperations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.storagebatchoperations.v1.StorageBatchOperations",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListJobs,
      Google.Cloud.Storagebatchoperations.V1.ListJobsRequest,
      Google.Cloud.Storagebatchoperations.V1.ListJobsResponse

  rpc :GetJob,
      Google.Cloud.Storagebatchoperations.V1.GetJobRequest,
      Google.Cloud.Storagebatchoperations.V1.Job

  rpc :CreateJob,
      Google.Cloud.Storagebatchoperations.V1.CreateJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteJob, Google.Cloud.Storagebatchoperations.V1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :CancelJob,
      Google.Cloud.Storagebatchoperations.V1.CancelJobRequest,
      Google.Cloud.Storagebatchoperations.V1.CancelJobResponse
end

defmodule Google.Cloud.Storagebatchoperations.V1.StorageBatchOperations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Storagebatchoperations.V1.StorageBatchOperations.Service
end
