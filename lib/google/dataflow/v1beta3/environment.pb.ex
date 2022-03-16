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

  defstruct temp_storage_prefix: "",
            cluster_manager_api_service: "",
            experiments: [],
            service_options: [],
            service_kms_key_name: "",
            worker_pools: [],
            user_agent: nil,
            version: nil,
            dataset: "",
            sdk_pipeline_options: nil,
            internal_experiments: nil,
            service_account_email: "",
            flex_resource_scheduling_goal: :FLEXRS_UNSPECIFIED,
            worker_region: "",
            worker_zone: "",
            shuffle_mode: :SHUFFLE_MODE_UNSPECIFIED,
            debug_options: nil

  field :temp_storage_prefix, 1, type: :string, json_name: "tempStoragePrefix"
  field :cluster_manager_api_service, 2, type: :string, json_name: "clusterManagerApiService"
  field :experiments, 3, repeated: true, type: :string
  field :service_options, 16, repeated: true, type: :string, json_name: "serviceOptions"
  field :service_kms_key_name, 12, type: :string, json_name: "serviceKmsKeyName"

  field :worker_pools, 4,
    repeated: true,
    type: Google.Dataflow.V1beta3.WorkerPool,
    json_name: "workerPools"

  field :user_agent, 5, type: Google.Protobuf.Struct, json_name: "userAgent"
  field :version, 6, type: Google.Protobuf.Struct
  field :dataset, 7, type: :string
  field :sdk_pipeline_options, 8, type: Google.Protobuf.Struct, json_name: "sdkPipelineOptions"
  field :internal_experiments, 9, type: Google.Protobuf.Any, json_name: "internalExperiments"
  field :service_account_email, 10, type: :string, json_name: "serviceAccountEmail"

  field :flex_resource_scheduling_goal, 11,
    type: Google.Dataflow.V1beta3.FlexResourceSchedulingGoal,
    json_name: "flexResourceSchedulingGoal",
    enum: true

  field :worker_region, 13, type: :string, json_name: "workerRegion"
  field :worker_zone, 14, type: :string, json_name: "workerZone"

  field :shuffle_mode, 15,
    type: Google.Dataflow.V1beta3.ShuffleMode,
    json_name: "shuffleMode",
    enum: true,
    deprecated: false

  field :debug_options, 17, type: Google.Dataflow.V1beta3.DebugOptions, json_name: "debugOptions"
end
defmodule Google.Dataflow.V1beta3.Package do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location: String.t()
        }

  defstruct name: "",
            location: ""

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

  defstruct size_gb: 0,
            disk_type: "",
            mount_point: ""

  field :size_gb, 1, type: :int32, json_name: "sizeGb"
  field :disk_type, 2, type: :string, json_name: "diskType"
  field :mount_point, 3, type: :string, json_name: "mountPoint"
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

  defstruct base_url: "",
            reporting_enabled: false,
            service_path: "",
            shuffle_service_path: "",
            worker_id: "",
            temp_storage_prefix: ""

  field :base_url, 1, type: :string, json_name: "baseUrl"
  field :reporting_enabled, 2, type: :bool, json_name: "reportingEnabled"
  field :service_path, 3, type: :string, json_name: "servicePath"
  field :shuffle_service_path, 4, type: :string, json_name: "shuffleServicePath"
  field :worker_id, 5, type: :string, json_name: "workerId"
  field :temp_storage_prefix, 6, type: :string, json_name: "tempStoragePrefix"
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

  defstruct task_user: "",
            task_group: "",
            oauth_scopes: [],
            base_url: "",
            dataflow_api_version: "",
            parallel_worker_settings: nil,
            base_task_dir: "",
            continue_on_exception: false,
            log_to_serialconsole: false,
            alsologtostderr: false,
            log_upload_location: "",
            log_dir: "",
            temp_storage_prefix: "",
            harness_command: "",
            workflow_file_name: "",
            commandlines_file_name: "",
            vm_id: "",
            language_hint: "",
            streaming_worker_main_class: ""

  field :task_user, 1, type: :string, json_name: "taskUser"
  field :task_group, 2, type: :string, json_name: "taskGroup"
  field :oauth_scopes, 3, repeated: true, type: :string, json_name: "oauthScopes"
  field :base_url, 4, type: :string, json_name: "baseUrl"
  field :dataflow_api_version, 5, type: :string, json_name: "dataflowApiVersion"

  field :parallel_worker_settings, 6,
    type: Google.Dataflow.V1beta3.WorkerSettings,
    json_name: "parallelWorkerSettings"

  field :base_task_dir, 7, type: :string, json_name: "baseTaskDir"
  field :continue_on_exception, 8, type: :bool, json_name: "continueOnException"
  field :log_to_serialconsole, 9, type: :bool, json_name: "logToSerialconsole"
  field :alsologtostderr, 10, type: :bool
  field :log_upload_location, 11, type: :string, json_name: "logUploadLocation"
  field :log_dir, 12, type: :string, json_name: "logDir"
  field :temp_storage_prefix, 13, type: :string, json_name: "tempStoragePrefix"
  field :harness_command, 14, type: :string, json_name: "harnessCommand"
  field :workflow_file_name, 15, type: :string, json_name: "workflowFileName"
  field :commandlines_file_name, 16, type: :string, json_name: "commandlinesFileName"
  field :vm_id, 17, type: :string, json_name: "vmId"
  field :language_hint, 18, type: :string, json_name: "languageHint"
  field :streaming_worker_main_class, 19, type: :string, json_name: "streamingWorkerMainClass"
end
defmodule Google.Dataflow.V1beta3.AutoscalingSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          algorithm: Google.Dataflow.V1beta3.AutoscalingAlgorithm.t(),
          max_num_workers: integer
        }

  defstruct algorithm: :AUTOSCALING_ALGORITHM_UNKNOWN,
            max_num_workers: 0

  field :algorithm, 1, type: Google.Dataflow.V1beta3.AutoscalingAlgorithm, enum: true
  field :max_num_workers, 2, type: :int32, json_name: "maxNumWorkers"
end
defmodule Google.Dataflow.V1beta3.SdkHarnessContainerImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          container_image: String.t(),
          use_single_core_per_container: boolean,
          environment_id: String.t(),
          capabilities: [String.t()]
        }

  defstruct container_image: "",
            use_single_core_per_container: false,
            environment_id: "",
            capabilities: []

  field :container_image, 1, type: :string, json_name: "containerImage"
  field :use_single_core_per_container, 2, type: :bool, json_name: "useSingleCorePerContainer"
  field :environment_id, 3, type: :string, json_name: "environmentId"
  field :capabilities, 4, repeated: true, type: :string
end
defmodule Google.Dataflow.V1beta3.WorkerPool.MetadataEntry do
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

  defstruct kind: "",
            num_workers: 0,
            packages: [],
            default_package_set: :DEFAULT_PACKAGE_SET_UNKNOWN,
            machine_type: "",
            teardown_policy: :TEARDOWN_POLICY_UNKNOWN,
            disk_size_gb: 0,
            disk_type: "",
            disk_source_image: "",
            zone: "",
            taskrunner_settings: nil,
            on_host_maintenance: "",
            data_disks: [],
            metadata: %{},
            autoscaling_settings: nil,
            pool_args: nil,
            network: "",
            subnetwork: "",
            worker_harness_container_image: "",
            num_threads_per_worker: 0,
            ip_configuration: :WORKER_IP_UNSPECIFIED,
            sdk_harness_container_images: []

  field :kind, 1, type: :string
  field :num_workers, 2, type: :int32, json_name: "numWorkers"
  field :packages, 3, repeated: true, type: Google.Dataflow.V1beta3.Package

  field :default_package_set, 4,
    type: Google.Dataflow.V1beta3.DefaultPackageSet,
    json_name: "defaultPackageSet",
    enum: true

  field :machine_type, 5, type: :string, json_name: "machineType"

  field :teardown_policy, 6,
    type: Google.Dataflow.V1beta3.TeardownPolicy,
    json_name: "teardownPolicy",
    enum: true

  field :disk_size_gb, 7, type: :int32, json_name: "diskSizeGb"
  field :disk_type, 16, type: :string, json_name: "diskType"
  field :disk_source_image, 8, type: :string, json_name: "diskSourceImage"
  field :zone, 9, type: :string

  field :taskrunner_settings, 10,
    type: Google.Dataflow.V1beta3.TaskRunnerSettings,
    json_name: "taskrunnerSettings"

  field :on_host_maintenance, 11, type: :string, json_name: "onHostMaintenance"

  field :data_disks, 12,
    repeated: true,
    type: Google.Dataflow.V1beta3.Disk,
    json_name: "dataDisks"

  field :metadata, 13,
    repeated: true,
    type: Google.Dataflow.V1beta3.WorkerPool.MetadataEntry,
    map: true

  field :autoscaling_settings, 14,
    type: Google.Dataflow.V1beta3.AutoscalingSettings,
    json_name: "autoscalingSettings"

  field :pool_args, 15, type: Google.Protobuf.Any, json_name: "poolArgs"
  field :network, 17, type: :string
  field :subnetwork, 19, type: :string

  field :worker_harness_container_image, 18,
    type: :string,
    json_name: "workerHarnessContainerImage"

  field :num_threads_per_worker, 20, type: :int32, json_name: "numThreadsPerWorker"

  field :ip_configuration, 21,
    type: Google.Dataflow.V1beta3.WorkerIPAddressConfiguration,
    json_name: "ipConfiguration",
    enum: true

  field :sdk_harness_container_images, 22,
    repeated: true,
    type: Google.Dataflow.V1beta3.SdkHarnessContainerImage,
    json_name: "sdkHarnessContainerImages"
end
defmodule Google.Dataflow.V1beta3.DebugOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_hot_key_logging: boolean
        }

  defstruct enable_hot_key_logging: false

  field :enable_hot_key_logging, 1, type: :bool, json_name: "enableHotKeyLogging"
end
