defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :INVALID, 1
  field :CREATING, 2
  field :READY, 3
  field :DELETING, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AllocatedDisk.DiskInterface do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DISK_INTERFACE_UNSPECIFIED, 0
  field :SCSI, 1
  field :NVME, 2
  field :NVDIMM, 3
  field :ISCSI, 4
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.ShareSettings.ShareType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHARE_TYPE_UNSPECIFIED, 0
  field :ORGANIZATION, 1
  field :SPECIFIC_PROJECTS, 2
  field :LOCAL, 3
  field :DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS, 4
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: :string
  field :count, 2, type: :int32
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AllocatedDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_size_gb, 1, type: :int64, json_name: "diskSizeGb"

  field :disk_interface, 2,
    type:
      Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AllocatedDisk.DiskInterface,
    json_name: "diskInterface",
    enum: true
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"

  field :guest_accelerator, 2,
    repeated: true,
    type:
      Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AcceleratorConfig,
    json_name: "guestAccelerator"

  field :min_cpu_platform, 3, type: :string, json_name: "minCpuPlatform"

  field :local_ssd, 4,
    repeated: true,
    type:
      Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties.AllocatedDisk,
    json_name: "localSsd"
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_properties, 1,
    type:
      Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties,
    json_name: "instanceProperties"

  field :count, 2, type: :int64
  field :used_count, 3, type: :int64, json_name: "usedCount"
  field :assured_count, 4, type: :int64, json_name: "assuredCount"
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation.ShareSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :share_type, 1,
    type: Google.Cloud.Capacityplanner.V1beta.Allocation.ShareSettings.ShareType,
    json_name: "shareType",
    enum: true

  field :projects, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Capacityplanner.V1beta.Allocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :specific_allocation, 6,
    type: Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation,
    json_name: "specificAllocation",
    oneof: 0

  field :id, 1, type: :int64
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :zone, 3, type: :string
  field :description, 4, type: :string
  field :allocation, 5, type: :string
  field :owner_project_id, 10, type: :string, json_name: "ownerProjectId"
  field :status, 7, type: Google.Cloud.Capacityplanner.V1beta.Allocation.Status, enum: true

  field :share_settings, 8,
    type: Google.Cloud.Capacityplanner.V1beta.Allocation.ShareSettings,
    json_name: "shareSettings"

  field :auto_delete_time, 9, type: Google.Protobuf.Timestamp, json_name: "autoDeleteTime"
end
