defmodule Google.Spanner.Adapter.V1.AdaptMessageRequest.AttachmentsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Adapter.V1.AdaptMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :protocol, 2, type: :string, deprecated: false
  field :payload, 3, type: :bytes, deprecated: false

  field :attachments, 4,
    repeated: true,
    type: Google.Spanner.Adapter.V1.AdaptMessageRequest.AttachmentsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Spanner.Adapter.V1.AdaptMessageResponse.StateUpdatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Spanner.Adapter.V1.AdaptMessageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :payload, 1, type: :bytes, deprecated: false

  field :state_updates, 2,
    repeated: true,
    type: Google.Spanner.Adapter.V1.AdaptMessageResponse.StateUpdatesEntry,
    json_name: "stateUpdates",
    map: true,
    deprecated: false
end

defmodule Google.Spanner.Adapter.V1.Session do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Adapter.V1.CreateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Spanner.Adapter.V1.Session, deprecated: false
end

defmodule Google.Spanner.Adapter.V1.Adapter.Service do
  @moduledoc false

  use GRPC.Service, name: "google.spanner.adapter.v1.Adapter", protoc_gen_elixir_version: "0.14.1"

  rpc :CreateSession,
      Google.Spanner.Adapter.V1.CreateSessionRequest,
      Google.Spanner.Adapter.V1.Session

  rpc :AdaptMessage,
      Google.Spanner.Adapter.V1.AdaptMessageRequest,
      stream(Google.Spanner.Adapter.V1.AdaptMessageResponse)
end

defmodule Google.Spanner.Adapter.V1.Adapter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Spanner.Adapter.V1.Adapter.Service
end
