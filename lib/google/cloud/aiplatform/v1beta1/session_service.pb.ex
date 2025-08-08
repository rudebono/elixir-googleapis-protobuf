defmodule Google.Cloud.Aiplatform.V1beta1.CreateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Cloud.Aiplatform.V1beta1.Session, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateSessionOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Session
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session, 1, type: Google.Cloud.Aiplatform.V1beta1.Session, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session_events, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SessionEvent,
    json_name: "sessionEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.AppendEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Aiplatform.V1beta1.SessionEvent, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AppendEventResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.SessionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.SessionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateSession,
      Google.Cloud.Aiplatform.V1beta1.CreateSessionRequest,
      Google.Longrunning.Operation

  rpc :GetSession,
      Google.Cloud.Aiplatform.V1beta1.GetSessionRequest,
      Google.Cloud.Aiplatform.V1beta1.Session

  rpc :ListSessions,
      Google.Cloud.Aiplatform.V1beta1.ListSessionsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListSessionsResponse

  rpc :UpdateSession,
      Google.Cloud.Aiplatform.V1beta1.UpdateSessionRequest,
      Google.Cloud.Aiplatform.V1beta1.Session

  rpc :DeleteSession,
      Google.Cloud.Aiplatform.V1beta1.DeleteSessionRequest,
      Google.Longrunning.Operation

  rpc :ListEvents,
      Google.Cloud.Aiplatform.V1beta1.ListEventsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListEventsResponse

  rpc :AppendEvent,
      Google.Cloud.Aiplatform.V1beta1.AppendEventRequest,
      Google.Cloud.Aiplatform.V1beta1.AppendEventResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.SessionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.SessionService.Service
end
