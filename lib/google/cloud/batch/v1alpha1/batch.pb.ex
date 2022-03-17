defmodule Google.Cloud.Batch.V1alpha1.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job_id: String.t(),
          job: Google.Cloud.Batch.V1alpha1.Job.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            job_id: "",
            job: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId"
  field :job, 3, type: Google.Cloud.Batch.V1alpha1.Job, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Batch.V1alpha1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Batch.V1alpha1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          reason: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            reason: "",
            request_id: ""

  field :name, 1, type: :string
  field :reason, 2, type: :string, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end
defmodule Google.Cloud.Batch.V1alpha1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string
  field :filter, 4, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Batch.V1alpha1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Batch.V1alpha1.Job.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct jobs: [],
            next_page_token: "",
            unreachable: []

  field :jobs, 1, repeated: true, type: Google.Cloud.Batch.V1alpha1.Job
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.ListTasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Batch.V1alpha1.ListTasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tasks: [Google.Cloud.Batch.V1alpha1.Task.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct tasks: [],
            next_page_token: "",
            unreachable: []

  field :tasks, 1, repeated: true, type: Google.Cloud.Batch.V1alpha1.Task
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Batch.V1alpha1.GetTaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Batch.V1alpha1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

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
defmodule Google.Cloud.Batch.V1alpha1.BatchService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.batch.v1alpha1.BatchService"

  rpc :CreateJob, Google.Cloud.Batch.V1alpha1.CreateJobRequest, Google.Cloud.Batch.V1alpha1.Job

  rpc :GetJob, Google.Cloud.Batch.V1alpha1.GetJobRequest, Google.Cloud.Batch.V1alpha1.Job

  rpc :DeleteJob, Google.Cloud.Batch.V1alpha1.DeleteJobRequest, Google.Longrunning.Operation

  rpc :ListJobs,
      Google.Cloud.Batch.V1alpha1.ListJobsRequest,
      Google.Cloud.Batch.V1alpha1.ListJobsResponse

  rpc :GetTask, Google.Cloud.Batch.V1alpha1.GetTaskRequest, Google.Cloud.Batch.V1alpha1.Task

  rpc :ListTasks,
      Google.Cloud.Batch.V1alpha1.ListTasksRequest,
      Google.Cloud.Batch.V1alpha1.ListTasksResponse
end

defmodule Google.Cloud.Batch.V1alpha1.BatchService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Batch.V1alpha1.BatchService.Service
end
