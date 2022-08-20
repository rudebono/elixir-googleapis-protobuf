defmodule Google.Cloud.Gaming.V1beta.GameServerConfigsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gaming.v1beta.GameServerConfigsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListGameServerConfigs,
      Google.Cloud.Gaming.V1beta.ListGameServerConfigsRequest,
      Google.Cloud.Gaming.V1beta.ListGameServerConfigsResponse

  rpc :GetGameServerConfig,
      Google.Cloud.Gaming.V1beta.GetGameServerConfigRequest,
      Google.Cloud.Gaming.V1beta.GameServerConfig

  rpc :CreateGameServerConfig,
      Google.Cloud.Gaming.V1beta.CreateGameServerConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteGameServerConfig,
      Google.Cloud.Gaming.V1beta.DeleteGameServerConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfigsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gaming.V1beta.GameServerConfigsService.Service
end