defmodule Google.Cloud.Aiplatform.V1.CustomJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.CustomJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          job_spec: Google.Cloud.Aiplatform.V1.CustomJobSpec.t() | nil,
          state: Google.Cloud.Aiplatform.V1.JobState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :job_spec,
    :state,
    :create_time,
    :start_time,
    :end_time,
    :update_time,
    :error,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :job_spec, 4, type: Google.Cloud.Aiplatform.V1.CustomJobSpec
  field :state, 5, type: Google.Cloud.Aiplatform.V1.JobState, enum: true
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :start_time, 7, type: Google.Protobuf.Timestamp
  field :end_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :error, 10, type: Google.Rpc.Status

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CustomJob.LabelsEntry,
    map: true

  field :encryption_spec, 12, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
end

defmodule Google.Cloud.Aiplatform.V1.CustomJobSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool_specs: [Google.Cloud.Aiplatform.V1.WorkerPoolSpec.t()],
          scheduling: Google.Cloud.Aiplatform.V1.Scheduling.t() | nil,
          service_account: String.t(),
          network: String.t(),
          base_output_directory: Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil
        }

  defstruct [:worker_pool_specs, :scheduling, :service_account, :network, :base_output_directory]

  field :worker_pool_specs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.WorkerPoolSpec
  field :scheduling, 3, type: Google.Cloud.Aiplatform.V1.Scheduling
  field :service_account, 4, type: :string
  field :network, 5, type: :string
  field :base_output_directory, 6, type: Google.Cloud.Aiplatform.V1.GcsDestination
end

defmodule Google.Cloud.Aiplatform.V1.WorkerPoolSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: {atom, any},
          machine_spec: Google.Cloud.Aiplatform.V1.MachineSpec.t() | nil,
          replica_count: integer,
          disk_spec: Google.Cloud.Aiplatform.V1.DiskSpec.t() | nil
        }

  defstruct [:task, :machine_spec, :replica_count, :disk_spec]

  oneof :task, 0
  field :container_spec, 6, type: Google.Cloud.Aiplatform.V1.ContainerSpec, oneof: 0
  field :python_package_spec, 7, type: Google.Cloud.Aiplatform.V1.PythonPackageSpec, oneof: 0
  field :machine_spec, 1, type: Google.Cloud.Aiplatform.V1.MachineSpec
  field :replica_count, 2, type: :int64
  field :disk_spec, 5, type: Google.Cloud.Aiplatform.V1.DiskSpec
end

defmodule Google.Cloud.Aiplatform.V1.ContainerSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t(),
          command: [String.t()],
          args: [String.t()],
          env: [Google.Cloud.Aiplatform.V1.EnvVar.t()]
        }

  defstruct [:image_uri, :command, :args, :env]

  field :image_uri, 1, type: :string
  field :command, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :env, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.EnvVar
end

defmodule Google.Cloud.Aiplatform.V1.PythonPackageSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executor_image_uri: String.t(),
          package_uris: [String.t()],
          python_module: String.t(),
          args: [String.t()],
          env: [Google.Cloud.Aiplatform.V1.EnvVar.t()]
        }

  defstruct [:executor_image_uri, :package_uris, :python_module, :args, :env]

  field :executor_image_uri, 1, type: :string
  field :package_uris, 2, repeated: true, type: :string
  field :python_module, 3, type: :string
  field :args, 4, repeated: true, type: :string
  field :env, 5, repeated: true, type: Google.Cloud.Aiplatform.V1.EnvVar
end

defmodule Google.Cloud.Aiplatform.V1.Scheduling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          timeout: Google.Protobuf.Duration.t() | nil,
          restart_job_on_worker_restart: boolean
        }

  defstruct [:timeout, :restart_job_on_worker_restart]

  field :timeout, 1, type: Google.Protobuf.Duration
  field :restart_job_on_worker_restart, 3, type: :bool
end
