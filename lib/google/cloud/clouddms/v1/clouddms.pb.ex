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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
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

  field :migration_jobs, 1, repeated: true, type: Google.Cloud.Clouddms.V1.MigrationJob
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :migration_job_id, 2, type: :string
  field :migration_job, 3, type: Google.Cloud.Clouddms.V1.MigrationJob
  field :request_id, 4, type: :string
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

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :migration_job, 2, type: Google.Cloud.Clouddms.V1.MigrationJob
  field :request_id, 3, type: :string
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
  field :request_id, 2, type: :string
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Clouddms.V1.StartMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.StopMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ResumeMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.PromoteMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.VerifyMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.RestartMigrationJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GenerateSshScriptRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_config: {atom, any},
          migration_job: String.t(),
          vm: String.t(),
          vm_port: integer
        }

  defstruct [:vm_config, :migration_job, :vm, :vm_port]

  oneof :vm_config, 0
  field :migration_job, 1, type: :string
  field :vm, 2, type: :string
  field :vm_creation_config, 100, type: Google.Cloud.Clouddms.V1.VmCreationConfig, oneof: 0
  field :vm_selection_config, 101, type: Google.Cloud.Clouddms.V1.VmSelectionConfig, oneof: 0
  field :vm_port, 3, type: :int32
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

  field :vm_machine_type, 1, type: :string
  field :vm_zone, 2, type: :string
  field :subnet, 3, type: :string
end

defmodule Google.Cloud.Clouddms.V1.VmSelectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_zone: String.t()
        }

  defstruct [:vm_zone]

  field :vm_zone, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.SshScript do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          script: String.t()
        }

  defstruct [:script]

  field :script, 1, type: :string
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
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

  field :connection_profiles, 1, repeated: true, type: Google.Cloud.Clouddms.V1.ConnectionProfile
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Clouddms.V1.GetConnectionProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :connection_profile_id, 2, type: :string
  field :connection_profile, 3, type: Google.Cloud.Clouddms.V1.ConnectionProfile
  field :request_id, 4, type: :string
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

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :connection_profile, 2, type: Google.Cloud.Clouddms.V1.ConnectionProfile
  field :request_id, 3, type: :string
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
  field :request_id, 2, type: :string
  field :force, 3, type: :bool
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

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string
  field :requested_cancellation, 6, type: :bool
  field :api_version, 7, type: :string
end
