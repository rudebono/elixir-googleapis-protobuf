defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 4, type: :string
  field :pipeline, 1, type: Google.Cloud.Lifesciences.V2beta.Pipeline, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.RunPipelineRequest.LabelsEntry,
    map: true

  field :pub_sub_topic, 3, type: :string, json_name: "pubSubTopic"
end

defmodule Google.Cloud.Lifesciences.V2beta.RunPipelineResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Lifesciences.V2beta.Pipeline.EnvironmentEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Pipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Action
  field :resources, 2, type: Google.Cloud.Lifesciences.V2beta.Resources

  field :environment, 3,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Pipeline.EnvironmentEntry,
    map: true

  field :encrypted_environment, 5,
    type: Google.Cloud.Lifesciences.V2beta.Secret,
    json_name: "encryptedEnvironment"

  field :timeout, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.EnvironmentEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.PortMappingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.Action.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :container_name, 1, type: :string, json_name: "containerName"
  field :image_uri, 2, type: :string, json_name: "imageUri", deprecated: false
  field :commands, 3, repeated: true, type: :string
  field :entrypoint, 4, type: :string

  field :environment, 5,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.EnvironmentEntry,
    map: true

  field :encrypted_environment, 21,
    type: Google.Cloud.Lifesciences.V2beta.Secret,
    json_name: "encryptedEnvironment"

  field :pid_namespace, 6, type: :string, json_name: "pidNamespace"

  field :port_mappings, 8,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.PortMappingsEntry,
    json_name: "portMappings",
    map: true

  field :mounts, 9, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Mount

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Action.LabelsEntry,
    map: true

  field :credentials, 11, type: Google.Cloud.Lifesciences.V2beta.Secret
  field :timeout, 12, type: Google.Protobuf.Duration
  field :ignore_exit_status, 13, type: :bool, json_name: "ignoreExitStatus"
  field :run_in_background, 14, type: :bool, json_name: "runInBackground"
  field :always_run, 15, type: :bool, json_name: "alwaysRun"
  field :enable_fuse, 16, type: :bool, json_name: "enableFuse"
  field :publish_exposed_ports, 17, type: :bool, json_name: "publishExposedPorts"
  field :disable_image_prefetch, 18, type: :bool, json_name: "disableImagePrefetch"
  field :disable_standard_error_capture, 19, type: :bool, json_name: "disableStandardErrorCapture"
  field :block_external_network, 20, type: :bool, json_name: "blockExternalNetwork"
end

defmodule Google.Cloud.Lifesciences.V2beta.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName"
  field :cipher_text, 2, type: :string, json_name: "cipherText"
end

defmodule Google.Cloud.Lifesciences.V2beta.Mount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disk, 1, type: :string
  field :path, 2, type: :string
  field :read_only, 3, type: :bool, json_name: "readOnly"
end

defmodule Google.Cloud.Lifesciences.V2beta.Resources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :regions, 2, repeated: true, type: :string
  field :zones, 3, repeated: true, type: :string

  field :virtual_machine, 4,
    type: Google.Cloud.Lifesciences.V2beta.VirtualMachine,
    json_name: "virtualMachine"
end

defmodule Google.Cloud.Lifesciences.V2beta.VirtualMachine.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.VirtualMachine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
  field :preemptible, 2, type: :bool

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.VirtualMachine.LabelsEntry,
    map: true

  field :disks, 4, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Disk
  field :network, 5, type: Google.Cloud.Lifesciences.V2beta.Network
  field :accelerators, 6, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Accelerator

  field :service_account, 7,
    type: Google.Cloud.Lifesciences.V2beta.ServiceAccount,
    json_name: "serviceAccount"

  field :boot_disk_size_gb, 8, type: :int32, json_name: "bootDiskSizeGb"
  field :cpu_platform, 9, type: :string, json_name: "cpuPlatform"
  field :boot_image, 10, type: :string, json_name: "bootImage"

  field :nvidia_driver_version, 11,
    type: :string,
    json_name: "nvidiaDriverVersion",
    deprecated: true

  field :enable_stackdriver_monitoring, 12, type: :bool, json_name: "enableStackdriverMonitoring"
  field :docker_cache_images, 13, repeated: true, type: :string, json_name: "dockerCacheImages"
  field :volumes, 14, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Volume
  field :reservation, 15, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :email, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Accelerator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string
  field :count, 2, type: :int64
end

defmodule Google.Cloud.Lifesciences.V2beta.Network do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :network, 1, type: :string
  field :use_private_address, 2, type: :bool, json_name: "usePrivateAddress"
  field :subnetwork, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :size_gb, 2, type: :int32, json_name: "sizeGb"
  field :type, 3, type: :string
  field :source_image, 4, type: :string, json_name: "sourceImage"
end

defmodule Google.Cloud.Lifesciences.V2beta.Volume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :storage, 0

  field :volume, 1, type: :string

  field :persistent_disk, 2,
    type: Google.Cloud.Lifesciences.V2beta.PersistentDisk,
    json_name: "persistentDisk",
    oneof: 0

  field :existing_disk, 3,
    type: Google.Cloud.Lifesciences.V2beta.ExistingDisk,
    json_name: "existingDisk",
    oneof: 0

  field :nfs_mount, 4,
    type: Google.Cloud.Lifesciences.V2beta.NFSMount,
    json_name: "nfsMount",
    oneof: 0
end

defmodule Google.Cloud.Lifesciences.V2beta.PersistentDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :size_gb, 1, type: :int32, json_name: "sizeGb"
  field :type, 2, type: :string
  field :source_image, 3, type: :string, json_name: "sourceImage"
end

defmodule Google.Cloud.Lifesciences.V2beta.ExistingDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :disk, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.NFSMount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target, 1, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Metadata.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pipeline, 1, type: Google.Cloud.Lifesciences.V2beta.Pipeline

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.Metadata.LabelsEntry,
    map: true

  field :events, 3, repeated: true, type: Google.Cloud.Lifesciences.V2beta.Event
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :pub_sub_topic, 7, type: :string, json_name: "pubSubTopic"
end

defmodule Google.Cloud.Lifesciences.V2beta.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :details, 0

  field :timestamp, 1, type: Google.Protobuf.Timestamp
  field :description, 2, type: :string
  field :delayed, 17, type: Google.Cloud.Lifesciences.V2beta.DelayedEvent, oneof: 0

  field :worker_assigned, 18,
    type: Google.Cloud.Lifesciences.V2beta.WorkerAssignedEvent,
    json_name: "workerAssigned",
    oneof: 0

  field :worker_released, 19,
    type: Google.Cloud.Lifesciences.V2beta.WorkerReleasedEvent,
    json_name: "workerReleased",
    oneof: 0

  field :pull_started, 20,
    type: Google.Cloud.Lifesciences.V2beta.PullStartedEvent,
    json_name: "pullStarted",
    oneof: 0

  field :pull_stopped, 21,
    type: Google.Cloud.Lifesciences.V2beta.PullStoppedEvent,
    json_name: "pullStopped",
    oneof: 0

  field :container_started, 22,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent,
    json_name: "containerStarted",
    oneof: 0

  field :container_stopped, 23,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStoppedEvent,
    json_name: "containerStopped",
    oneof: 0

  field :container_killed, 24,
    type: Google.Cloud.Lifesciences.V2beta.ContainerKilledEvent,
    json_name: "containerKilled",
    oneof: 0

  field :unexpected_exit_status, 25,
    type: Google.Cloud.Lifesciences.V2beta.UnexpectedExitStatusEvent,
    json_name: "unexpectedExitStatus",
    oneof: 0

  field :failed, 26, type: Google.Cloud.Lifesciences.V2beta.FailedEvent, oneof: 0
end

defmodule Google.Cloud.Lifesciences.V2beta.DelayedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cause, 1, type: :string
  field :metrics, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkerAssignedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :zone, 1, type: :string
  field :instance, 2, type: :string
  field :machine_type, 3, type: :string, json_name: "machineType"
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkerReleasedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :zone, 1, type: :string
  field :instance, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.PullStartedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
end

defmodule Google.Cloud.Lifesciences.V2beta.PullStoppedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri"
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent.PortMappingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"

  field :port_mappings, 2,
    repeated: true,
    type: Google.Cloud.Lifesciences.V2beta.ContainerStartedEvent.PortMappingsEntry,
    json_name: "portMappings",
    map: true

  field :ip_address, 3, type: :string, json_name: "ipAddress"
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerStoppedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
  field :exit_status, 2, type: :int32, json_name: "exitStatus"
  field :stderr, 3, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.UnexpectedExitStatusEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
  field :exit_status, 2, type: :int32, json_name: "exitStatus"
end

defmodule Google.Cloud.Lifesciences.V2beta.ContainerKilledEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_id, 1, type: :int32, json_name: "actionId"
end

defmodule Google.Cloud.Lifesciences.V2beta.FailedEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkflowsServiceV2Beta.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.lifesciences.v2beta.WorkflowsServiceV2Beta",
    protoc_gen_elixir_version: "0.13.0"

  rpc :RunPipeline,
      Google.Cloud.Lifesciences.V2beta.RunPipelineRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Lifesciences.V2beta.WorkflowsServiceV2Beta.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Lifesciences.V2beta.WorkflowsServiceV2Beta.Service
end