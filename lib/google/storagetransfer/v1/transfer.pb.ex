defmodule Google.Storagetransfer.V1.GetGoogleServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t()
        }

  defstruct [:project_id]

  field :project_id, 1, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.CreateTransferJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_job: Google.Storagetransfer.V1.TransferJob.t() | nil
        }

  defstruct [:transfer_job]

  field :transfer_job, 1, type: Google.Storagetransfer.V1.TransferJob, json_name: "transferJob"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.UpdateTransferJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: String.t(),
          project_id: String.t(),
          transfer_job: Google.Storagetransfer.V1.TransferJob.t() | nil,
          update_transfer_job_field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:job_name, :project_id, :transfer_job, :update_transfer_job_field_mask]

  field :job_name, 1, type: :string, json_name: "jobName"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :transfer_job, 3, type: Google.Storagetransfer.V1.TransferJob, json_name: "transferJob"

  field :update_transfer_job_field_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateTransferJobFieldMask"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.GetTransferJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: String.t(),
          project_id: String.t()
        }

  defstruct [:job_name, :project_id]

  field :job_name, 1, type: :string, json_name: "jobName"
  field :project_id, 2, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.ListTransferJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:filter, :page_size, :page_token]

  field :filter, 1, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.ListTransferJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_jobs: [Google.Storagetransfer.V1.TransferJob.t()],
          next_page_token: String.t()
        }

  defstruct [:transfer_jobs, :next_page_token]

  field :transfer_jobs, 1,
    repeated: true,
    type: Google.Storagetransfer.V1.TransferJob,
    json_name: "transferJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.PauseTransferOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.ResumeTransferOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.RunTransferJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_name: String.t(),
          project_id: String.t()
        }

  defstruct [:job_name, :project_id]

  field :job_name, 1, type: :string, json_name: "jobName"
  field :project_id, 2, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Storagetransfer.V1.StorageTransferService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.storagetransfer.v1.StorageTransferService"

  rpc :GetGoogleServiceAccount,
      Google.Storagetransfer.V1.GetGoogleServiceAccountRequest,
      Google.Storagetransfer.V1.GoogleServiceAccount

  rpc :CreateTransferJob,
      Google.Storagetransfer.V1.CreateTransferJobRequest,
      Google.Storagetransfer.V1.TransferJob

  rpc :UpdateTransferJob,
      Google.Storagetransfer.V1.UpdateTransferJobRequest,
      Google.Storagetransfer.V1.TransferJob

  rpc :GetTransferJob,
      Google.Storagetransfer.V1.GetTransferJobRequest,
      Google.Storagetransfer.V1.TransferJob

  rpc :ListTransferJobs,
      Google.Storagetransfer.V1.ListTransferJobsRequest,
      Google.Storagetransfer.V1.ListTransferJobsResponse

  rpc :PauseTransferOperation,
      Google.Storagetransfer.V1.PauseTransferOperationRequest,
      Google.Protobuf.Empty

  rpc :ResumeTransferOperation,
      Google.Storagetransfer.V1.ResumeTransferOperationRequest,
      Google.Protobuf.Empty

  rpc :RunTransferJob,
      Google.Storagetransfer.V1.RunTransferJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Storagetransfer.V1.StorageTransferService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Storagetransfer.V1.StorageTransferService.Service
end
