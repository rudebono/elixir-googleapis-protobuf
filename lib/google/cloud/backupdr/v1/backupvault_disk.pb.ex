defmodule Google.Cloud.Backupdr.V1.DiskRestoreProperties.AccessMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :READ_WRITE_SINGLE, 0
  field :READ_WRITE_MANY, 1
  field :READ_ONLY_MANY, 2
end

defmodule Google.Cloud.Backupdr.V1.DiskRestoreProperties.Architecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86_64, 1
  field :ARM64, 2
end

defmodule Google.Cloud.Backupdr.V1.DiskBackupProperties.Architecture do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ARCHITECTURE_UNSPECIFIED, 0
  field :X86_64, 1
  field :ARM64, 2
end

defmodule Google.Cloud.Backupdr.V1.DiskTargetEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.RegionDiskTargetEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :region, 2, type: :string, deprecated: false

  field :replica_zones, 3,
    repeated: true,
    type: :string,
    json_name: "replicaZones",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DiskRestoreProperties.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.DiskRestoreProperties.ResourceManagerTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.DiskRestoreProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false
  field :description, 2, proto3_optional: true, type: :string, deprecated: false
  field :size_gb, 3, proto3_optional: true, type: :int64, json_name: "sizeGb", deprecated: false
  field :licenses, 4, repeated: true, type: :string, deprecated: false

  field :guest_os_feature, 5,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.GuestOsFeature,
    json_name: "guestOsFeature",
    deprecated: false

  field :disk_encryption_key, 6,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey",
    deprecated: false

  field :physical_block_size_bytes, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "physicalBlockSizeBytes",
    deprecated: false

  field :provisioned_iops, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "provisionedIops",
    deprecated: false

  field :provisioned_throughput, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "provisionedThroughput",
    deprecated: false

  field :enable_confidential_compute, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "enableConfidentialCompute",
    deprecated: false

  field :storage_pool, 11,
    proto3_optional: true,
    type: :string,
    json_name: "storagePool",
    deprecated: false

  field :access_mode, 12,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.DiskRestoreProperties.AccessMode,
    json_name: "accessMode",
    enum: true,
    deprecated: false

  field :architecture, 14,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.DiskRestoreProperties.Architecture,
    enum: true,
    deprecated: false

  field :resource_policy, 15,
    repeated: true,
    type: :string,
    json_name: "resourcePolicy",
    deprecated: false

  field :type, 16, proto3_optional: true, type: :string, deprecated: false

  field :labels, 17,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.DiskRestoreProperties.LabelsEntry,
    map: true,
    deprecated: false

  field :resource_manager_tags, 18,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.DiskRestoreProperties.ResourceManagerTagsEntry,
    json_name: "resourceManagerTags",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DiskBackupProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :description, 1, proto3_optional: true, type: :string
  field :licenses, 2, repeated: true, type: :string

  field :guest_os_feature, 3,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.GuestOsFeature,
    json_name: "guestOsFeature"

  field :architecture, 4,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.DiskBackupProperties.Architecture,
    enum: true

  field :type, 5, proto3_optional: true, type: :string
  field :size_gb, 6, proto3_optional: true, type: :int64, json_name: "sizeGb"
  field :region, 7, proto3_optional: true, type: :string
  field :zone, 8, proto3_optional: true, type: :string
  field :replica_zones, 9, repeated: true, type: :string, json_name: "replicaZones"
  field :source_disk, 10, proto3_optional: true, type: :string, json_name: "sourceDisk"
end

defmodule Google.Cloud.Backupdr.V1.DiskDataSourceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :type, 3, type: :string
  field :size_gb, 4, type: :int64, json_name: "sizeGb"
end
