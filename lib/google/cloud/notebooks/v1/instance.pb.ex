defmodule Google.Cloud.Notebooks.V1.ReservationAffinity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Notebooks.V1.Instance.AcceleratorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCELERATOR_TYPE_UNSPECIFIED, 0
  field :NVIDIA_TESLA_K80, 1
  field :NVIDIA_TESLA_P100, 2
  field :NVIDIA_TESLA_V100, 3
  field :NVIDIA_TESLA_P4, 4
  field :NVIDIA_TESLA_T4, 5
  field :NVIDIA_TESLA_A100, 11
  field :NVIDIA_TESLA_T4_VWS, 8
  field :NVIDIA_TESLA_P100_VWS, 9
  field :NVIDIA_TESLA_P4_VWS, 10
  field :TPU_V2, 6
  field :TPU_V3, 7
end

defmodule Google.Cloud.Notebooks.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTING, 1
  field :PROVISIONING, 2
  field :ACTIVE, 3
  field :STOPPING, 4
  field :STOPPED, 5
  field :DELETED, 6
  field :UPGRADING, 7
  field :INITIALIZING, 8
  field :REGISTERING, 9
  field :SUSPENDING, 10
  field :SUSPENDED, 11
end

defmodule Google.Cloud.Notebooks.V1.Instance.DiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DISK_TYPE_UNSPECIFIED, 0
  field :PD_STANDARD, 1
  field :PD_SSD, 2
  field :PD_BALANCED, 3
  field :PD_EXTREME, 4
end

defmodule Google.Cloud.Notebooks.V1.Instance.DiskEncryption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DISK_ENCRYPTION_UNSPECIFIED, 0
  field :GMEK, 1
  field :CMEK, 2
end

defmodule Google.Cloud.Notebooks.V1.Instance.NicType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED_NIC_TYPE, 0
  field :VIRTIO_NET, 1
  field :GVNIC, 2
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :UPGRADE, 1
  field :ROLLBACK, 2
end

defmodule Google.Cloud.Notebooks.V1.ReservationAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :consume_reservation_type, 1,
    type: Google.Cloud.Notebooks.V1.ReservationAffinity.Type,
    json_name: "consumeReservationType",
    enum: true,
    deprecated: false

  field :key, 2, type: :string, deprecated: false
  field :values, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.Instance.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Notebooks.V1.Instance.AcceleratorType, enum: true
  field :core_count, 2, type: :int64, json_name: "coreCount"
end

defmodule Google.Cloud.Notebooks.V1.Instance.Disk.GuestOsFeature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.Disk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :auto_delete, 1, type: :bool, json_name: "autoDelete"
  field :boot, 2, type: :bool
  field :device_name, 3, type: :string, json_name: "deviceName"
  field :disk_size_gb, 4, type: :int64, json_name: "diskSizeGb"

  field :guest_os_features, 5,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.Disk.GuestOsFeature,
    json_name: "guestOsFeatures"

  field :index, 6, type: :int64
  field :interface, 7, type: :string
  field :kind, 8, type: :string
  field :licenses, 9, repeated: true, type: :string
  field :mode, 10, type: :string
  field :source, 11, type: :string
  field :type, 12, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.ShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm"
  field :enable_integrity_monitoring, 3, type: :bool, json_name: "enableIntegrityMonitoring"
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :snapshot, 1, type: :string
  field :vm_image, 2, type: :string, json_name: "vmImage"
  field :container_image, 3, type: :string, json_name: "containerImage"
  field :framework, 4, type: :string
  field :version, 5, type: :string
  field :state, 6, type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.State, enum: true
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :target_image, 8, type: :string, json_name: "targetImage", deprecated: true

  field :action, 9,
    type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.Action,
    enum: true

  field :target_version, 10, type: :string, json_name: "targetVersion"
end

defmodule Google.Cloud.Notebooks.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :environment, 0

  field :name, 1, type: :string, deprecated: false
  field :vm_image, 2, type: Google.Cloud.Notebooks.V1.VmImage, json_name: "vmImage", oneof: 0

  field :container_image, 3,
    type: Google.Cloud.Notebooks.V1.ContainerImage,
    json_name: "containerImage",
    oneof: 0

  field :post_startup_script, 4, type: :string, json_name: "postStartupScript"
  field :proxy_uri, 5, type: :string, json_name: "proxyUri", deprecated: false

  field :instance_owners, 6,
    repeated: true,
    type: :string,
    json_name: "instanceOwners",
    deprecated: false

  field :service_account, 7, type: :string, json_name: "serviceAccount"

  field :service_account_scopes, 31,
    repeated: true,
    type: :string,
    json_name: "serviceAccountScopes",
    deprecated: false

  field :machine_type, 8, type: :string, json_name: "machineType", deprecated: false

  field :accelerator_config, 9,
    type: Google.Cloud.Notebooks.V1.Instance.AcceleratorConfig,
    json_name: "acceleratorConfig"

  field :state, 10, type: Google.Cloud.Notebooks.V1.Instance.State, enum: true, deprecated: false
  field :install_gpu_driver, 11, type: :bool, json_name: "installGpuDriver"
  field :custom_gpu_driver_path, 12, type: :string, json_name: "customGpuDriverPath"

  field :boot_disk_type, 13,
    type: Google.Cloud.Notebooks.V1.Instance.DiskType,
    json_name: "bootDiskType",
    enum: true,
    deprecated: false

  field :boot_disk_size_gb, 14, type: :int64, json_name: "bootDiskSizeGb", deprecated: false

  field :data_disk_type, 25,
    type: Google.Cloud.Notebooks.V1.Instance.DiskType,
    json_name: "dataDiskType",
    enum: true,
    deprecated: false

  field :data_disk_size_gb, 26, type: :int64, json_name: "dataDiskSizeGb", deprecated: false
  field :no_remove_data_disk, 27, type: :bool, json_name: "noRemoveDataDisk", deprecated: false

  field :disk_encryption, 15,
    type: Google.Cloud.Notebooks.V1.Instance.DiskEncryption,
    json_name: "diskEncryption",
    enum: true,
    deprecated: false

  field :kms_key, 16, type: :string, json_name: "kmsKey", deprecated: false

  field :disks, 28,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.Disk,
    deprecated: false

  field :shielded_instance_config, 30,
    type: Google.Cloud.Notebooks.V1.Instance.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :no_public_ip, 17, type: :bool, json_name: "noPublicIp"
  field :no_proxy_access, 18, type: :bool, json_name: "noProxyAccess"
  field :network, 19, type: :string
  field :subnet, 20, type: :string

  field :labels, 21,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.LabelsEntry,
    map: true

  field :metadata, 22,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.MetadataEntry,
    map: true

  field :tags, 32, repeated: true, type: :string, deprecated: false

  field :upgrade_history, 29,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry,
    json_name: "upgradeHistory"

  field :nic_type, 33,
    type: Google.Cloud.Notebooks.V1.Instance.NicType,
    json_name: "nicType",
    enum: true,
    deprecated: false

  field :reservation_affinity, 34,
    type: Google.Cloud.Notebooks.V1.ReservationAffinity,
    json_name: "reservationAffinity",
    deprecated: false

  field :creator, 36, type: :string, deprecated: false
  field :can_ip_forward, 39, type: :bool, json_name: "canIpForward", deprecated: false

  field :create_time, 23,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end