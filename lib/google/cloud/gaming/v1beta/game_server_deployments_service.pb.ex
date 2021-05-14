defmodule Google.Cloud.Gaming.V1beta.GameServerDeploymentsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.gaming.v1beta.GameServerDeploymentsService"

  rpc :ListGameServerDeployments,
      Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsRequest,
      Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsResponse

  rpc :GetGameServerDeployment,
      Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRequest,
      Google.Cloud.Gaming.V1beta.GameServerDeployment

  rpc :CreateGameServerDeployment,
      Google.Cloud.Gaming.V1beta.CreateGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteGameServerDeployment,
      Google.Cloud.Gaming.V1beta.DeleteGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdateGameServerDeployment,
      Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRequest,
      Google.Longrunning.Operation

  rpc :GetGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRolloutRequest,
      Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout

  rpc :UpdateGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRolloutRequest,
      Google.Longrunning.Operation

  rpc :PreviewGameServerDeploymentRollout,
      Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutRequest,
      Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutResponse

  rpc :FetchDeploymentState,
      Google.Cloud.Gaming.V1beta.FetchDeploymentStateRequest,
      Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeploymentsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1beta.GameServerDeploymentsService.Service
end
