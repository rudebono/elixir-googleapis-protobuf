defmodule Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType do
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
  field :NVIDIA_TESLA_T4_VWS, 8
  field :NVIDIA_TESLA_P100_VWS, 9
  field :NVIDIA_TESLA_P4_VWS, 10
  field :TPU_V2, 6
  field :TPU_V3, 7
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance.State do
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

defmodule Google.Cloud.Notebooks.V1beta1.Instance.DiskType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DISK_TYPE_UNSPECIFIED | :PD_STANDARD | :PD_SSD | :PD_BALANCED

  field :DISK_TYPE_UNSPECIFIED, 0
  field :PD_STANDARD, 1
  field :PD_SSD, 2
  field :PD_BALANCED, 3
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance.DiskEncryption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DISK_ENCRYPTION_UNSPECIFIED | :GMEK | :CMEK

  field :DISK_ENCRYPTION_UNSPECIFIED, 0
  field :GMEK, 1
  field :CMEK, 2
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType.t(),
          core_count: integer
        }

  defstruct [:type, :core_count]

  field :type, 1, type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType, enum: true
  field :core_count, 2, type: :int64, json_name: "coreCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment:
            {:vm_image, Google.Cloud.Notebooks.V1beta1.VmImage.t() | nil}
            | {:container_image, Google.Cloud.Notebooks.V1beta1.ContainerImage.t() | nil},
          name: String.t(),
          post_startup_script: String.t(),
          proxy_uri: String.t(),
          instance_owners: [String.t()],
          service_account: String.t(),
          machine_type: String.t(),
          accelerator_config: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorConfig.t() | nil,
          state: Google.Cloud.Notebooks.V1beta1.Instance.State.t(),
          install_gpu_driver: boolean,
          custom_gpu_driver_path: String.t(),
          boot_disk_type: Google.Cloud.Notebooks.V1beta1.Instance.DiskType.t(),
          boot_disk_size_gb: integer,
          data_disk_type: Google.Cloud.Notebooks.V1beta1.Instance.DiskType.t(),
          data_disk_size_gb: integer,
          no_remove_data_disk: boolean,
          disk_encryption: Google.Cloud.Notebooks.V1beta1.Instance.DiskEncryption.t(),
          kms_key: String.t(),
          no_public_ip: boolean,
          no_proxy_access: boolean,
          network: String.t(),
          subnet: String.t(),
          labels: %{String.t() => String.t()},
          metadata: %{String.t() => String.t()},
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
    :no_public_ip,
    :no_proxy_access,
    :network,
    :subnet,
    :labels,
    :metadata,
    :create_time,
    :update_time
  ]

  oneof :environment, 0

  field :name, 1, type: :string
  field :vm_image, 2, type: Google.Cloud.Notebooks.V1beta1.VmImage, json_name: "vmImage", oneof: 0

  field :container_image, 3,
    type: Google.Cloud.Notebooks.V1beta1.ContainerImage,
    json_name: "containerImage",
    oneof: 0

  field :post_startup_script, 4, type: :string, json_name: "postStartupScript"
  field :proxy_uri, 5, type: :string, json_name: "proxyUri"
  field :instance_owners, 6, repeated: true, type: :string, json_name: "instanceOwners"
  field :service_account, 7, type: :string, json_name: "serviceAccount"
  field :machine_type, 8, type: :string, json_name: "machineType"

  field :accelerator_config, 9,
    type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorConfig,
    json_name: "acceleratorConfig"

  field :state, 10, type: Google.Cloud.Notebooks.V1beta1.Instance.State, enum: true
  field :install_gpu_driver, 11, type: :bool, json_name: "installGpuDriver"
  field :custom_gpu_driver_path, 12, type: :string, json_name: "customGpuDriverPath"

  field :boot_disk_type, 13,
    type: Google.Cloud.Notebooks.V1beta1.Instance.DiskType,
    enum: true,
    json_name: "bootDiskType"

  field :boot_disk_size_gb, 14, type: :int64, json_name: "bootDiskSizeGb"

  field :data_disk_type, 25,
    type: Google.Cloud.Notebooks.V1beta1.Instance.DiskType,
    enum: true,
    json_name: "dataDiskType"

  field :data_disk_size_gb, 26, type: :int64, json_name: "dataDiskSizeGb"
  field :no_remove_data_disk, 27, type: :bool, json_name: "noRemoveDataDisk"

  field :disk_encryption, 15,
    type: Google.Cloud.Notebooks.V1beta1.Instance.DiskEncryption,
    enum: true,
    json_name: "diskEncryption"

  field :kms_key, 16, type: :string, json_name: "kmsKey"
  field :no_public_ip, 17, type: :bool, json_name: "noPublicIp"
  field :no_proxy_access, 18, type: :bool, json_name: "noProxyAccess"
  field :network, 19, type: :string
  field :subnet, 20, type: :string

  field :labels, 21,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.Instance.LabelsEntry,
    map: true

  field :metadata, 22,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.Instance.MetadataEntry,
    map: true

  field :create_time, 23, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 24, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end
