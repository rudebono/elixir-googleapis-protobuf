defmodule Google.Cloud.Notebooks.V1.Runtime.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :PROVISIONING, 2
  field :ACTIVE, 3
  field :STOPPING, 4
  field :STOPPED, 5
  field :DELETING, 6
  field :UPGRADING, 7
  field :INITIALIZING, 8
end

defmodule Google.Cloud.Notebooks.V1.Runtime.HealthState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :HEALTH_STATE_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :UNHEALTHY, 2
  field :AGENT_NOT_INSTALLED, 3
  field :AGENT_NOT_RUNNING, 4
end

defmodule Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig.AcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_K80, 1
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 6
  field :TPU_V2, 7
  field :TPU_V3, 8
  field :NVIDIA_TESLA_T4_VWS, 9
  field :NVIDIA_TESLA_P100_VWS, 10
  field :NVIDIA_TESLA_P4_VWS, 11
end

defmodule Google.Cloud.Notebooks.V1.LocalDiskInitializeParams.DiskType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DISK_TYPE_UNSPECIFIED, 0
  field :PD_STANDARD, 1
  field :PD_SSD, 2
  field :PD_BALANCED, 3
  field :PD_EXTREME, 4
end

defmodule Google.Cloud.Notebooks.V1.RuntimeAccessConfig.RuntimeAccessType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RUNTIME_ACCESS_TYPE_UNSPECIFIED, 0
  field :SINGLE_USER, 1
  field :SERVICE_ACCOUNT, 2
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig.NicType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED_NIC_TYPE, 0
  field :VIRTIO_NET, 1
  field :GVNIC, 2
end

defmodule Google.Cloud.Notebooks.V1.Runtime do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :runtime_type, 0

  field :name, 1, type: :string, deprecated: false

  field :virtual_machine, 2,
    type: Google.Cloud.Notebooks.V1.VirtualMachine,
    json_name: "virtualMachine",
    oneof: 0

  field :state, 3, type: Google.Cloud.Notebooks.V1.Runtime.State, enum: true, deprecated: false

  field :health_state, 4,
    type: Google.Cloud.Notebooks.V1.Runtime.HealthState,
    json_name: "healthState",
    enum: true,
    deprecated: false

  field :access_config, 5,
    type: Google.Cloud.Notebooks.V1.RuntimeAccessConfig,
    json_name: "accessConfig"

  field :software_config, 6,
    type: Google.Cloud.Notebooks.V1.RuntimeSoftwareConfig,
    json_name: "softwareConfig"

  field :metrics, 7, type: Google.Cloud.Notebooks.V1.RuntimeMetrics, deprecated: false

  field :create_time, 20,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 21,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig.AcceleratorType,
    enum: true

  field :core_count, 2, type: :int64, json_name: "coreCount"
end

defmodule Google.Cloud.Notebooks.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey"
end

defmodule Google.Cloud.Notebooks.V1.LocalDisk.RuntimeGuestOsFeature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.LocalDisk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_delete, 1, type: :bool, json_name: "autoDelete", deprecated: false
  field :boot, 2, type: :bool, deprecated: false
  field :device_name, 3, type: :string, json_name: "deviceName", deprecated: false

  field :guest_os_features, 4,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.LocalDisk.RuntimeGuestOsFeature,
    json_name: "guestOsFeatures",
    deprecated: false

  field :index, 5, type: :int32, deprecated: false

  field :initialize_params, 6,
    type: Google.Cloud.Notebooks.V1.LocalDiskInitializeParams,
    json_name: "initializeParams",
    deprecated: false

  field :interface, 7, type: :string
  field :kind, 8, type: :string, deprecated: false
  field :licenses, 9, repeated: true, type: :string, deprecated: false
  field :mode, 10, type: :string
  field :source, 11, type: :string
  field :type, 12, type: :string
end

defmodule Google.Cloud.Notebooks.V1.LocalDiskInitializeParams.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.LocalDiskInitializeParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 1, type: :string, deprecated: false
  field :disk_name, 2, type: :string, json_name: "diskName", deprecated: false
  field :disk_size_gb, 3, type: :int64, json_name: "diskSizeGb", deprecated: false

  field :disk_type, 4,
    type: Google.Cloud.Notebooks.V1.LocalDiskInitializeParams.DiskType,
    json_name: "diskType",
    enum: true,
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.LocalDiskInitializeParams.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RuntimeAccessConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_type, 1,
    type: Google.Cloud.Notebooks.V1.RuntimeAccessConfig.RuntimeAccessType,
    json_name: "accessType",
    enum: true

  field :runtime_owner, 2, type: :string, json_name: "runtimeOwner"
  field :proxy_uri, 3, type: :string, json_name: "proxyUri", deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RuntimeSoftwareConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notebook_upgrade_schedule, 1, type: :string, json_name: "notebookUpgradeSchedule"

  field :enable_health_monitoring, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enableHealthMonitoring"

  field :idle_shutdown, 3, proto3_optional: true, type: :bool, json_name: "idleShutdown"
  field :idle_shutdown_timeout, 4, type: :int32, json_name: "idleShutdownTimeout"
  field :install_gpu_driver, 5, type: :bool, json_name: "installGpuDriver"
  field :custom_gpu_driver_path, 6, type: :string, json_name: "customGpuDriverPath"
  field :post_startup_script, 7, type: :string, json_name: "postStartupScript"

  field :kernels, 8,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ContainerImage,
    deprecated: false

  field :upgradeable, 9, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RuntimeMetrics.SystemMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.RuntimeMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :system_metrics, 1,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.RuntimeMetrics.SystemMetricsEntry,
    json_name: "systemMetrics",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RuntimeShieldedInstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm"
  field :enable_integrity_monitoring, 3, type: :bool, json_name: "enableIntegrityMonitoring"
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachine do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_name, 1, type: :string, json_name: "instanceName", deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false

  field :virtual_machine_config, 3,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig,
    json_name: "virtualMachineConfig"
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig.BootImage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig.GuestAttributesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.VirtualMachineConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :zone, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false

  field :container_images, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.ContainerImage,
    json_name: "containerImages",
    deprecated: false

  field :data_disk, 4,
    type: Google.Cloud.Notebooks.V1.LocalDisk,
    json_name: "dataDisk",
    deprecated: false

  field :encryption_config, 5,
    type: Google.Cloud.Notebooks.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :shielded_instance_config, 6,
    type: Google.Cloud.Notebooks.V1.RuntimeShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :accelerator_config, 7,
    type: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig,
    json_name: "acceleratorConfig",
    deprecated: false

  field :network, 8, type: :string, deprecated: false
  field :subnet, 9, type: :string, deprecated: false
  field :internal_ip_only, 10, type: :bool, json_name: "internalIpOnly", deprecated: false
  field :tags, 13, repeated: true, type: :string, deprecated: false

  field :guest_attributes, 14,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig.GuestAttributesEntry,
    json_name: "guestAttributes",
    map: true,
    deprecated: false

  field :metadata, 15,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig.MetadataEntry,
    map: true,
    deprecated: false

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :nic_type, 17,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig.NicType,
    json_name: "nicType",
    enum: true,
    deprecated: false

  field :reserved_ip_range, 18, type: :string, json_name: "reservedIpRange", deprecated: false

  field :boot_image, 19,
    type: Google.Cloud.Notebooks.V1.VirtualMachineConfig.BootImage,
    json_name: "bootImage",
    deprecated: false
end