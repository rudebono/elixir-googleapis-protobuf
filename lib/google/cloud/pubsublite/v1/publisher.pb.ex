defmodule Google.Cloud.Pubsublite.V1.InitialPublishRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :topic, 1, type: :string
  field :partition, 2, type: :int64
  field :client_id, 3, type: :bytes, json_name: "clientId"
end

defmodule Google.Cloud.Pubsublite.V1.InitialPublishResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Pubsublite.V1.MessagePublishRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.PubSubMessage
  field :first_sequence_number, 2, type: :int64, json_name: "firstSequenceNumber"
end

defmodule Google.Cloud.Pubsublite.V1.MessagePublishResponse.CursorRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "startCursor"
  field :start_index, 2, type: :int32, json_name: "startIndex"
  field :end_index, 3, type: :int32, json_name: "endIndex"
end

defmodule Google.Cloud.Pubsublite.V1.MessagePublishResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "startCursor"

  field :cursor_ranges, 2,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.MessagePublishResponse.CursorRange,
    json_name: "cursorRanges"
end

defmodule Google.Cloud.Pubsublite.V1.PublishRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :request_type, 0

  field :initial_request, 1,
    type: Google.Cloud.Pubsublite.V1.InitialPublishRequest,
    json_name: "initialRequest",
    oneof: 0

  field :message_publish_request, 2,
    type: Google.Cloud.Pubsublite.V1.MessagePublishRequest,
    json_name: "messagePublishRequest",
    oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.PublishResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :response_type, 0

  field :initial_response, 1,
    type: Google.Cloud.Pubsublite.V1.InitialPublishResponse,
    json_name: "initialResponse",
    oneof: 0

  field :message_response, 2,
    type: Google.Cloud.Pubsublite.V1.MessagePublishResponse,
    json_name: "messageResponse",
    oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.PublisherService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.pubsublite.v1.PublisherService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Publish,
      stream(Google.Cloud.Pubsublite.V1.PublishRequest),
      stream(Google.Cloud.Pubsublite.V1.PublishResponse)
end

defmodule Google.Cloud.Pubsublite.V1.PublisherService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.PublisherService.Service
end