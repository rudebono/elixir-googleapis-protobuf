defmodule Google.Cloud.Discoveryengine.V1alpha.ListFilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListFilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :files, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.FileMetadata
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SessionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SessionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateSession,
      Google.Cloud.Discoveryengine.V1alpha.CreateSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :DeleteSession,
      Google.Cloud.Discoveryengine.V1alpha.DeleteSessionRequest,
      Google.Protobuf.Empty

  rpc :UpdateSession,
      Google.Cloud.Discoveryengine.V1alpha.UpdateSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :GetSession,
      Google.Cloud.Discoveryengine.V1alpha.GetSessionRequest,
      Google.Cloud.Discoveryengine.V1alpha.Session

  rpc :ListSessions,
      Google.Cloud.Discoveryengine.V1alpha.ListSessionsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListSessionsResponse

  rpc :ListFiles,
      Google.Cloud.Discoveryengine.V1alpha.ListFilesRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListFilesResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SessionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SessionService.Service
end
