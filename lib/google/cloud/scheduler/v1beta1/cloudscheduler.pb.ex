defmodule Google.Cloud.Scheduler.V1beta1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 5, type: :int32
  field :page_token, 6, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Scheduler.V1beta1.Job.t()],
          next_page_token: String.t()
        }

  defstruct [:jobs, :next_page_token]

  field :jobs, 1, repeated: true, type: Google.Cloud.Scheduler.V1beta1.Job
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Scheduler.V1beta1.Job.t() | nil
        }

  defstruct [:parent, :job]

  field :parent, 1, type: :string
  field :job, 2, type: Google.Cloud.Scheduler.V1beta1.Job
end

defmodule Google.Cloud.Scheduler.V1beta1.UpdateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job: Google.Cloud.Scheduler.V1beta1.Job.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:job, :update_mask]

  field :job, 1, type: Google.Cloud.Scheduler.V1beta1.Job
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Scheduler.V1beta1.DeleteJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.PauseJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.ResumeJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.RunJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Scheduler.V1beta1.CloudScheduler.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.scheduler.v1beta1.CloudScheduler"

  rpc :ListJobs,
      Google.Cloud.Scheduler.V1beta1.ListJobsRequest,
      Google.Cloud.Scheduler.V1beta1.ListJobsResponse

  rpc :GetJob, Google.Cloud.Scheduler.V1beta1.GetJobRequest, Google.Cloud.Scheduler.V1beta1.Job

  rpc :CreateJob,
      Google.Cloud.Scheduler.V1beta1.CreateJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :UpdateJob,
      Google.Cloud.Scheduler.V1beta1.UpdateJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :DeleteJob, Google.Cloud.Scheduler.V1beta1.DeleteJobRequest, Google.Protobuf.Empty

  rpc :PauseJob,
      Google.Cloud.Scheduler.V1beta1.PauseJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :ResumeJob,
      Google.Cloud.Scheduler.V1beta1.ResumeJobRequest,
      Google.Cloud.Scheduler.V1beta1.Job

  rpc :RunJob, Google.Cloud.Scheduler.V1beta1.RunJobRequest, Google.Cloud.Scheduler.V1beta1.Job
end

defmodule Google.Cloud.Scheduler.V1beta1.CloudScheduler.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Scheduler.V1beta1.CloudScheduler.Service
end
