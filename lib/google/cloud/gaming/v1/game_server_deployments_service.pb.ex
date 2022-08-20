defmodule Google.Cloud.Gaming.V1.GameServerDeploymentsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.v1.GameServerDeploymentsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListGameServerDeployments,
      Google.Cloud.Gaming.V1.ListGameServerDeploymentsRequest,
      Google.Cloud.Gaming.V1.ListGameServerDeploymentsResponse

  rpc :GetGameServerDeployment,
      Google.Cloud.Gaming.V1.GetGameServerDeploymentRequest,
      Google.Cloud.Gaming.V1.GameServerDeployment

  rpc :CreateGameServerDeployment,
      Google.Cloud.Gaming.V1.CreateGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteGameServerDeployment,
      Google.Cloud.Gaming.V1.DeleteGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdateGameServerDeployment,
      Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :GetGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1.GetGameServerDeploymentRolloutRequest,
      Google.Cloud.Gaming.V1.GameServerDeploymentRollout

  rpc :UpdateGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRolloutRequest,
      Google.Longrunning.Operation

  rpc :PreviewGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutRequest,
      Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutResponse

  rpc :FetchDeploymentState,
      Google.Cloud.Gaming.V1.FetchDeploymentStateRequest,
      Google.Cloud.Gaming.V1.FetchDeploymentStateResponse
end

defmodule Google.Cloud.Gaming.V1.GameServerDeploymentsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1.GameServerDeploymentsService.Service
end