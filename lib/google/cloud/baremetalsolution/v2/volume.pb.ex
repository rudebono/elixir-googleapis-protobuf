defmodule Google.Cloud.Baremetalsolution.V2.Volume.StorageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :UPDATING, 4
  field :COOL_OFF, 5
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.SnapshotAutoDeleteBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED, 0
  field :DISABLED, 1
  field :OLDEST_FIRST, 2
  field :NEWEST_FIRST, 3
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :FIBRE_CHANNEL, 1
  field :NFS, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.WorkloadProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WORKLOAD_PROFILE_UNSPECIFIED, 0
  field :GENERIC, 1
  field :HANA, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.SnapshotReservationDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reserved_space_gib, 1, type: :int64, json_name: "reservedSpaceGib"
  field :reserved_space_used_percent, 2, type: :int32, json_name: "reservedSpaceUsedPercent"
  field :reserved_space_remaining_gib, 3, type: :int64, json_name: "reservedSpaceRemainingGib"
  field :reserved_space_percent, 4, type: :int32, json_name: "reservedSpacePercent"
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.Volume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 11, type: :string

  field :storage_type, 2,
    type: Google.Cloud.Baremetalsolution.V2.Volume.StorageType,
    json_name: "storageType",
    enum: true

  field :state, 3, type: Google.Cloud.Baremetalsolution.V2.Volume.State, enum: true
  field :requested_size_gib, 4, type: :int64, json_name: "requestedSizeGib"
  field :originally_requested_size_gib, 16, type: :int64, json_name: "originallyRequestedSizeGib"
  field :current_size_gib, 5, type: :int64, json_name: "currentSizeGib"
  field :emergency_size_gib, 14, type: :int64, json_name: "emergencySizeGib"
  field :max_size_gib, 17, type: :int64, json_name: "maxSizeGib"
  field :auto_grown_size_gib, 6, type: :int64, json_name: "autoGrownSizeGib"
  field :remaining_space_gib, 7, type: :int64, json_name: "remainingSpaceGib"

  field :snapshot_reservation_detail, 8,
    type: Google.Cloud.Baremetalsolution.V2.Volume.SnapshotReservationDetail,
    json_name: "snapshotReservationDetail"

  field :snapshot_auto_delete_behavior, 9,
    type: Google.Cloud.Baremetalsolution.V2.Volume.SnapshotAutoDeleteBehavior,
    json_name: "snapshotAutoDeleteBehavior",
    enum: true

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.Volume.LabelsEntry,
    map: true

  field :snapshot_enabled, 13, type: :bool, json_name: "snapshotEnabled"
  field :pod, 15, type: :string, deprecated: false

  field :protocol, 18,
    type: Google.Cloud.Baremetalsolution.V2.Volume.Protocol,
    enum: true,
    deprecated: false

  field :boot_volume, 19, type: :bool, json_name: "bootVolume", deprecated: false

  field :performance_tier, 20,
    type: Google.Cloud.Baremetalsolution.V2.VolumePerformanceTier,
    json_name: "performanceTier",
    enum: true,
    deprecated: false

  field :notes, 21, type: :string, deprecated: false

  field :workload_profile, 22,
    type: Google.Cloud.Baremetalsolution.V2.Volume.WorkloadProfile,
    json_name: "workloadProfile",
    enum: true

  field :expire_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :instances, 25, repeated: true, type: :string, deprecated: false
  field :attached, 26, type: :bool, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.GetVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ListVolumesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.ListVolumesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volumes, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Volume
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Baremetalsolution.V2.UpdateVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volume, 1, type: Google.Cloud.Baremetalsolution.V2.Volume, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Baremetalsolution.V2.RenameVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :new_volume_id, 2, type: :string, json_name: "newVolumeId", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.EvictVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ResizeVolumeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :volume, 1, type: :string, deprecated: false
  field :size_gib, 2, type: :int64, json_name: "sizeGib"
end
