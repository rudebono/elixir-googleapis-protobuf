defmodule Google.Cloud.Gaming.V1.GameServerConfigsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.v1.GameServerConfigsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListGameServerConfigs,
      Google.Cloud.Gaming.V1.ListGameServerConfigsRequest,
      Google.Cloud.Gaming.V1.ListGameServerConfigsResponse

  rpc :GetGameServerConfig,
      Google.Cloud.Gaming.V1.GetGameServerConfigRequest,
      Google.Cloud.Gaming.V1.GameServerConfig

  rpc :CreateGameServerConfig,
      Google.Cloud.Gaming.V1.CreateGameServerConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteGameServerConfig,
      Google.Cloud.Gaming.V1.DeleteGameServerConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Gaming.V1.GameServerConfigsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1.GameServerConfigsService.Service
end