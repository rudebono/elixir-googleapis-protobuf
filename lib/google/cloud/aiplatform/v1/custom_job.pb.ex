defmodule Google.Cloud.Aiplatform.V1.CustomJob.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1.CustomJob.WebAccessUrisEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil,
          web_access_uris: %{String.t() => String.t()}
        }

  defstruct name: "",
            display_name: "",
            job_spec: nil,
            state: :JOB_STATE_UNSPECIFIED,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            error: nil,
            labels: %{},
            encryption_spec: nil,
            web_access_uris: %{}

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :job_spec, 4,
    type: Google.Cloud.Aiplatform.V1.CustomJobSpec,
    json_name: "jobSpec",
    deprecated: false

  field :state, 5, type: Google.Cloud.Aiplatform.V1.JobState, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :error, 10, type: Google.Rpc.Status, deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CustomJob.LabelsEntry,
    map: true

  field :encryption_spec, 12,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :web_access_uris, 16,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CustomJob.WebAccessUrisEntry,
    json_name: "webAccessUris",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CustomJobSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool_specs: [Google.Cloud.Aiplatform.V1.WorkerPoolSpec.t()],
          scheduling: Google.Cloud.Aiplatform.V1.Scheduling.t() | nil,
          service_account: String.t(),
          network: String.t(),
          reserved_ip_ranges: [String.t()],
          base_output_directory: Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil,
          tensorboard: String.t(),
          enable_web_access: boolean
        }

  defstruct worker_pool_specs: [],
            scheduling: nil,
            service_account: "",
            network: "",
            reserved_ip_ranges: [],
            base_output_directory: nil,
            tensorboard: "",
            enable_web_access: false

  field :worker_pool_specs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.WorkerPoolSpec,
    json_name: "workerPoolSpecs",
    deprecated: false

  field :scheduling, 3, type: Google.Cloud.Aiplatform.V1.Scheduling
  field :service_account, 4, type: :string, json_name: "serviceAccount"
  field :network, 5, type: :string, deprecated: false

  field :reserved_ip_ranges, 13,
    repeated: true,
    type: :string,
    json_name: "reservedIpRanges",
    deprecated: false

  field :base_output_directory, 6,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "baseOutputDirectory"

  field :tensorboard, 7, type: :string, deprecated: false
  field :enable_web_access, 10, type: :bool, json_name: "enableWebAccess", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.WorkerPoolSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task:
            {:container_spec, Google.Cloud.Aiplatform.V1.ContainerSpec.t() | nil}
            | {:python_package_spec, Google.Cloud.Aiplatform.V1.PythonPackageSpec.t() | nil},
          machine_spec: Google.Cloud.Aiplatform.V1.MachineSpec.t() | nil,
          replica_count: integer,
          nfs_mounts: [Google.Cloud.Aiplatform.V1.NfsMount.t()],
          disk_spec: Google.Cloud.Aiplatform.V1.DiskSpec.t() | nil
        }

  defstruct task: nil,
            machine_spec: nil,
            replica_count: 0,
            nfs_mounts: [],
            disk_spec: nil

  oneof :task, 0

  field :container_spec, 6,
    type: Google.Cloud.Aiplatform.V1.ContainerSpec,
    json_name: "containerSpec",
    oneof: 0

  field :python_package_spec, 7,
    type: Google.Cloud.Aiplatform.V1.PythonPackageSpec,
    json_name: "pythonPackageSpec",
    oneof: 0

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :replica_count, 2, type: :int64, json_name: "replicaCount", deprecated: false

  field :nfs_mounts, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NfsMount,
    json_name: "nfsMounts",
    deprecated: false

  field :disk_spec, 5, type: Google.Cloud.Aiplatform.V1.DiskSpec, json_name: "diskSpec"
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

  defstruct image_uri: "",
            command: [],
            args: [],
            env: []

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
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

  defstruct executor_image_uri: "",
            package_uris: [],
            python_module: "",
            args: [],
            env: []

  field :executor_image_uri, 1, type: :string, json_name: "executorImageUri", deprecated: false

  field :package_uris, 2,
    repeated: true,
    type: :string,
    json_name: "packageUris",
    deprecated: false

  field :python_module, 3, type: :string, json_name: "pythonModule", deprecated: false
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

  defstruct timeout: nil,
            restart_job_on_worker_restart: false

  field :timeout, 1, type: Google.Protobuf.Duration
  field :restart_job_on_worker_restart, 3, type: :bool, json_name: "restartJobOnWorkerRestart"
end
