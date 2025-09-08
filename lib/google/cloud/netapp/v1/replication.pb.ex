defmodule Google.Cloud.Netapp.V1.Replication.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 5
  field :ERROR, 6
  field :PENDING_CLUSTER_PEERING, 8
  field :PENDING_SVM_PEERING, 9
  field :PENDING_REMOTE_RESYNC, 10
  field :EXTERNALLY_MANAGED_REPLICATION, 11
end

defmodule Google.Cloud.Netapp.V1.Replication.ReplicationRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REPLICATION_ROLE_UNSPECIFIED, 0
  field :SOURCE, 1
  field :DESTINATION, 2
end

defmodule Google.Cloud.Netapp.V1.Replication.ReplicationSchedule do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REPLICATION_SCHEDULE_UNSPECIFIED, 0
  field :EVERY_10_MINUTES, 1
  field :HOURLY, 2
  field :DAILY, 3
end

defmodule Google.Cloud.Netapp.V1.Replication.MirrorState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MIRROR_STATE_UNSPECIFIED, 0
  field :PREPARING, 1
  field :MIRRORED, 2
  field :STOPPED, 3
  field :TRANSFERRING, 4
  field :BASELINE_TRANSFERRING, 5
  field :ABORTED, 6
  field :EXTERNALLY_MANAGED, 7
  field :PENDING_PEERING, 8
end

defmodule Google.Cloud.Netapp.V1.Replication.HybridReplicationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HYBRID_REPLICATION_TYPE_UNSPECIFIED, 0
  field :MIGRATION, 1
  field :CONTINUOUS_REPLICATION, 2
  field :ONPREM_REPLICATION, 3
  field :REVERSE_ONPREM_REPLICATION, 4
end

defmodule Google.Cloud.Netapp.V1.TransferStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transfer_bytes, 1, proto3_optional: true, type: :int64, json_name: "transferBytes"

  field :total_transfer_duration, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "totalTransferDuration"

  field :last_transfer_bytes, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "lastTransferBytes"

  field :last_transfer_duration, 4,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "lastTransferDuration"

  field :lag_duration, 5,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "lagDuration"

  field :update_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime"

  field :last_transfer_end_time, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTransferEndTime"

  field :last_transfer_error, 8,
    proto3_optional: true,
    type: :string,
    json_name: "lastTransferError"
end

defmodule Google.Cloud.Netapp.V1.Replication.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.Replication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Netapp.V1.Replication.State, enum: true, deprecated: false
  field :state_details, 3, type: :string, json_name: "stateDetails", deprecated: false

  field :role, 4,
    type: Google.Cloud.Netapp.V1.Replication.ReplicationRole,
    enum: true,
    deprecated: false

  field :replication_schedule, 5,
    type: Google.Cloud.Netapp.V1.Replication.ReplicationSchedule,
    json_name: "replicationSchedule",
    enum: true,
    deprecated: false

  field :mirror_state, 6,
    type: Google.Cloud.Netapp.V1.Replication.MirrorState,
    json_name: "mirrorState",
    enum: true,
    deprecated: false

  field :healthy, 8, proto3_optional: true, type: :bool, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :destination_volume, 10, type: :string, json_name: "destinationVolume", deprecated: false

  field :transfer_stats, 11,
    type: Google.Cloud.Netapp.V1.TransferStats,
    json_name: "transferStats",
    deprecated: false

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Netapp.V1.Replication.LabelsEntry,
    map: true

  field :description, 13, proto3_optional: true, type: :string

  field :destination_volume_parameters, 14,
    type: Google.Cloud.Netapp.V1.DestinationVolumeParameters,
    json_name: "destinationVolumeParameters",
    deprecated: false

  field :source_volume, 15, type: :string, json_name: "sourceVolume", deprecated: false

  field :hybrid_peering_details, 16,
    type: Google.Cloud.Netapp.V1.HybridPeeringDetails,
    json_name: "hybridPeeringDetails",
    deprecated: false

  field :cluster_location, 18, type: :string, json_name: "clusterLocation", deprecated: false

  field :hybrid_replication_type, 19,
    type: Google.Cloud.Netapp.V1.Replication.HybridReplicationType,
    json_name: "hybridReplicationType",
    enum: true,
    deprecated: false

  field :hybrid_replication_user_commands, 20,
    type: Google.Cloud.Netapp.V1.UserCommands,
    json_name: "hybridReplicationUserCommands",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.HybridPeeringDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnet_ip, 1, type: :string, json_name: "subnetIp", deprecated: false
  field :command, 2, type: :string, deprecated: false

  field :command_expiry_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "commandExpiryTime",
    deprecated: false

  field :passphrase, 4, type: :string, deprecated: false
  field :peer_volume_name, 5, type: :string, json_name: "peerVolumeName", deprecated: false
  field :peer_cluster_name, 6, type: :string, json_name: "peerClusterName", deprecated: false
  field :peer_svm_name, 7, type: :string, json_name: "peerSvmName", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListReplicationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Netapp.V1.ListReplicationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :replications, 1, repeated: true, type: Google.Cloud.Netapp.V1.Replication
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.GetReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DestinationVolumeParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :storage_pool, 1, type: :string, json_name: "storagePool", deprecated: false
  field :volume_id, 2, type: :string, json_name: "volumeId"
  field :share_name, 3, type: :string, json_name: "shareName"
  field :description, 4, proto3_optional: true, type: :string

  field :tiering_policy, 5,
    proto3_optional: true,
    type: Google.Cloud.Netapp.V1.TieringPolicy,
    json_name: "tieringPolicy",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :replication, 2, type: Google.Cloud.Netapp.V1.Replication, deprecated: false
  field :replication_id, 3, type: :string, json_name: "replicationId", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :replication, 2, type: Google.Cloud.Netapp.V1.Replication, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.StopReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Netapp.V1.ResumeReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ReverseReplicationDirectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.EstablishPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :peer_cluster_name, 2, type: :string, json_name: "peerClusterName", deprecated: false
  field :peer_svm_name, 3, type: :string, json_name: "peerSvmName", deprecated: false

  field :peer_ip_addresses, 4,
    repeated: true,
    type: :string,
    json_name: "peerIpAddresses",
    deprecated: false

  field :peer_volume_name, 5, type: :string, json_name: "peerVolumeName", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.SyncReplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
