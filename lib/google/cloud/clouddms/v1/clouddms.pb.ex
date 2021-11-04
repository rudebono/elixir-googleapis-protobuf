defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.ListMigrationJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_jobs: [Google.Cloud.Clouddms.V1.MigrationJob.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:migration_jobs, :next_page_token, :unreachable]

  field :migration_jobs, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.MigrationJob,
    json_name: "migrationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.GetMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.CreateMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migration_job_id: String.t(),
          migration_job: Google.Cloud.Clouddms.V1.MigrationJob.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :migration_job_id, :migration_job, :request_id]

  field :parent, 1, type: :string
  field :migration_job_id, 2, type: :string, json_name: "migrationJobId"
  field :migration_job, 3, type: Google.Cloud.Clouddms.V1.MigrationJob, json_name: "migrationJob"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          migration_job: Google.Cloud.Clouddms.V1.MigrationJob.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :migration_job, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :migration_job, 2, type: Google.Cloud.Clouddms.V1.MigrationJob, json_name: "migrationJob"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          force: boolean
        }

  defstruct [:name, :request_id, :force]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.StartMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.StopMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.RestartMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.GenerateSshScriptRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_config:
            {:vm_creation_config, Google.Cloud.Clouddms.V1.VmCreationConfig.t() | nil}
            | {:vm_selection_config, Google.Cloud.Clouddms.V1.VmSelectionConfig.t() | nil},
          migration_job: String.t(),
          vm: String.t(),
          vm_port: integer
        }

  defstruct [:vm_config, :migration_job, :vm, :vm_port]

  oneof :vm_config, 0

  field :migration_job, 1, type: :string, json_name: "migrationJob"
  field :vm, 2, type: :string

  field :vm_creation_config, 100,
    type: Google.Cloud.Clouddms.V1.VmCreationConfig,
    json_name: "vmCreationConfig",
    oneof: 0

  field :vm_selection_config, 101,
    type: Google.Cloud.Clouddms.V1.VmSelectionConfig,
    json_name: "vmSelectionConfig",
    oneof: 0

  field :vm_port, 3, type: :int32, json_name: "vmPort"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.VmCreationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_machine_type: String.t(),
          vm_zone: String.t(),
          subnet: String.t()
        }

  defstruct [:vm_machine_type, :vm_zone, :subnet]

  field :vm_machine_type, 1, type: :string, json_name: "vmMachineType"
  field :vm_zone, 2, type: :string, json_name: "vmZone"
  field :subnet, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.VmSelectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_zone: String.t()
        }

  defstruct [:vm_zone]

  field :vm_zone, 1, type: :string, json_name: "vmZone"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.SshScript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          script: String.t()
        }

  defstruct [:script]

  field :script, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          connection_profiles: [Google.Cloud.Clouddms.V1.ConnectionProfile.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:connection_profiles, :next_page_token, :unreachable]

  field :connection_profiles, 1,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.GetConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          connection_profile_id: String.t(),
          connection_profile: Google.Cloud.Clouddms.V1.ConnectionProfile.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :connection_profile_id, :connection_profile, :request_id]

  field :parent, 1, type: :string
  field :connection_profile_id, 2, type: :string, json_name: "connectionProfileId"

  field :connection_profile, 3,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          connection_profile: Google.Cloud.Clouddms.V1.ConnectionProfile.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :connection_profile, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :connection_profile, 2,
    type: Google.Cloud.Clouddms.V1.ConnectionProfile,
    json_name: "connectionProfile"

  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          force: boolean
        }

  defstruct [:name, :request_id, :force]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.OperationMetadata do
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

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.clouddms.v1.DataMigrationService"

  rpc :ListMigrationJobs,
      Google.Cloud.Clouddms.V1.ListMigrationJobsRequest,
      Google.Cloud.Clouddms.V1.ListMigrationJobsResponse

  rpc :GetMigrationJob,
      Google.Cloud.Clouddms.V1.GetMigrationJobRequest,
      Google.Cloud.Clouddms.V1.MigrationJob

  rpc :CreateMigrationJob,
      Google.Cloud.Clouddms.V1.CreateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :UpdateMigrationJob,
      Google.Cloud.Clouddms.V1.UpdateMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteMigrationJob,
      Google.Cloud.Clouddms.V1.DeleteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StartMigrationJob,
      Google.Cloud.Clouddms.V1.StartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :StopMigrationJob,
      Google.Cloud.Clouddms.V1.StopMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :ResumeMigrationJob,
      Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :PromoteMigrationJob,
      Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :VerifyMigrationJob,
      Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :RestartMigrationJob,
      Google.Cloud.Clouddms.V1.RestartMigrationJobRequest,
      Google.Longrunning.Operation

  rpc :GenerateSshScript,
      Google.Cloud.Clouddms.V1.GenerateSshScriptRequest,
      Google.Cloud.Clouddms.V1.SshScript

  rpc :ListConnectionProfiles,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesRequest,
      Google.Cloud.Clouddms.V1.ListConnectionProfilesResponse

  rpc :GetConnectionProfile,
      Google.Cloud.Clouddms.V1.GetConnectionProfileRequest,
      Google.Cloud.Clouddms.V1.ConnectionProfile

  rpc :CreateConnectionProfile,
      Google.Cloud.Clouddms.V1.CreateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectionProfile,
      Google.Cloud.Clouddms.V1.UpdateConnectionProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectionProfile,
      Google.Cloud.Clouddms.V1.DeleteConnectionProfileRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Clouddms.V1.DataMigrationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Clouddms.V1.DataMigrationService.Service
end
