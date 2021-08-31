defmodule Google.Cloud.Notebooks.V1.ReservationAffinity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TYPE_UNSPECIFIED | :NO_RESERVATION | :ANY_RESERVATION | :SPECIFIC_RESERVATION

  field :TYPE_UNSPECIFIED, 0

  field :NO_RESERVATION, 1

  field :ANY_RESERVATION, 2

  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Notebooks.V1.Instance.AcceleratorType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ACCELERATOR_TYPE_UNSPECIFIED
          | :NVIDIA_TESLA_K80
          | :NVIDIA_TESLA_P100
          | :NVIDIA_TESLA_V100
          | :NVIDIA_TESLA_P4
          | :NVIDIA_TESLA_T4
          | :NVIDIA_TESLA_A100
          | :NVIDIA_TESLA_T4_VWS
          | :NVIDIA_TESLA_P100_VWS
          | :NVIDIA_TESLA_P4_VWS
          | :TPU_V2
          | :TPU_V3

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :STARTING
          | :PROVISIONING
          | :ACTIVE
          | :STOPPING
          | :STOPPED
          | :DELETED
          | :UPGRADING
          | :INITIALIZING
          | :REGISTERING

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
end

defmodule Google.Cloud.Notebooks.V1.Instance.DiskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DISK_TYPE_UNSPECIFIED | :PD_STANDARD | :PD_SSD | :PD_BALANCED

  field :DISK_TYPE_UNSPECIFIED, 0

  field :PD_STANDARD, 1

  field :PD_SSD, 2

  field :PD_BALANCED, 3
end

defmodule Google.Cloud.Notebooks.V1.Instance.DiskEncryption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DISK_ENCRYPTION_UNSPECIFIED | :GMEK | :CMEK

  field :DISK_ENCRYPTION_UNSPECIFIED, 0

  field :GMEK, 1

  field :CMEK, 2
end

defmodule Google.Cloud.Notebooks.V1.Instance.NicType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED_NIC_TYPE | :VIRTIO_NET | :GVNIC

  field :UNSPECIFIED_NIC_TYPE, 0

  field :VIRTIO_NET, 1

  field :GVNIC, 2
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :STARTED | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :STARTED, 1

  field :SUCCEEDED, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACTION_UNSPECIFIED | :UPGRADE | :ROLLBACK

  field :ACTION_UNSPECIFIED, 0

  field :UPGRADE, 1

  field :ROLLBACK, 2
end

defmodule Google.Cloud.Notebooks.V1.ReservationAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consume_reservation_type: Google.Cloud.Notebooks.V1.ReservationAffinity.Type.t(),
          key: String.t(),
          values: [String.t()]
        }

  defstruct [:consume_reservation_type, :key, :values]

  field :consume_reservation_type, 1,
    type: Google.Cloud.Notebooks.V1.ReservationAffinity.Type,
    enum: true

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.AcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Notebooks.V1.Instance.AcceleratorType.t(),
          core_count: integer
        }

  defstruct [:type, :core_count]

  field :type, 1, type: Google.Cloud.Notebooks.V1.Instance.AcceleratorType, enum: true
  field :core_count, 2, type: :int64
end

defmodule Google.Cloud.Notebooks.V1.Instance.Disk.GuestOsFeature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t()
        }

  defstruct [:type]

  field :type, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.Disk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auto_delete: boolean,
          boot: boolean,
          device_name: String.t(),
          disk_size_gb: integer,
          guest_os_features: [Google.Cloud.Notebooks.V1.Instance.Disk.GuestOsFeature.t()],
          index: integer,
          interface: String.t(),
          kind: String.t(),
          licenses: [String.t()],
          mode: String.t(),
          source: String.t(),
          type: String.t()
        }

  defstruct [
    :auto_delete,
    :boot,
    :device_name,
    :disk_size_gb,
    :guest_os_features,
    :index,
    :interface,
    :kind,
    :licenses,
    :mode,
    :source,
    :type
  ]

  field :auto_delete, 1, type: :bool
  field :boot, 2, type: :bool
  field :device_name, 3, type: :string
  field :disk_size_gb, 4, type: :int64

  field :guest_os_features, 5,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.Disk.GuestOsFeature

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_secure_boot: boolean,
          enable_vtpm: boolean,
          enable_integrity_monitoring: boolean
        }

  defstruct [:enable_secure_boot, :enable_vtpm, :enable_integrity_monitoring]

  field :enable_secure_boot, 1, type: :bool
  field :enable_vtpm, 2, type: :bool
  field :enable_integrity_monitoring, 3, type: :bool
end

defmodule Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: String.t(),
          vm_image: String.t(),
          container_image: String.t(),
          framework: String.t(),
          version: String.t(),
          state: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          target_image: String.t(),
          action: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.Action.t(),
          target_version: String.t()
        }

  defstruct [
    :snapshot,
    :vm_image,
    :container_image,
    :framework,
    :version,
    :state,
    :create_time,
    :target_image,
    :action,
    :target_version
  ]

  field :snapshot, 1, type: :string
  field :vm_image, 2, type: :string
  field :container_image, 3, type: :string
  field :framework, 4, type: :string
  field :version, 5, type: :string
  field :state, 6, type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.State, enum: true
  field :create_time, 7, type: Google.Protobuf.Timestamp
  field :target_image, 8, type: :string, deprecated: true

  field :action, 9,
    type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.Action,
    enum: true

  field :target_version, 10, type: :string
end

defmodule Google.Cloud.Notebooks.V1.Instance.LabelsEntry do
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

defmodule Google.Cloud.Notebooks.V1.Instance.MetadataEntry do
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

defmodule Google.Cloud.Notebooks.V1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: {atom, any},
          name: String.t(),
          post_startup_script: String.t(),
          proxy_uri: String.t(),
          instance_owners: [String.t()],
          service_account: String.t(),
          service_account_scopes: [String.t()],
          machine_type: String.t(),
          accelerator_config: Google.Cloud.Notebooks.V1.Instance.AcceleratorConfig.t() | nil,
          state: Google.Cloud.Notebooks.V1.Instance.State.t(),
          install_gpu_driver: boolean,
          custom_gpu_driver_path: String.t(),
          boot_disk_type: Google.Cloud.Notebooks.V1.Instance.DiskType.t(),
          boot_disk_size_gb: integer,
          data_disk_type: Google.Cloud.Notebooks.V1.Instance.DiskType.t(),
          data_disk_size_gb: integer,
          no_remove_data_disk: boolean,
          disk_encryption: Google.Cloud.Notebooks.V1.Instance.DiskEncryption.t(),
          kms_key: String.t(),
          disks: [Google.Cloud.Notebooks.V1.Instance.Disk.t()],
          shielded_instance_config:
            Google.Cloud.Notebooks.V1.Instance.ShieldedInstanceConfig.t() | nil,
          no_public_ip: boolean,
          no_proxy_access: boolean,
          network: String.t(),
          subnet: String.t(),
          labels: %{String.t() => String.t()},
          metadata: %{String.t() => String.t()},
          tags: [String.t()],
          upgrade_history: [Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry.t()],
          nic_type: Google.Cloud.Notebooks.V1.Instance.NicType.t(),
          reservation_affinity: Google.Cloud.Notebooks.V1.ReservationAffinity.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :environment,
    :name,
    :post_startup_script,
    :proxy_uri,
    :instance_owners,
    :service_account,
    :service_account_scopes,
    :machine_type,
    :accelerator_config,
    :state,
    :install_gpu_driver,
    :custom_gpu_driver_path,
    :boot_disk_type,
    :boot_disk_size_gb,
    :data_disk_type,
    :data_disk_size_gb,
    :no_remove_data_disk,
    :disk_encryption,
    :kms_key,
    :disks,
    :shielded_instance_config,
    :no_public_ip,
    :no_proxy_access,
    :network,
    :subnet,
    :labels,
    :metadata,
    :tags,
    :upgrade_history,
    :nic_type,
    :reservation_affinity,
    :create_time,
    :update_time
  ]

  oneof :environment, 0
  field :name, 1, type: :string
  field :vm_image, 2, type: Google.Cloud.Notebooks.V1.VmImage, oneof: 0
  field :container_image, 3, type: Google.Cloud.Notebooks.V1.ContainerImage, oneof: 0
  field :post_startup_script, 4, type: :string
  field :proxy_uri, 5, type: :string
  field :instance_owners, 6, repeated: true, type: :string
  field :service_account, 7, type: :string
  field :service_account_scopes, 31, repeated: true, type: :string
  field :machine_type, 8, type: :string
  field :accelerator_config, 9, type: Google.Cloud.Notebooks.V1.Instance.AcceleratorConfig
  field :state, 10, type: Google.Cloud.Notebooks.V1.Instance.State, enum: true
  field :install_gpu_driver, 11, type: :bool
  field :custom_gpu_driver_path, 12, type: :string
  field :boot_disk_type, 13, type: Google.Cloud.Notebooks.V1.Instance.DiskType, enum: true
  field :boot_disk_size_gb, 14, type: :int64
  field :data_disk_type, 25, type: Google.Cloud.Notebooks.V1.Instance.DiskType, enum: true
  field :data_disk_size_gb, 26, type: :int64
  field :no_remove_data_disk, 27, type: :bool
  field :disk_encryption, 15, type: Google.Cloud.Notebooks.V1.Instance.DiskEncryption, enum: true
  field :kms_key, 16, type: :string
  field :disks, 28, repeated: true, type: Google.Cloud.Notebooks.V1.Instance.Disk

  field :shielded_instance_config, 30,
    type: Google.Cloud.Notebooks.V1.Instance.ShieldedInstanceConfig

  field :no_public_ip, 17, type: :bool
  field :no_proxy_access, 18, type: :bool
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

  field :tags, 32, repeated: true, type: :string

  field :upgrade_history, 29,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Instance.UpgradeHistoryEntry

  field :nic_type, 33, type: Google.Cloud.Notebooks.V1.Instance.NicType, enum: true
  field :reservation_affinity, 34, type: Google.Cloud.Notebooks.V1.ReservationAffinity
  field :create_time, 23, type: Google.Protobuf.Timestamp
  field :update_time, 24, type: Google.Protobuf.Timestamp
end
