defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.baremetalsolution.v2.BareMetalSolution",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListInstances,
      Google.Cloud.Baremetalsolution.V2.ListInstancesRequest,
      Google.Cloud.Baremetalsolution.V2.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Baremetalsolution.V2.GetInstanceRequest,
      Google.Cloud.Baremetalsolution.V2.Instance

  rpc :UpdateInstance,
      Google.Cloud.Baremetalsolution.V2.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RenameInstance,
      Google.Cloud.Baremetalsolution.V2.RenameInstanceRequest,
      Google.Cloud.Baremetalsolution.V2.Instance

  rpc :ResetInstance,
      Google.Cloud.Baremetalsolution.V2.ResetInstanceRequest,
      Google.Longrunning.Operation

  rpc :StartInstance,
      Google.Cloud.Baremetalsolution.V2.StartInstanceRequest,
      Google.Longrunning.Operation

  rpc :StopInstance,
      Google.Cloud.Baremetalsolution.V2.StopInstanceRequest,
      Google.Longrunning.Operation

  rpc :EnableInteractiveSerialConsole,
      Google.Cloud.Baremetalsolution.V2.EnableInteractiveSerialConsoleRequest,
      Google.Longrunning.Operation

  rpc :DisableInteractiveSerialConsole,
      Google.Cloud.Baremetalsolution.V2.DisableInteractiveSerialConsoleRequest,
      Google.Longrunning.Operation

  rpc :DetachLun, Google.Cloud.Baremetalsolution.V2.DetachLunRequest, Google.Longrunning.Operation

  rpc :ListSSHKeys,
      Google.Cloud.Baremetalsolution.V2.ListSSHKeysRequest,
      Google.Cloud.Baremetalsolution.V2.ListSSHKeysResponse

  rpc :CreateSSHKey,
      Google.Cloud.Baremetalsolution.V2.CreateSSHKeyRequest,
      Google.Cloud.Baremetalsolution.V2.SSHKey

  rpc :DeleteSSHKey, Google.Cloud.Baremetalsolution.V2.DeleteSSHKeyRequest, Google.Protobuf.Empty

  rpc :ListVolumes,
      Google.Cloud.Baremetalsolution.V2.ListVolumesRequest,
      Google.Cloud.Baremetalsolution.V2.ListVolumesResponse

  rpc :GetVolume,
      Google.Cloud.Baremetalsolution.V2.GetVolumeRequest,
      Google.Cloud.Baremetalsolution.V2.Volume

  rpc :UpdateVolume,
      Google.Cloud.Baremetalsolution.V2.UpdateVolumeRequest,
      Google.Longrunning.Operation

  rpc :RenameVolume,
      Google.Cloud.Baremetalsolution.V2.RenameVolumeRequest,
      Google.Cloud.Baremetalsolution.V2.Volume

  rpc :EvictVolume,
      Google.Cloud.Baremetalsolution.V2.EvictVolumeRequest,
      Google.Longrunning.Operation

  rpc :ResizeVolume,
      Google.Cloud.Baremetalsolution.V2.ResizeVolumeRequest,
      Google.Longrunning.Operation

  rpc :ListNetworks,
      Google.Cloud.Baremetalsolution.V2.ListNetworksRequest,
      Google.Cloud.Baremetalsolution.V2.ListNetworksResponse

  rpc :ListNetworkUsage,
      Google.Cloud.Baremetalsolution.V2.ListNetworkUsageRequest,
      Google.Cloud.Baremetalsolution.V2.ListNetworkUsageResponse

  rpc :GetNetwork,
      Google.Cloud.Baremetalsolution.V2.GetNetworkRequest,
      Google.Cloud.Baremetalsolution.V2.Network

  rpc :UpdateNetwork,
      Google.Cloud.Baremetalsolution.V2.UpdateNetworkRequest,
      Google.Longrunning.Operation

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

  rpc :EvictLun, Google.Cloud.Baremetalsolution.V2.EvictLunRequest, Google.Longrunning.Operation

  rpc :GetNfsShare,
      Google.Cloud.Baremetalsolution.V2.GetNfsShareRequest,
      Google.Cloud.Baremetalsolution.V2.NfsShare

  rpc :ListNfsShares,
      Google.Cloud.Baremetalsolution.V2.ListNfsSharesRequest,
      Google.Cloud.Baremetalsolution.V2.ListNfsSharesResponse

  rpc :UpdateNfsShare,
      Google.Cloud.Baremetalsolution.V2.UpdateNfsShareRequest,
      Google.Longrunning.Operation

  rpc :CreateNfsShare,
      Google.Cloud.Baremetalsolution.V2.CreateNfsShareRequest,
      Google.Longrunning.Operation

  rpc :RenameNfsShare,
      Google.Cloud.Baremetalsolution.V2.RenameNfsShareRequest,
      Google.Cloud.Baremetalsolution.V2.NfsShare

  rpc :DeleteNfsShare,
      Google.Cloud.Baremetalsolution.V2.DeleteNfsShareRequest,
      Google.Longrunning.Operation

  rpc :ListProvisioningQuotas,
      Google.Cloud.Baremetalsolution.V2.ListProvisioningQuotasRequest,
      Google.Cloud.Baremetalsolution.V2.ListProvisioningQuotasResponse

  rpc :SubmitProvisioningConfig,
      Google.Cloud.Baremetalsolution.V2.SubmitProvisioningConfigRequest,
      Google.Cloud.Baremetalsolution.V2.SubmitProvisioningConfigResponse

  rpc :GetProvisioningConfig,
      Google.Cloud.Baremetalsolution.V2.GetProvisioningConfigRequest,
      Google.Cloud.Baremetalsolution.V2.ProvisioningConfig

  rpc :CreateProvisioningConfig,
      Google.Cloud.Baremetalsolution.V2.CreateProvisioningConfigRequest,
      Google.Cloud.Baremetalsolution.V2.ProvisioningConfig

  rpc :UpdateProvisioningConfig,
      Google.Cloud.Baremetalsolution.V2.UpdateProvisioningConfigRequest,
      Google.Cloud.Baremetalsolution.V2.ProvisioningConfig

  rpc :RenameNetwork,
      Google.Cloud.Baremetalsolution.V2.RenameNetworkRequest,
      Google.Cloud.Baremetalsolution.V2.Network

  rpc :ListOSImages,
      Google.Cloud.Baremetalsolution.V2.ListOSImagesRequest,
      Google.Cloud.Baremetalsolution.V2.ListOSImagesResponse
end

defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service
end