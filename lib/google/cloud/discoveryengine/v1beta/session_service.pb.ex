defmodule Google.Cloud.Discoveryengine.V1beta.SessionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SessionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateSession,
      Google.Cloud.Discoveryengine.V1beta.CreateSessionRequest,
      Google.Cloud.Discoveryengine.V1beta.Session

  rpc :DeleteSession,
      Google.Cloud.Discoveryengine.V1beta.DeleteSessionRequest,
      Google.Protobuf.Empty

  rpc :UpdateSession,
      Google.Cloud.Discoveryengine.V1beta.UpdateSessionRequest,
      Google.Cloud.Discoveryengine.V1beta.Session

  rpc :GetSession,
      Google.Cloud.Discoveryengine.V1beta.GetSessionRequest,
      Google.Cloud.Discoveryengine.V1beta.Session

  rpc :ListSessions,
      Google.Cloud.Discoveryengine.V1beta.ListSessionsRequest,
      Google.Cloud.Discoveryengine.V1beta.ListSessionsResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.SessionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SessionService.Service
end
