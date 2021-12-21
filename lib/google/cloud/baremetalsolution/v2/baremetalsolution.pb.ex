defmodule Google.Cloud.Baremetalsolution.V2.Volume.StorageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STORAGE_TYPE_UNSPECIFIED | :SSD | :HDD

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.Volume.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
end
defmodule Google.Cloud.Baremetalsolution.V2.Volume.SnapshotAutoDeleteBehavior do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED
          | :DISABLED
          | :OLDEST_FIRST
          | :NEWEST_FIRST

  field :SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED, 0
  field :DISABLED, 1
  field :OLDEST_FIRST, 2
  field :NEWEST_FIRST, 3
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :UPDATING | :READY | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :READY, 3
  field :DELETING, 4
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun.MultiprotocolType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MULTIPROTOCOL_TYPE_UNSPECIFIED | :LINUX

  field :MULTIPROTOCOL_TYPE_UNSPECIFIED, 0
  field :LINUX, 1
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun.StorageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STORAGE_TYPE_UNSPECIFIED | :SSD | :HDD

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.Network.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :CLIENT | :PRIVATE

  field :TYPE_UNSPECIFIED, 0
  field :CLIENT, 1
  field :PRIVATE, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.Network.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PROVISIONING | :PROVISIONED

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :PROVISIONED, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.VRF.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PROVISIONING | :PROVISIONED

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :PROVISIONED, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PROVISIONING | :RUNNING | :DELETED

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :DELETED, 3
end
defmodule Google.Cloud.Baremetalsolution.V2.Volume.SnapshotReservationDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reserved_space_gib: integer,
          reserved_space_used_percent: integer,
          reserved_space_remaining_gib: integer
        }

  defstruct reserved_space_gib: 0,
            reserved_space_used_percent: 0,
            reserved_space_remaining_gib: 0

  field :reserved_space_gib, 1, type: :int64, json_name: "reservedSpaceGib"
  field :reserved_space_used_percent, 2, type: :int32, json_name: "reservedSpaceUsedPercent"
  field :reserved_space_remaining_gib, 3, type: :int64, json_name: "reservedSpaceRemainingGib"
end
defmodule Google.Cloud.Baremetalsolution.V2.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          storage_type: Google.Cloud.Baremetalsolution.V2.Volume.StorageType.t(),
          state: Google.Cloud.Baremetalsolution.V2.Volume.State.t(),
          requested_size_gib: integer,
          current_size_gib: integer,
          auto_grown_size_gib: integer,
          remaining_space_gib: integer,
          snapshot_reservation_detail:
            Google.Cloud.Baremetalsolution.V2.Volume.SnapshotReservationDetail.t() | nil,
          snapshot_auto_delete_behavior:
            Google.Cloud.Baremetalsolution.V2.Volume.SnapshotAutoDeleteBehavior.t(),
          snapshot_schedule_policy: String.t()
        }

  defstruct name: "",
            storage_type: :STORAGE_TYPE_UNSPECIFIED,
            state: :STATE_UNSPECIFIED,
            requested_size_gib: 0,
            current_size_gib: 0,
            auto_grown_size_gib: 0,
            remaining_space_gib: 0,
            snapshot_reservation_detail: nil,
            snapshot_auto_delete_behavior: :SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED,
            snapshot_schedule_policy: ""

  field :name, 1, type: :string, deprecated: false

  field :storage_type, 2,
    type: Google.Cloud.Baremetalsolution.V2.Volume.StorageType,
    json_name: "storageType",
    enum: true

  field :state, 3, type: Google.Cloud.Baremetalsolution.V2.Volume.State, enum: true
  field :requested_size_gib, 4, type: :int64, json_name: "requestedSizeGib"
  field :current_size_gib, 5, type: :int64, json_name: "currentSizeGib"
  field :auto_grown_size_gib, 6, type: :int64, json_name: "autoGrownSizeGib"
  field :remaining_space_gib, 7, type: :int64, json_name: "remainingSpaceGib"

  field :snapshot_reservation_detail, 8,
    type: Google.Cloud.Baremetalsolution.V2.Volume.SnapshotReservationDetail,
    json_name: "snapshotReservationDetail"

  field :snapshot_auto_delete_behavior, 9,
    type: Google.Cloud.Baremetalsolution.V2.Volume.SnapshotAutoDeleteBehavior,
    json_name: "snapshotAutoDeleteBehavior",
    enum: true

  field :snapshot_schedule_policy, 10,
    type: :string,
    json_name: "snapshotSchedulePolicy",
    deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ListVolumesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListVolumesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volumes: [Google.Cloud.Baremetalsolution.V2.Volume.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct volumes: [],
            next_page_token: "",
            unreachable: []

  field :volumes, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Volume
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.GetVolumeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Baremetalsolution.V2.Lun.State.t(),
          size_gb: integer,
          multiprotocol_type: Google.Cloud.Baremetalsolution.V2.Lun.MultiprotocolType.t(),
          storage_volume: String.t(),
          shareable: boolean,
          boot_lun: boolean,
          storage_type: Google.Cloud.Baremetalsolution.V2.Lun.StorageType.t(),
          wwid: String.t()
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            size_gb: 0,
            multiprotocol_type: :MULTIPROTOCOL_TYPE_UNSPECIFIED,
            storage_volume: "",
            shareable: false,
            boot_lun: false,
            storage_type: :STORAGE_TYPE_UNSPECIFIED,
            wwid: ""

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Baremetalsolution.V2.Lun.State, enum: true
  field :size_gb, 3, type: :int64, json_name: "sizeGb"

  field :multiprotocol_type, 4,
    type: Google.Cloud.Baremetalsolution.V2.Lun.MultiprotocolType,
    json_name: "multiprotocolType",
    enum: true

  field :storage_volume, 5, type: :string, json_name: "storageVolume", deprecated: false
  field :shareable, 6, type: :bool
  field :boot_lun, 7, type: :bool, json_name: "bootLun"

  field :storage_type, 8,
    type: Google.Cloud.Baremetalsolution.V2.Lun.StorageType,
    json_name: "storageType",
    enum: true

  field :wwid, 9, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.Network do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          network: String.t(),
          type: Google.Cloud.Baremetalsolution.V2.Network.Type.t(),
          ip_address: String.t(),
          mac_address: [String.t()],
          state: Google.Cloud.Baremetalsolution.V2.Network.State.t(),
          vlan_id: String.t(),
          cidr: String.t(),
          vrf: Google.Cloud.Baremetalsolution.V2.VRF.t() | nil
        }

  defstruct name: "",
            network: "",
            type: :TYPE_UNSPECIFIED,
            ip_address: "",
            mac_address: [],
            state: :STATE_UNSPECIFIED,
            vlan_id: "",
            cidr: "",
            vrf: nil

  field :name, 5, type: :string, deprecated: false
  field :network, 1, type: :string
  field :type, 2, type: Google.Cloud.Baremetalsolution.V2.Network.Type, enum: true
  field :ip_address, 3, type: :string, json_name: "ipAddress"
  field :mac_address, 4, repeated: true, type: :string, json_name: "macAddress"
  field :state, 6, type: Google.Cloud.Baremetalsolution.V2.Network.State, enum: true
  field :vlan_id, 7, type: :string, json_name: "vlanId"
  field :cidr, 8, type: :string
  field :vrf, 9, type: Google.Cloud.Baremetalsolution.V2.VRF
end
defmodule Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bandwidth_gbps: float | :infinity | :negative_infinity | :nan
        }

  defstruct bandwidth_gbps: 0.0

  field :bandwidth_gbps, 1, type: :double, json_name: "bandwidthGbps"
end
defmodule Google.Cloud.Baremetalsolution.V2.VRF.VlanAttachment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          peer_vlan_id: integer,
          peer_ip: String.t(),
          router_ip: String.t()
        }

  defstruct peer_vlan_id: 0,
            peer_ip: "",
            router_ip: ""

  field :peer_vlan_id, 1, type: :int64, json_name: "peerVlanId"
  field :peer_ip, 2, type: :string, json_name: "peerIp"
  field :router_ip, 3, type: :string, json_name: "routerIp"
end
defmodule Google.Cloud.Baremetalsolution.V2.VRF do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Baremetalsolution.V2.VRF.State.t(),
          qos_policy: Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy.t() | nil,
          vlan_attachments: [Google.Cloud.Baremetalsolution.V2.VRF.VlanAttachment.t()]
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            qos_policy: nil,
            vlan_attachments: []

  field :name, 1, type: :string
  field :state, 5, type: Google.Cloud.Baremetalsolution.V2.VRF.State, enum: true

  field :qos_policy, 6,
    type: Google.Cloud.Baremetalsolution.V2.VRF.QosPolicy,
    json_name: "qosPolicy"

  field :vlan_attachments, 7,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VRF.VlanAttachment,
    json_name: "vlanAttachments"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListNetworksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListNetworksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          networks: [Google.Cloud.Baremetalsolution.V2.Network.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct networks: [],
            next_page_token: "",
            unreachable: []

  field :networks, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Network
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.GetNetworkRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.GetSnapshotSchedulePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          machine_type: String.t(),
          state: Google.Cloud.Baremetalsolution.V2.Instance.State.t(),
          hyperthreading_enabled: boolean,
          labels: %{String.t() => String.t()},
          luns: [Google.Cloud.Baremetalsolution.V2.Lun.t()],
          networks: [Google.Cloud.Baremetalsolution.V2.Network.t()],
          interactive_serial_console_enabled: boolean
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            machine_type: "",
            state: :STATE_UNSPECIFIED,
            hyperthreading_enabled: false,
            labels: %{},
            luns: [],
            networks: [],
            interactive_serial_console_enabled: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :machine_type, 4, type: :string, json_name: "machineType"
  field :state, 5, type: Google.Cloud.Baremetalsolution.V2.Instance.State, enum: true
  field :hyperthreading_enabled, 6, type: :bool, json_name: "hyperthreadingEnabled"

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.Instance.LabelsEntry,
    map: true

  field :luns, 8, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Lun
  field :networks, 9, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Network

  field :interactive_serial_console_enabled, 10,
    type: :bool,
    json_name: "interactiveSerialConsoleEnabled"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Baremetalsolution.V2.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct instances: [],
            next_page_token: "",
            unreachable: []

  field :instances, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ResetInstanceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Baremetalsolution.V2.GetVolumeSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume_snapshots: [Google.Cloud.Baremetalsolution.V2.VolumeSnapshot.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct volume_snapshots: [],
            next_page_token: "",
            unreachable: []

  field :volume_snapshots, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot,
    json_name: "volumeSnapshots"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.DeleteVolumeSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.VolumeSnapshot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          size_bytes: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          storage_volume: String.t()
        }

  defstruct name: "",
            description: "",
            size_bytes: 0,
            create_time: nil,
            storage_volume: ""

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :size_bytes, 3, type: :int64, json_name: "sizeBytes"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :storage_volume, 5, type: :string, json_name: "storageVolume", deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crontab_spec: String.t(),
          retention_count: integer,
          prefix: String.t()
        }

  defstruct crontab_spec: "",
            retention_count: 0,
            prefix: ""

  field :crontab_spec, 1, type: :string, json_name: "crontabSpec"
  field :retention_count, 2, type: :int32, json_name: "retentionCount"
  field :prefix, 3, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          schedules: [Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.Schedule.t()]
        }

  defstruct name: "",
            description: "",
            schedules: []

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :schedules, 3,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.Schedule
end
defmodule Google.Cloud.Baremetalsolution.V2.ListSnapshotSchedulePoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListSnapshotSchedulePoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_schedule_policies: [
            Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.t()
          ],
          next_page_token: String.t()
        }

  defstruct snapshot_schedule_policies: [],
            next_page_token: ""

  field :snapshot_schedule_policies, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy,
    json_name: "snapshotSchedulePolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.CreateSnapshotSchedulePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          snapshot_schedule_policy:
            Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.t() | nil,
          snapshot_schedule_policy_id: String.t()
        }

  defstruct parent: "",
            snapshot_schedule_policy: nil,
            snapshot_schedule_policy_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :snapshot_schedule_policy, 2,
    type: Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy,
    json_name: "snapshotSchedulePolicy",
    deprecated: false

  field :snapshot_schedule_policy_id, 3,
    type: :string,
    json_name: "snapshotSchedulePolicyId",
    deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.UpdateSnapshotSchedulePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_schedule_policy:
            Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct snapshot_schedule_policy: nil,
            update_mask: nil

  field :snapshot_schedule_policy, 1,
    type: Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy,
    json_name: "snapshotSchedulePolicy",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.DeleteSnapshotSchedulePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.UpdateVolumeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume: Google.Cloud.Baremetalsolution.V2.Volume.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct volume: nil,
            update_mask: nil

  field :volume, 1, type: Google.Cloud.Baremetalsolution.V2.Volume, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Baremetalsolution.V2.GetLunRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ListLunsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListLunsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          luns: [Google.Cloud.Baremetalsolution.V2.Lun.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct luns: [],
            next_page_token: "",
            unreachable: []

  field :luns, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Lun
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.CreateVolumeSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          volume_snapshot: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot.t() | nil
        }

  defstruct parent: "",
            volume_snapshot: nil

  field :parent, 1, type: :string, deprecated: false

  field :volume_snapshot, 2,
    type: Google.Cloud.Baremetalsolution.V2.VolumeSnapshot,
    json_name: "volumeSnapshot",
    deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.RestoreVolumeSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          volume_snapshot: String.t()
        }

  defstruct volume_snapshot: ""

  field :volume_snapshot, 1, type: :string, json_name: "volumeSnapshot", deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.baremetalsolution.v2.BareMetalSolution"

  rpc :ListInstances,
      Google.Cloud.Baremetalsolution.V2.ListInstancesRequest,
      Google.Cloud.Baremetalsolution.V2.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Baremetalsolution.V2.GetInstanceRequest,
      Google.Cloud.Baremetalsolution.V2.Instance

  rpc :ResetInstance,
      Google.Cloud.Baremetalsolution.V2.ResetInstanceRequest,
      Google.Longrunning.Operation

  rpc :ListVolumes,
      Google.Cloud.Baremetalsolution.V2.ListVolumesRequest,
      Google.Cloud.Baremetalsolution.V2.ListVolumesResponse

  rpc :GetVolume,
      Google.Cloud.Baremetalsolution.V2.GetVolumeRequest,
      Google.Cloud.Baremetalsolution.V2.Volume

  rpc :UpdateVolume,
      Google.Cloud.Baremetalsolution.V2.UpdateVolumeRequest,
      Google.Longrunning.Operation

  rpc :ListNetworks,
      Google.Cloud.Baremetalsolution.V2.ListNetworksRequest,
      Google.Cloud.Baremetalsolution.V2.ListNetworksResponse

  rpc :GetNetwork,
      Google.Cloud.Baremetalsolution.V2.GetNetworkRequest,
      Google.Cloud.Baremetalsolution.V2.Network

  rpc :ListSnapshotSchedulePolicies,
      Google.Cloud.Baremetalsolution.V2.ListSnapshotSchedulePoliciesRequest,
      Google.Cloud.Baremetalsolution.V2.ListSnapshotSchedulePoliciesResponse

  rpc :GetSnapshotSchedulePolicy,
      Google.Cloud.Baremetalsolution.V2.GetSnapshotSchedulePolicyRequest,
      Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy

  rpc :CreateSnapshotSchedulePolicy,
      Google.Cloud.Baremetalsolution.V2.CreateSnapshotSchedulePolicyRequest,
      Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy

  rpc :UpdateSnapshotSchedulePolicy,
      Google.Cloud.Baremetalsolution.V2.UpdateSnapshotSchedulePolicyRequest,
      Google.Cloud.Baremetalsolution.V2.SnapshotSchedulePolicy

  rpc :DeleteSnapshotSchedulePolicy,
      Google.Cloud.Baremetalsolution.V2.DeleteSnapshotSchedulePolicyRequest,
      Google.Protobuf.Empty

  rpc :CreateVolumeSnapshot,
      Google.Cloud.Baremetalsolution.V2.CreateVolumeSnapshotRequest,
      Google.Cloud.Baremetalsolution.V2.VolumeSnapshot

  rpc :RestoreVolumeSnapshot,
      Google.Cloud.Baremetalsolution.V2.RestoreVolumeSnapshotRequest,
      Google.Longrunning.Operation

  rpc :DeleteVolumeSnapshot,
      Google.Cloud.Baremetalsolution.V2.DeleteVolumeSnapshotRequest,
      Google.Protobuf.Empty

  rpc :GetVolumeSnapshot,
      Google.Cloud.Baremetalsolution.V2.GetVolumeSnapshotRequest,
      Google.Cloud.Baremetalsolution.V2.VolumeSnapshot

  rpc :ListVolumeSnapshots,
      Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsRequest,
      Google.Cloud.Baremetalsolution.V2.ListVolumeSnapshotsResponse

  rpc :GetLun,
      Google.Cloud.Baremetalsolution.V2.GetLunRequest,
      Google.Cloud.Baremetalsolution.V2.Lun

  rpc :ListLuns,
      Google.Cloud.Baremetalsolution.V2.ListLunsRequest,
      Google.Cloud.Baremetalsolution.V2.ListLunsResponse
end

defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service
end
