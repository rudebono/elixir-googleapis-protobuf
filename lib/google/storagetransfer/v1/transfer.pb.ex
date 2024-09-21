defmodule Google.Storagetransfer.V1.GetGoogleServiceAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Storagetransfer.V1.CreateTransferJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transfer_job, 1,
    type: Google.Storagetransfer.V1.TransferJob,
    json_name: "transferJob",
    deprecated: false
end

defmodule Google.Storagetransfer.V1.UpdateTransferJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false

  field :transfer_job, 3,
    type: Google.Storagetransfer.V1.TransferJob,
    json_name: "transferJob",
    deprecated: false

  field :update_transfer_job_field_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateTransferJobFieldMask"
end

defmodule Google.Storagetransfer.V1.GetTransferJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Storagetransfer.V1.DeleteTransferJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Storagetransfer.V1.ListTransferJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Storagetransfer.V1.ListTransferJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transfer_jobs, 1,
    repeated: true,
    type: Google.Storagetransfer.V1.TransferJob,
    json_name: "transferJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storagetransfer.V1.PauseTransferOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storagetransfer.V1.ResumeTransferOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storagetransfer.V1.RunTransferJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName", deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
end

defmodule Google.Storagetransfer.V1.CreateAgentPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :agent_pool, 2,
    type: Google.Storagetransfer.V1.AgentPool,
    json_name: "agentPool",
    deprecated: false

  field :agent_pool_id, 3, type: :string, json_name: "agentPoolId", deprecated: false
end

defmodule Google.Storagetransfer.V1.UpdateAgentPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent_pool, 1,
    type: Google.Storagetransfer.V1.AgentPool,
    json_name: "agentPool",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Storagetransfer.V1.GetAgentPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storagetransfer.V1.DeleteAgentPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storagetransfer.V1.ListAgentPoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Storagetransfer.V1.ListAgentPoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent_pools, 1,
    repeated: true,
    type: Google.Storagetransfer.V1.AgentPool,
    json_name: "agentPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storagetransfer.V1.StorageTransferService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.storagetransfer.v1.StorageTransferService",
    protoc_gen_elixir_version: "0.13.0"

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

  rpc :DeleteTransferJob,
      Google.Storagetransfer.V1.DeleteTransferJobRequest,
      Google.Protobuf.Empty

  rpc :CreateAgentPool,
      Google.Storagetransfer.V1.CreateAgentPoolRequest,
      Google.Storagetransfer.V1.AgentPool

  rpc :UpdateAgentPool,
      Google.Storagetransfer.V1.UpdateAgentPoolRequest,
      Google.Storagetransfer.V1.AgentPool

  rpc :GetAgentPool,
      Google.Storagetransfer.V1.GetAgentPoolRequest,
      Google.Storagetransfer.V1.AgentPool

  rpc :ListAgentPools,
      Google.Storagetransfer.V1.ListAgentPoolsRequest,
      Google.Storagetransfer.V1.ListAgentPoolsResponse

  rpc :DeleteAgentPool, Google.Storagetransfer.V1.DeleteAgentPoolRequest, Google.Protobuf.Empty
end

defmodule Google.Storagetransfer.V1.StorageTransferService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Storagetransfer.V1.StorageTransferService.Service
end