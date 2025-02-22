defmodule Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.assuredworkloads.v1beta1.AssuredWorkloadsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.UpdateWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1beta1.Workload

  rpc :RestrictAllowedResources,
      Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesRequest,
      Google.Cloud.Assuredworkloads.V1beta1.RestrictAllowedResourcesResponse

  rpc :DeleteWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.DeleteWorkloadRequest,
      Google.Protobuf.Empty

  rpc :GetWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.GetWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1beta1.Workload

  rpc :AnalyzeWorkloadMove,
      Google.Cloud.Assuredworkloads.V1beta1.AnalyzeWorkloadMoveRequest,
      Google.Cloud.Assuredworkloads.V1beta1.AnalyzeWorkloadMoveResponse

  rpc :ListWorkloads,
      Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsRequest,
      Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsResponse
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Service
end
