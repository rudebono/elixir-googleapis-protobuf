defmodule Google.Cloud.Gaming.V1.GameServerClustersService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gaming.v1.GameServerClustersService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListGameServerClusters,
      Google.Cloud.Gaming.V1.ListGameServerClustersRequest,
      Google.Cloud.Gaming.V1.ListGameServerClustersResponse

  rpc :GetGameServerCluster,
      Google.Cloud.Gaming.V1.GetGameServerClusterRequest,
      Google.Cloud.Gaming.V1.GameServerCluster

  rpc :CreateGameServerCluster,
      Google.Cloud.Gaming.V1.CreateGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewCreateGameServerCluster,
      Google.Cloud.Gaming.V1.PreviewCreateGameServerClusterRequest,
      Google.Cloud.Gaming.V1.PreviewCreateGameServerClusterResponse

  rpc :DeleteGameServerCluster,
      Google.Cloud.Gaming.V1.DeleteGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewDeleteGameServerCluster,
      Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterRequest,
      Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterResponse

  rpc :UpdateGameServerCluster,
      Google.Cloud.Gaming.V1.UpdateGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewUpdateGameServerCluster,
      Google.Cloud.Gaming.V1.PreviewUpdateGameServerClusterRequest,
      Google.Cloud.Gaming.V1.PreviewUpdateGameServerClusterResponse
end

defmodule Google.Cloud.Gaming.V1.GameServerClustersService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gaming.V1.GameServerClustersService.Service
end