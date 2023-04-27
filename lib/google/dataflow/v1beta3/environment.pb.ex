defmodule Google.Dataflow.V1beta3.JobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :JOB_TYPE_UNKNOWN, 0
  field :JOB_TYPE_BATCH, 1
  field :JOB_TYPE_STREAMING, 2
end

defmodule Google.Dataflow.V1beta3.FlexResourceSchedulingGoal do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FLEXRS_UNSPECIFIED, 0
  field :FLEXRS_SPEED_OPTIMIZED, 1
  field :FLEXRS_COST_OPTIMIZED, 2
end

defmodule Google.Dataflow.V1beta3.TeardownPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TEARDOWN_POLICY_UNKNOWN, 0
  field :TEARDOWN_ALWAYS, 1
  field :TEARDOWN_ON_SUCCESS, 2
  field :TEARDOWN_NEVER, 3
end

defmodule Google.Dataflow.V1beta3.DefaultPackageSet do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEFAULT_PACKAGE_SET_UNKNOWN, 0
  field :DEFAULT_PACKAGE_SET_NONE, 1
  field :DEFAULT_PACKAGE_SET_JAVA, 2
  field :DEFAULT_PACKAGE_SET_PYTHON, 3
end

defmodule Google.Dataflow.V1beta3.AutoscalingAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUTOSCALING_ALGORITHM_UNKNOWN, 0
  field :AUTOSCALING_ALGORITHM_NONE, 1
  field :AUTOSCALING_ALGORITHM_BASIC, 2
end

defmodule Google.Dataflow.V1beta3.WorkerIPAddressConfiguration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :WORKER_IP_UNSPECIFIED, 0
  field :WORKER_IP_PUBLIC, 1
  field :WORKER_IP_PRIVATE, 2
end

defmodule Google.Dataflow.V1beta3.ShuffleMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SHUFFLE_MODE_UNSPECIFIED, 0
  field :VM_BASED, 1
  field :SERVICE_BASED, 2
end

defmodule Google.Dataflow.V1beta3.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :location, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size_gb, 1, type: :int32, json_name: "sizeGb"
  field :disk_type, 2, type: :string, json_name: "diskType"
  field :mount_point, 3, type: :string, json_name: "mountPoint"
end

defmodule Google.Dataflow.V1beta3.WorkerSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :base_url, 1, type: :string, json_name: "baseUrl"
  field :reporting_enabled, 2, type: :bool, json_name: "reportingEnabled"
  field :service_path, 3, type: :string, json_name: "servicePath"
  field :shuffle_service_path, 4, type: :string, json_name: "shuffleServicePath"
  field :worker_id, 5, type: :string, json_name: "workerId"
  field :temp_storage_prefix, 6, type: :string, json_name: "tempStoragePrefix"
end

defmodule Google.Dataflow.V1beta3.TaskRunnerSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :algorithm, 1, type: Google.Dataflow.V1beta3.AutoscalingAlgorithm, enum: true
  field :max_num_workers, 2, type: :int32, json_name: "maxNumWorkers"
end

defmodule Google.Dataflow.V1beta3.SdkHarnessContainerImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :container_image, 1, type: :string, json_name: "containerImage"
  field :use_single_core_per_container, 2, type: :bool, json_name: "useSingleCorePerContainer"
  field :environment_id, 3, type: :string, json_name: "environmentId"
  field :capabilities, 4, repeated: true, type: :string
end

defmodule Google.Dataflow.V1beta3.WorkerPool.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.WorkerPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_hot_key_logging, 1, type: :bool, json_name: "enableHotKeyLogging"
end