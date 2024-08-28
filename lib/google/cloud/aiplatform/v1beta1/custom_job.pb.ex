defmodule Google.Cloud.Aiplatform.V1beta1.Scheduling.Strategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STRATEGY_UNSPECIFIED, 0
  field :ON_DEMAND, 1
  field :LOW_COST, 2
  field :STANDARD, 3
  field :SPOT, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.CustomJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CustomJob.WebAccessUrisEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CustomJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :job_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.CustomJobSpec,
    json_name: "jobSpec",
    deprecated: false

  field :state, 5, type: Google.Cloud.Aiplatform.V1beta1.JobState, enum: true, deprecated: false

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
    type: Google.Cloud.Aiplatform.V1beta1.CustomJob.LabelsEntry,
    map: true

  field :encryption_spec, 12,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :web_access_uris, 16,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.CustomJob.WebAccessUrisEntry,
    json_name: "webAccessUris",
    map: true,
    deprecated: false

  field :satisfies_pzs, 18, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 19, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CustomJobSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :persistent_resource_id, 14,
    type: :string,
    json_name: "persistentResourceId",
    deprecated: false

  field :worker_pool_specs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.WorkerPoolSpec,
    json_name: "workerPoolSpecs",
    deprecated: false

  field :scheduling, 3, type: Google.Cloud.Aiplatform.V1beta1.Scheduling
  field :service_account, 4, type: :string, json_name: "serviceAccount"
  field :network, 5, type: :string, deprecated: false

  field :reserved_ip_ranges, 13,
    repeated: true,
    type: :string,
    json_name: "reservedIpRanges",
    deprecated: false

  field :base_output_directory, 6,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "baseOutputDirectory"

  field :protected_artifact_location_id, 19,
    type: :string,
    json_name: "protectedArtifactLocationId"

  field :tensorboard, 7, type: :string, deprecated: false
  field :enable_web_access, 10, type: :bool, json_name: "enableWebAccess", deprecated: false

  field :enable_dashboard_access, 16,
    type: :bool,
    json_name: "enableDashboardAccess",
    deprecated: false

  field :experiment, 17, type: :string, deprecated: false
  field :experiment_run, 18, type: :string, json_name: "experimentRun", deprecated: false
  field :models, 20, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.WorkerPoolSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :task, 0

  field :container_spec, 6,
    type: Google.Cloud.Aiplatform.V1beta1.ContainerSpec,
    json_name: "containerSpec",
    oneof: 0

  field :python_package_spec, 7,
    type: Google.Cloud.Aiplatform.V1beta1.PythonPackageSpec,
    json_name: "pythonPackageSpec",
    oneof: 0

  field :machine_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MachineSpec,
    json_name: "machineSpec",
    deprecated: false

  field :replica_count, 2, type: :int64, json_name: "replicaCount", deprecated: false

  field :nfs_mounts, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NfsMount,
    json_name: "nfsMounts",
    deprecated: false

  field :disk_spec, 5, type: Google.Cloud.Aiplatform.V1beta1.DiskSpec, json_name: "diskSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ContainerSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
  field :command, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :env, 4, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar
end

defmodule Google.Cloud.Aiplatform.V1beta1.PythonPackageSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :executor_image_uri, 1, type: :string, json_name: "executorImageUri", deprecated: false

  field :package_uris, 2,
    repeated: true,
    type: :string,
    json_name: "packageUris",
    deprecated: false

  field :python_module, 3, type: :string, json_name: "pythonModule", deprecated: false
  field :args, 4, repeated: true, type: :string
  field :env, 5, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar
end

defmodule Google.Cloud.Aiplatform.V1beta1.Scheduling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :timeout, 1, type: Google.Protobuf.Duration
  field :restart_job_on_worker_restart, 3, type: :bool, json_name: "restartJobOnWorkerRestart"

  field :strategy, 4,
    type: Google.Cloud.Aiplatform.V1beta1.Scheduling.Strategy,
    enum: true,
    deprecated: false

  field :disable_retries, 5, type: :bool, json_name: "disableRetries", deprecated: false

  field :max_wait_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "maxWaitDuration",
    deprecated: false
end