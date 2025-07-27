defmodule Google.Cloud.Discoveryengine.V1.SessionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SessionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateSession,
      Google.Cloud.Discoveryengine.V1.CreateSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :DeleteSession, Google.Cloud.Discoveryengine.V1.DeleteSessionRequest, Google.Protobuf.Empty

  rpc :UpdateSession,
      Google.Cloud.Discoveryengine.V1.UpdateSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :GetSession,
      Google.Cloud.Discoveryengine.V1.GetSessionRequest,
      Google.Cloud.Discoveryengine.V1.Session

  rpc :ListSessions,
      Google.Cloud.Discoveryengine.V1.ListSessionsRequest,
      Google.Cloud.Discoveryengine.V1.ListSessionsResponse
end

defmodule Google.Cloud.Discoveryengine.V1.SessionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SessionService.Service
end
