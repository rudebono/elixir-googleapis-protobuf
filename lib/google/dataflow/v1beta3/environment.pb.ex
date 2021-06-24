defmodule Google.Dataflow.V1beta3.JobType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :JOB_TYPE_UNKNOWN | :JOB_TYPE_BATCH | :JOB_TYPE_STREAMING

  field :JOB_TYPE_UNKNOWN, 0

  field :JOB_TYPE_BATCH, 1

  field :JOB_TYPE_STREAMING, 2
end

defmodule Google.Dataflow.V1beta3.FlexResourceSchedulingGoal do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FLEXRS_UNSPECIFIED | :FLEXRS_SPEED_OPTIMIZED | :FLEXRS_COST_OPTIMIZED

  field :FLEXRS_UNSPECIFIED, 0

  field :FLEXRS_SPEED_OPTIMIZED, 1

  field :FLEXRS_COST_OPTIMIZED, 2
end

defmodule Google.Dataflow.V1beta3.TeardownPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TEARDOWN_POLICY_UNKNOWN
          | :TEARDOWN_ALWAYS
          | :TEARDOWN_ON_SUCCESS
          | :TEARDOWN_NEVER

  field :TEARDOWN_POLICY_UNKNOWN, 0

  field :TEARDOWN_ALWAYS, 1

  field :TEARDOWN_ON_SUCCESS, 2

  field :TEARDOWN_NEVER, 3
end

defmodule Google.Dataflow.V1beta3.DefaultPackageSet do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DEFAULT_PACKAGE_SET_UNKNOWN
          | :DEFAULT_PACKAGE_SET_NONE
          | :DEFAULT_PACKAGE_SET_JAVA
          | :DEFAULT_PACKAGE_SET_PYTHON

  field :DEFAULT_PACKAGE_SET_UNKNOWN, 0

  field :DEFAULT_PACKAGE_SET_NONE, 1

  field :DEFAULT_PACKAGE_SET_JAVA, 2

  field :DEFAULT_PACKAGE_SET_PYTHON, 3
end

defmodule Google.Dataflow.V1beta3.AutoscalingAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AUTOSCALING_ALGORITHM_UNKNOWN
          | :AUTOSCALING_ALGORITHM_NONE
          | :AUTOSCALING_ALGORITHM_BASIC

  field :AUTOSCALING_ALGORITHM_UNKNOWN, 0

  field :AUTOSCALING_ALGORITHM_NONE, 1

  field :AUTOSCALING_ALGORITHM_BASIC, 2
end

defmodule Google.Dataflow.V1beta3.WorkerIPAddressConfiguration do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :WORKER_IP_UNSPECIFIED | :WORKER_IP_PUBLIC | :WORKER_IP_PRIVATE

  field :WORKER_IP_UNSPECIFIED, 0

  field :WORKER_IP_PUBLIC, 1

  field :WORKER_IP_PRIVATE, 2
end

defmodule Google.Dataflow.V1beta3.ShuffleMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SHUFFLE_MODE_UNSPECIFIED | :VM_BASED | :SERVICE_BASED

  field :SHUFFLE_MODE_UNSPECIFIED, 0

  field :VM_BASED, 1

  field :SERVICE_BASED, 2
end

defmodule Google.Dataflow.V1beta3.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          temp_storage_prefix: String.t(),
          cluster_manager_api_service: String.t(),
          experiments: [String.t()],
          service_options: [String.t()],
          service_kms_key_name: String.t(),
          worker_pools: [Google.Dataflow.V1beta3.WorkerPool.t()],
          user_agent: Google.Protobuf.Struct.t() | nil,
          version: Google.Protobuf.Struct.t() | nil,
          dataset: String.t(),
          sdk_pipeline_options: Google.Protobuf.Struct.t() | nil,
          internal_experiments: Google.Protobuf.Any.t() | nil,
          service_account_email: String.t(),
          flex_resource_scheduling_goal: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal.t(),
          worker_region: String.t(),
          worker_zone: String.t(),
          shuffle_mode: Google.Dataflow.V1beta3.ShuffleMode.t(),
          debug_options: Google.Dataflow.V1beta3.DebugOptions.t() | nil
        }

  defstruct [
    :temp_storage_prefix,
    :cluster_manager_api_service,
    :experiments,
    :service_options,
    :service_kms_key_name,
    :worker_pools,
    :user_agent,
    :version,
    :dataset,
    :sdk_pipeline_options,
    :internal_experiments,
    :service_account_email,
    :flex_resource_scheduling_goal,
    :worker_region,
    :worker_zone,
    :shuffle_mode,
    :debug_options
  ]

  field :temp_storage_prefix, 1, type: :string
  field :cluster_manager_api_service, 2, type: :string
  field :experiments, 3, repeated: true, type: :string
  field :service_options, 16, repeated: true, type: :string
  field :service_kms_key_name, 12, type: :string
  field :worker_pools, 4, repeated: true, type: Google.Dataflow.V1beta3.WorkerPool
  field :user_agent, 5, type: Google.Protobuf.Struct
  field :version, 6, type: Google.Protobuf.Struct
  field :dataset, 7, type: :string
  field :sdk_pipeline_options, 8, type: Google.Protobuf.Struct
  field :internal_experiments, 9, type: Google.Protobuf.Any
  field :service_account_email, 10, type: :string

  field :flex_resource_scheduling_goal, 11,
    type: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal,
    enum: true

  field :worker_region, 13, type: :string
  field :worker_zone, 14, type: :string
  field :shuffle_mode, 15, type: Google.Dataflow.V1beta3.ShuffleMode, enum: true
  field :debug_options, 17, type: Google.Dataflow.V1beta3.DebugOptions
end

defmodule Google.Dataflow.V1beta3.Package do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location: String.t()
        }

  defstruct [:name, :location]

  field :name, 1, type: :string
  field :location, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.Disk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          size_gb: integer,
          disk_type: String.t(),
          mount_point: String.t()
        }

  defstruct [:size_gb, :disk_type, :mount_point]

  field :size_gb, 1, type: :int32
  field :disk_type, 2, type: :string
  field :mount_point, 3, type: :string
end

defmodule Google.Dataflow.V1beta3.WorkerSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_url: String.t(),
          reporting_enabled: boolean,
          service_path: String.t(),
          shuffle_service_path: String.t(),
          worker_id: String.t(),
          temp_storage_prefix: String.t()
        }

  defstruct [
    :base_url,
    :reporting_enabled,
    :service_path,
    :shuffle_service_path,
    :worker_id,
    :temp_storage_prefix
  ]

  field :base_url, 1, type: :string
  field :reporting_enabled, 2, type: :bool
  field :service_path, 3, type: :string
  field :shuffle_service_path, 4, type: :string
  field :worker_id, 5, type: :string
  field :temp_storage_prefix, 6, type: :string
end

defmodule Google.Dataflow.V1beta3.TaskRunnerSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_user: String.t(),
          task_group: String.t(),
          oauth_scopes: [String.t()],
          base_url: String.t(),
          dataflow_api_version: String.t(),
          parallel_worker_settings: Google.Dataflow.V1beta3.WorkerSettings.t() | nil,
          base_task_dir: String.t(),
          continue_on_exception: boolean,
          log_to_serialconsole: boolean,
          alsologtostderr: boolean,
          log_upload_location: String.t(),
          log_dir: String.t(),
          temp_storage_prefix: String.t(),
          harness_command: String.t(),
          workflow_file_name: String.t(),
          commandlines_file_name: String.t(),
          vm_id: String.t(),
          language_hint: String.t(),
          streaming_worker_main_class: String.t()
        }

  defstruct [
    :task_user,
    :task_group,
    :oauth_scopes,
    :base_url,
    :dataflow_api_version,
    :parallel_worker_settings,
    :base_task_dir,
    :continue_on_exception,
    :log_to_serialconsole,
    :alsologtostderr,
    :log_upload_location,
    :log_dir,
    :temp_storage_prefix,
    :harness_command,
    :workflow_file_name,
    :commandlines_file_name,
    :vm_id,
    :language_hint,
    :streaming_worker_main_class
  ]

  field :task_user, 1, type: :string
  field :task_group, 2, type: :string
  field :oauth_scopes, 3, repeated: true, type: :string
  field :base_url, 4, type: :string
  field :dataflow_api_version, 5, type: :string
  field :parallel_worker_settings, 6, type: Google.Dataflow.V1beta3.WorkerSettings
  field :base_task_dir, 7, type: :string
  field :continue_on_exception, 8, type: :bool
  field :log_to_serialconsole, 9, type: :bool
  field :alsologtostderr, 10, type: :bool
  field :log_upload_location, 11, type: :string
  field :log_dir, 12, type: :string
  field :temp_storage_prefix, 13, type: :string
  field :harness_command, 14, type: :string
  field :workflow_file_name, 15, type: :string
  field :commandlines_file_name, 16, type: :string
  field :vm_id, 17, type: :string
  field :language_hint, 18, type: :string
  field :streaming_worker_main_class, 19, type: :string
end

defmodule Google.Dataflow.V1beta3.AutoscalingSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          algorithm: Google.Dataflow.V1beta3.AutoscalingAlgorithm.t(),
          max_num_workers: integer
        }

  defstruct [:algorithm, :max_num_workers]

  field :algorithm, 1, type: Google.Dataflow.V1beta3.AutoscalingAlgorithm, enum: true
  field :max_num_workers, 2, type: :int32
end

defmodule Google.Dataflow.V1beta3.SdkHarnessContainerImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          container_image: String.t(),
          use_single_core_per_container: boolean,
          environment_id: String.t()
        }

  defstruct [:container_image, :use_single_core_per_container, :environment_id]

  field :container_image, 1, type: :string
  field :use_single_core_per_container, 2, type: :bool
  field :environment_id, 3, type: :string
end

defmodule Google.Dataflow.V1beta3.WorkerPool.MetadataEntry do
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

defmodule Google.Dataflow.V1beta3.WorkerPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          num_workers: integer,
          packages: [Google.Dataflow.V1beta3.Package.t()],
          default_package_set: Google.Dataflow.V1beta3.DefaultPackageSet.t(),
          machine_type: String.t(),
          teardown_policy: Google.Dataflow.V1beta3.TeardownPolicy.t(),
          disk_size_gb: integer,
          disk_type: String.t(),
          disk_source_image: String.t(),
          zone: String.t(),
          taskrunner_settings: Google.Dataflow.V1beta3.TaskRunnerSettings.t() | nil,
          on_host_maintenance: String.t(),
          data_disks: [Google.Dataflow.V1beta3.Disk.t()],
          metadata: %{String.t() => String.t()},
          autoscaling_settings: Google.Dataflow.V1beta3.AutoscalingSettings.t() | nil,
          pool_args: Google.Protobuf.Any.t() | nil,
          network: String.t(),
          subnetwork: String.t(),
          worker_harness_container_image: String.t(),
          num_threads_per_worker: integer,
          ip_configuration: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration.t(),
          sdk_harness_container_images: [Google.Dataflow.V1beta3.SdkHarnessContainerImage.t()]
        }

  defstruct [
    :kind,
    :num_workers,
    :packages,
    :default_package_set,
    :machine_type,
    :teardown_policy,
    :disk_size_gb,
    :disk_type,
    :disk_source_image,
    :zone,
    :taskrunner_settings,
    :on_host_maintenance,
    :data_disks,
    :metadata,
    :autoscaling_settings,
    :pool_args,
    :network,
    :subnetwork,
    :worker_harness_container_image,
    :num_threads_per_worker,
    :ip_configuration,
    :sdk_harness_container_images
  ]

  field :kind, 1, type: :string
  field :num_workers, 2, type: :int32
  field :packages, 3, repeated: true, type: Google.Dataflow.V1beta3.Package
  field :default_package_set, 4, type: Google.Dataflow.V1beta3.DefaultPackageSet, enum: true
  field :machine_type, 5, type: :string
  field :teardown_policy, 6, type: Google.Dataflow.V1beta3.TeardownPolicy, enum: true
  field :disk_size_gb, 7, type: :int32
  field :disk_type, 16, type: :string
  field :disk_source_image, 8, type: :string
  field :zone, 9, type: :string
  field :taskrunner_settings, 10, type: Google.Dataflow.V1beta3.TaskRunnerSettings
  field :on_host_maintenance, 11, type: :string
  field :data_disks, 12, repeated: true, type: Google.Dataflow.V1beta3.Disk

  field :metadata, 13,
    repeated: true,
    type: Google.Dataflow.V1beta3.WorkerPool.MetadataEntry,
    map: true

  field :autoscaling_settings, 14, type: Google.Dataflow.V1beta3.AutoscalingSettings
  field :pool_args, 15, type: Google.Protobuf.Any
  field :network, 17, type: :string
  field :subnetwork, 19, type: :string
  field :worker_harness_container_image, 18, type: :string
  field :num_threads_per_worker, 20, type: :int32

  field :ip_configuration, 21,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    enum: true

  field :sdk_harness_container_images, 22,
    repeated: true,
    type: Google.Dataflow.V1beta3.SdkHarnessContainerImage
end

defmodule Google.Dataflow.V1beta3.DebugOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_hot_key_logging: boolean
        }

  defstruct [:enable_hot_key_logging]

  field :enable_hot_key_logging, 1, type: :bool
end
