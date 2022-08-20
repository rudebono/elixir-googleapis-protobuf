defmodule Google.Cloud.Gaming.V1beta.GameServerClustersService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.v1beta.GameServerClustersService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListGameServerClusters,
      Google.Cloud.Gaming.V1beta.ListGameServerClustersRequest,
      Google.Cloud.Gaming.V1beta.ListGameServerClustersResponse

  rpc :GetGameServerCluster,
      Google.Cloud.Gaming.V1beta.GetGameServerClusterRequest,
      Google.Cloud.Gaming.V1beta.GameServerCluster

  rpc :CreateGameServerCluster,
      Google.Cloud.Gaming.V1beta.CreateGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewCreateGameServerCluster,
      Google.Cloud.Gaming.V1beta.PreviewCreateGameServerClusterRequest,
      Google.Cloud.Gaming.V1beta.PreviewCreateGameServerClusterResponse

  rpc :DeleteGameServerCluster,
      Google.Cloud.Gaming.V1beta.DeleteGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewDeleteGameServerCluster,
      Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterRequest,
      Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterResponse

  rpc :UpdateGameServerCluster,
      Google.Cloud.Gaming.V1beta.UpdateGameServerClusterRequest,
      Google.Longrunning.Operation

  rpc :PreviewUpdateGameServerCluster,
      Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterRequest,
      Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterResponse
end

defmodule Google.Cloud.Gaming.V1beta.GameServerClustersService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1beta.GameServerClustersService.Service
end