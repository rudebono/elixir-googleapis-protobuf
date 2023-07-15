defmodule Google.Cloud.Netapp.V1beta1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Netapp.V1beta1.NetApp.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.netapp.v1beta1.NetApp",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListStoragePools,
      Google.Cloud.Netapp.V1beta1.ListStoragePoolsRequest,
      Google.Cloud.Netapp.V1beta1.ListStoragePoolsResponse

  rpc :CreateStoragePool,
      Google.Cloud.Netapp.V1beta1.CreateStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :GetStoragePool,
      Google.Cloud.Netapp.V1beta1.GetStoragePoolRequest,
      Google.Cloud.Netapp.V1beta1.StoragePool

  rpc :UpdateStoragePool,
      Google.Cloud.Netapp.V1beta1.UpdateStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :DeleteStoragePool,
      Google.Cloud.Netapp.V1beta1.DeleteStoragePoolRequest,
      Google.Longrunning.Operation

  rpc :ListVolumes,
      Google.Cloud.Netapp.V1beta1.ListVolumesRequest,
      Google.Cloud.Netapp.V1beta1.ListVolumesResponse

  rpc :GetVolume, Google.Cloud.Netapp.V1beta1.GetVolumeRequest, Google.Cloud.Netapp.V1beta1.Volume

  rpc :CreateVolume, Google.Cloud.Netapp.V1beta1.CreateVolumeRequest, Google.Longrunning.Operation

  rpc :UpdateVolume, Google.Cloud.Netapp.V1beta1.UpdateVolumeRequest, Google.Longrunning.Operation

  rpc :DeleteVolume, Google.Cloud.Netapp.V1beta1.DeleteVolumeRequest, Google.Longrunning.Operation

  rpc :RevertVolume, Google.Cloud.Netapp.V1beta1.RevertVolumeRequest, Google.Longrunning.Operation

  rpc :ListSnapshots,
      Google.Cloud.Netapp.V1beta1.ListSnapshotsRequest,
      Google.Cloud.Netapp.V1beta1.ListSnapshotsResponse

  rpc :GetSnapshot,
      Google.Cloud.Netapp.V1beta1.GetSnapshotRequest,
      Google.Cloud.Netapp.V1beta1.Snapshot

  rpc :CreateSnapshot,
      Google.Cloud.Netapp.V1beta1.CreateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :DeleteSnapshot,
      Google.Cloud.Netapp.V1beta1.DeleteSnapshotRequest,
      Google.Longrunning.Operation

  rpc :UpdateSnapshot,
      Google.Cloud.Netapp.V1beta1.UpdateSnapshotRequest,
      Google.Longrunning.Operation

  rpc :ListActiveDirectories,
      Google.Cloud.Netapp.V1beta1.ListActiveDirectoriesRequest,
      Google.Cloud.Netapp.V1beta1.ListActiveDirectoriesResponse

  rpc :GetActiveDirectory,
      Google.Cloud.Netapp.V1beta1.GetActiveDirectoryRequest,
      Google.Cloud.Netapp.V1beta1.ActiveDirectory

  rpc :CreateActiveDirectory,
      Google.Cloud.Netapp.V1beta1.CreateActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateActiveDirectory,
      Google.Cloud.Netapp.V1beta1.UpdateActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :DeleteActiveDirectory,
      Google.Cloud.Netapp.V1beta1.DeleteActiveDirectoryRequest,
      Google.Longrunning.Operation

  rpc :ListKmsConfigs,
      Google.Cloud.Netapp.V1beta1.ListKmsConfigsRequest,
      Google.Cloud.Netapp.V1beta1.ListKmsConfigsResponse

  rpc :CreateKmsConfig,
      Google.Cloud.Netapp.V1beta1.CreateKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :GetKmsConfig,
      Google.Cloud.Netapp.V1beta1.GetKmsConfigRequest,
      Google.Cloud.Netapp.V1beta1.KmsConfig

  rpc :UpdateKmsConfig,
      Google.Cloud.Netapp.V1beta1.UpdateKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :EncryptVolumes,
      Google.Cloud.Netapp.V1beta1.EncryptVolumesRequest,
      Google.Longrunning.Operation

  rpc :VerifyKmsConfig,
      Google.Cloud.Netapp.V1beta1.VerifyKmsConfigRequest,
      Google.Cloud.Netapp.V1beta1.VerifyKmsConfigResponse

  rpc :DeleteKmsConfig,
      Google.Cloud.Netapp.V1beta1.DeleteKmsConfigRequest,
      Google.Longrunning.Operation

  rpc :ListReplications,
      Google.Cloud.Netapp.V1beta1.ListReplicationsRequest,
      Google.Cloud.Netapp.V1beta1.ListReplicationsResponse

  rpc :GetReplication,
      Google.Cloud.Netapp.V1beta1.GetReplicationRequest,
      Google.Cloud.Netapp.V1beta1.Replication

  rpc :CreateReplication,
      Google.Cloud.Netapp.V1beta1.CreateReplicationRequest,
      Google.Longrunning.Operation

  rpc :DeleteReplication,
      Google.Cloud.Netapp.V1beta1.DeleteReplicationRequest,
      Google.Longrunning.Operation

  rpc :UpdateReplication,
      Google.Cloud.Netapp.V1beta1.UpdateReplicationRequest,
      Google.Longrunning.Operation

  rpc :StopReplication,
      Google.Cloud.Netapp.V1beta1.StopReplicationRequest,
      Google.Longrunning.Operation

  rpc :ResumeReplication,
      Google.Cloud.Netapp.V1beta1.ResumeReplicationRequest,
      Google.Longrunning.Operation

  rpc :ReverseReplicationDirection,
      Google.Cloud.Netapp.V1beta1.ReverseReplicationDirectionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Netapp.V1beta1.NetApp.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Netapp.V1beta1.NetApp.Service
end