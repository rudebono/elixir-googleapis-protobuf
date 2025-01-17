defmodule Google.Cloud.Netapp.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Netapp.V1.NetApp.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.netapp.v1.NetApp", protoc_gen_elixir_version: "0.14.0"

  rpc :ListStoragePools,
      Google.Cloud.Netapp.V1.ListStoragePoolsRequest,
      Google.Cloud.Netapp.V1.ListStoragePoolsResponse

  rpc :CreateStoragePool,
      Google.Cloud.Netapp.V1.CreateStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :GetStoragePool,
      Google.Cloud.Netapp.V1.GetStoragePoolRequest,
      Google.Cloud.Netapp.V1.StoragePool

  rpc :UpdateStoragePool,
      Google.Cloud.Netapp.V1.UpdateStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :DeleteStoragePool,
      Google.Cloud.Netapp.V1.DeleteStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :ValidateDirectoryService,
      Google.Cloud.Netapp.V1.ValidateDirectoryServiceRequest,
      Google.Longrunning.Operation

  rpc :SwitchActiveReplicaZone,
      Google.Cloud.Netapp.V1.SwitchActiveReplicaZoneRequest,
      Google.Longrunning.Operation

  rpc :ListVolumes,
      Google.Cloud.Netapp.V1.ListVolumesRequest,
      Google.Cloud.Netapp.V1.ListVolumesResponse

  rpc :GetVolume, Google.Cloud.Netapp.V1.GetVolumeRequest, Google.Cloud.Netapp.V1.Volume

  rpc :CreateVolume, Google.Cloud.Netapp.V1.CreateVolumeRequest, Google.Longrunning.Operation

  rpc :UpdateVolume, Google.Cloud.Netapp.V1.UpdateVolumeRequest, Google.Longrunning.Operation

  rpc :DeleteVolume, Google.Cloud.Netapp.V1.DeleteVolumeRequest, Google.Longrunning.Operation

  rpc :RevertVolume, Google.Cloud.Netapp.V1.RevertVolumeRequest, Google.Longrunning.Operation

  rpc :ListSnapshots,
      Google.Cloud.Netapp.V1.ListSnapshotsRequest,
      Google.Cloud.Netapp.V1.ListSnapshotsResponse

  rpc :GetSnapshot, Google.Cloud.Netapp.V1.GetSnapshotRequest, Google.Cloud.Netapp.V1.Snapshot

  rpc :CreateSnapshot, Google.Cloud.Netapp.V1.CreateSnapshotRequest, Google.Longrunning.Operation

  rpc :DeleteSnapshot, Google.Cloud.Netapp.V1.DeleteSnapshotRequest, Google.Longrunning.Operation

  rpc :UpdateSnapshot, Google.Cloud.Netapp.V1.UpdateSnapshotRequest, Google.Longrunning.Operation

  rpc :ListActiveDirectories,
      Google.Cloud.Netapp.V1.ListActiveDirectoriesRequest,
      Google.Cloud.Netapp.V1.ListActiveDirectoriesResponse

  rpc :GetActiveDirectory,
      Google.Cloud.Netapp.V1.GetActiveDirectoryRequest,
      Google.Cloud.Netapp.V1.ActiveDirectory

  rpc :CreateActiveDirectory,
      Google.Cloud.Netapp.V1.CreateActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateActiveDirectory,
      Google.Cloud.Netapp.V1.UpdateActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :DeleteActiveDirectory,
      Google.Cloud.Netapp.V1.DeleteActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :ListKmsConfigs,
      Google.Cloud.Netapp.V1.ListKmsConfigsRequest,
      Google.Cloud.Netapp.V1.ListKmsConfigsResponse

  rpc :CreateKmsConfig,
      Google.Cloud.Netapp.V1.CreateKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :GetKmsConfig, Google.Cloud.Netapp.V1.GetKmsConfigRequest, Google.Cloud.Netapp.V1.KmsConfig

  rpc :UpdateKmsConfig,
      Google.Cloud.Netapp.V1.UpdateKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :EncryptVolumes, Google.Cloud.Netapp.V1.EncryptVolumesRequest, Google.Longrunning.Operation

  rpc :VerifyKmsConfig,
      Google.Cloud.Netapp.V1.VerifyKmsConfigRequest,
      Google.Cloud.Netapp.V1.VerifyKmsConfigResponse

  rpc :DeleteKmsConfig,
      Google.Cloud.Netapp.V1.DeleteKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :ListReplications,
      Google.Cloud.Netapp.V1.ListReplicationsRequest,
      Google.Cloud.Netapp.V1.ListReplicationsResponse

  rpc :GetReplication,
      Google.Cloud.Netapp.V1.GetReplicationRequest,
      Google.Cloud.Netapp.V1.Replication

  rpc :CreateReplication,
      Google.Cloud.Netapp.V1.CreateReplicationRequest,
      Google.Longrunning.Operation

  rpc :DeleteReplication,
      Google.Cloud.Netapp.V1.DeleteReplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateReplication,
      Google.Cloud.Netapp.V1.UpdateReplicationRequest,
      Google.Longrunning.Operation

  rpc :StopReplication,
      Google.Cloud.Netapp.V1.StopReplicationRequest,
      Google.Longrunning.Operation

  rpc :ResumeReplication,
      Google.Cloud.Netapp.V1.ResumeReplicationRequest,
      Google.Longrunning.Operation

  rpc :ReverseReplicationDirection,
      Google.Cloud.Netapp.V1.ReverseReplicationDirectionRequest,
      Google.Longrunning.Operation

  rpc :EstablishPeering,
      Google.Cloud.Netapp.V1.EstablishPeeringRequest,
      Google.Longrunning.Operation

  rpc :SyncReplication,
      Google.Cloud.Netapp.V1.SyncReplicationRequest,
      Google.Longrunning.Operation

  rpc :CreateBackupVault,
      Google.Cloud.Netapp.V1.CreateBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :GetBackupVault,
      Google.Cloud.Netapp.V1.GetBackupVaultRequest,
      Google.Cloud.Netapp.V1.BackupVault

  rpc :ListBackupVaults,
      Google.Cloud.Netapp.V1.ListBackupVaultsRequest,
      Google.Cloud.Netapp.V1.ListBackupVaultsResponse

  rpc :UpdateBackupVault,
      Google.Cloud.Netapp.V1.UpdateBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackupVault,
      Google.Cloud.Netapp.V1.DeleteBackupVaultRequest,
      Google.Longrunning.Operation

  rpc :CreateBackup, Google.Cloud.Netapp.V1.CreateBackupRequest, Google.Longrunning.Operation

  rpc :GetBackup, Google.Cloud.Netapp.V1.GetBackupRequest, Google.Cloud.Netapp.V1.Backup

  rpc :ListBackups,
      Google.Cloud.Netapp.V1.ListBackupsRequest,
      Google.Cloud.Netapp.V1.ListBackupsResponse

  rpc :DeleteBackup, Google.Cloud.Netapp.V1.DeleteBackupRequest, Google.Longrunning.Operation

  rpc :UpdateBackup, Google.Cloud.Netapp.V1.UpdateBackupRequest, Google.Longrunning.Operation

  rpc :CreateBackupPolicy,
      Google.Cloud.Netapp.V1.CreateBackupPolicyRequest,
      Google.Longrunning.Operation

  rpc :GetBackupPolicy,
      Google.Cloud.Netapp.V1.GetBackupPolicyRequest,
      Google.Cloud.Netapp.V1.BackupPolicy

  rpc :ListBackupPolicies,
      Google.Cloud.Netapp.V1.ListBackupPoliciesRequest,
      Google.Cloud.Netapp.V1.ListBackupPoliciesResponse

  rpc :UpdateBackupPolicy,
      Google.Cloud.Netapp.V1.UpdateBackupPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackupPolicy,
      Google.Cloud.Netapp.V1.DeleteBackupPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Netapp.V1.NetApp.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Netapp.V1.NetApp.Service
end
