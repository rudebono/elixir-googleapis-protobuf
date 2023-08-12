defmodule Google.Cloud.Notebooks.V2.DiskEncryption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DISK_ENCRYPTION_UNSPECIFIED, 0
  field :GMEK, 1
  field :CMEK, 2
end

defmodule Google.Cloud.Notebooks.V2.DiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DISK_TYPE_UNSPECIFIED, 0
  field :PD_STANDARD, 1
  field :PD_SSD, 2
  field :PD_BALANCED, 3
  field :PD_EXTREME, 4
end

defmodule Google.Cloud.Notebooks.V2.NetworkInterface.NicType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NIC_TYPE_UNSPECIFIED, 0
  field :VIRTIO_NET, 1
  field :GVNIC, 2
end

defmodule Google.Cloud.Notebooks.V2.AcceleratorConfig.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 11
  field :NVIDIA_A100_80GB, 12
  field :NVIDIA_L4, 13
  field :NVIDIA_TESLA_T4_VWS, 8
  field :NVIDIA_TESLA_P100_VWS, 9
  field :NVIDIA_TESLA_P4_VWS, 10
end

defmodule Google.Cloud.Notebooks.V2.NetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnet, 2, type: :string, deprecated: false

  field :nic_type, 3,
    type: Google.Cloud.Notebooks.V2.NetworkInterface.NicType,
    json_name: "nicType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.VmImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :image, 0

  field :project, 1, type: :string, deprecated: false
  field :name, 2, type: :string, oneof: 0, deprecated: false
  field :family, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.ContainerImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
  field :tag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Notebooks.V2.AcceleratorConfig.AcceleratorType,
    enum: true,
    deprecated: false

  field :core_count, 2, type: :int64, json_name: "coreCount", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.ShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot", deprecated: false
  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 3,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.GPUDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_gpu_driver, 1, type: :bool, json_name: "enableGpuDriver", deprecated: false

  field :custom_gpu_driver_path, 2,
    type: :string,
    json_name: "customGpuDriverPath",
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.DataDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disk_size_gb, 1, type: :int64, json_name: "diskSizeGb", deprecated: false

  field :disk_type, 2,
    type: Google.Cloud.Notebooks.V2.DiskType,
    json_name: "diskType",
    enum: true,
    deprecated: false

  field :disk_encryption, 5,
    type: Google.Cloud.Notebooks.V2.DiskEncryption,
    json_name: "diskEncryption",
    enum: true,
    deprecated: false

  field :kms_key, 6, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.BootDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disk_size_gb, 1, type: :int64, json_name: "diskSizeGb", deprecated: false

  field :disk_type, 2,
    type: Google.Cloud.Notebooks.V2.DiskType,
    json_name: "diskType",
    enum: true,
    deprecated: false

  field :disk_encryption, 3,
    type: Google.Cloud.Notebooks.V2.DiskEncryption,
    json_name: "diskEncryption",
    enum: true,
    deprecated: false

  field :kms_key, 4, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :email, 1, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.GceSetup.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V2.GceSetup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :image, 0

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_configs, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.AcceleratorConfig,
    json_name: "acceleratorConfigs",
    deprecated: false

  field :service_accounts, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.ServiceAccount,
    json_name: "serviceAccounts",
    deprecated: false

  field :vm_image, 4,
    type: Google.Cloud.Notebooks.V2.VmImage,
    json_name: "vmImage",
    oneof: 0,
    deprecated: false

  field :container_image, 5,
    type: Google.Cloud.Notebooks.V2.ContainerImage,
    json_name: "containerImage",
    oneof: 0,
    deprecated: false

  field :boot_disk, 6,
    type: Google.Cloud.Notebooks.V2.BootDisk,
    json_name: "bootDisk",
    deprecated: false

  field :data_disks, 7,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.DataDisk,
    json_name: "dataDisks",
    deprecated: false

  field :shielded_instance_config, 8,
    type: Google.Cloud.Notebooks.V2.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :network_interfaces, 9,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.NetworkInterface,
    json_name: "networkInterfaces",
    deprecated: false

  field :disable_public_ip, 10, type: :bool, json_name: "disablePublicIp", deprecated: false
  field :tags, 11, repeated: true, type: :string, deprecated: false

  field :metadata, 12,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.GceSetup.MetadataEntry,
    map: true,
    deprecated: false

  field :enable_ip_forwarding, 13, type: :bool, json_name: "enableIpForwarding", deprecated: false

  field :gpu_driver_config, 14,
    type: Google.Cloud.Notebooks.V2.GPUDriverConfig,
    json_name: "gpuDriverConfig",
    deprecated: false
end