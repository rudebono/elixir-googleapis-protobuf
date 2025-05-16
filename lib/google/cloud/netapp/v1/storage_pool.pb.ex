defmodule Google.Cloud.Netapp.V1.StoragePool.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :CREATING, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :RESTORING, 5
  field :DISABLED, 6
  field :ERROR, 7
end

defmodule Google.Cloud.Netapp.V1.GetStoragePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListStoragePoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListStoragePoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :storage_pools, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.StoragePool,
    json_name: "storagePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.CreateStoragePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :storage_pool_id, 2, type: :string, json_name: "storagePoolId", deprecated: false

  field :storage_pool, 3,
    type: Google.Cloud.Netapp.V1.StoragePool,
    json_name: "storagePool",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateStoragePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :storage_pool, 2,
    type: Google.Cloud.Netapp.V1.StoragePool,
    json_name: "storagePool",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteStoragePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.SwitchActiveReplicaZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.StoragePool.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.StoragePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :service_level, 2,
    type: Google.Cloud.Netapp.V1.ServiceLevel,
    json_name: "serviceLevel",
    enum: true,
    deprecated: false

  field :capacity_gib, 3, type: :int64, json_name: "capacityGib", deprecated: false
  field :volume_capacity_gib, 4, type: :int64, json_name: "volumeCapacityGib", deprecated: false
  field :volume_count, 5, type: :int32, json_name: "volumeCount", deprecated: false
  field :state, 6, type: Google.Cloud.Netapp.V1.StoragePool.State, enum: true, deprecated: false
  field :state_details, 7, type: :string, json_name: "stateDetails", deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Netapp.V1.StoragePool.LabelsEntry,
    map: true,
    deprecated: false

  field :network, 11, type: :string, deprecated: false
  field :active_directory, 12, type: :string, json_name: "activeDirectory", deprecated: false
  field :kms_config, 13, type: :string, json_name: "kmsConfig", deprecated: false
  field :ldap_enabled, 14, type: :bool, json_name: "ldapEnabled", deprecated: false
  field :psa_range, 15, type: :string, json_name: "psaRange", deprecated: false

  field :encryption_type, 16,
    type: Google.Cloud.Netapp.V1.EncryptionType,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :global_access_allowed, 17,
    proto3_optional: true,
    type: :bool,
    json_name: "globalAccessAllowed",
    deprecated: true

  field :allow_auto_tiering, 18, type: :bool, json_name: "allowAutoTiering", deprecated: false
  field :replica_zone, 20, type: :string, json_name: "replicaZone", deprecated: false
  field :zone, 21, type: :string, deprecated: false
  field :satisfies_pzs, 23, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 24, type: :bool, json_name: "satisfiesPzi", deprecated: false

  field :custom_performance_enabled, 25,
    type: :bool,
    json_name: "customPerformanceEnabled",
    deprecated: false

  field :total_throughput_mibps, 26,
    type: :int64,
    json_name: "totalThroughputMibps",
    deprecated: false

  field :total_iops, 27, type: :int64, json_name: "totalIops", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ValidateDirectoryServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :directory_service_type, 2,
    type: Google.Cloud.Netapp.V1.DirectoryServiceType,
    json_name: "directoryServiceType",
    enum: true
end
