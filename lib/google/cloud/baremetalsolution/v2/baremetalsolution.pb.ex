defmodule Google.Cloud.Baremetalsolution.V2.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Baremetalsolution.V2.ResetInstanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.baremetalsolution.v2.BareMetalSolution",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListInstances,
      Google.Cloud.Baremetalsolution.V2.ListInstancesRequest,
      Google.Cloud.Baremetalsolution.V2.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Baremetalsolution.V2.GetInstanceRequest,
      Google.Cloud.Baremetalsolution.V2.Instance

  rpc :UpdateInstance,
      Google.Cloud.Baremetalsolution.V2.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :ResetInstance,
      Google.Cloud.Baremetalsolution.V2.ResetInstanceRequest,
      Google.Longrunning.Operation

  rpc :StartInstance,
      Google.Cloud.Baremetalsolution.V2.StartInstanceRequest,
      Google.Longrunning.Operation

  rpc :StopInstance,
      Google.Cloud.Baremetalsolution.V2.StopInstanceRequest,
      Google.Longrunning.Operation

  rpc :DetachLun, Google.Cloud.Baremetalsolution.V2.DetachLunRequest, Google.Longrunning.Operation

  rpc :ListVolumes,
      Google.Cloud.Baremetalsolution.V2.ListVolumesRequest,
      Google.Cloud.Baremetalsolution.V2.ListVolumesResponse

  rpc :GetVolume,
      Google.Cloud.Baremetalsolution.V2.GetVolumeRequest,
      Google.Cloud.Baremetalsolution.V2.Volume

  rpc :UpdateVolume,
      Google.Cloud.Baremetalsolution.V2.UpdateVolumeRequest,
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

  rpc :GetLun,
      Google.Cloud.Baremetalsolution.V2.GetLunRequest,
      Google.Cloud.Baremetalsolution.V2.Lun

  rpc :ListLuns,
      Google.Cloud.Baremetalsolution.V2.ListLunsRequest,
      Google.Cloud.Baremetalsolution.V2.ListLunsResponse

  rpc :GetNfsShare,
      Google.Cloud.Baremetalsolution.V2.GetNfsShareRequest,
      Google.Cloud.Baremetalsolution.V2.NfsShare

  rpc :ListNfsShares,
      Google.Cloud.Baremetalsolution.V2.ListNfsSharesRequest,
      Google.Cloud.Baremetalsolution.V2.ListNfsSharesResponse

  rpc :UpdateNfsShare,
      Google.Cloud.Baremetalsolution.V2.UpdateNfsShareRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Baremetalsolution.V2.BareMetalSolution.Service
end
