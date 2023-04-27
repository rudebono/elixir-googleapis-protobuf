defmodule Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :channel_connection, 1, type: :string, json_name: "channelConnection"
  field :events, 2, repeated: true, type: Google.Protobuf.Any
  field :text_events, 3, repeated: true, type: :string, json_name: "textEvents"
end

defmodule Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Eventarc.Publishing.V1.PublishEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :channel, 1, type: :string
  field :events, 2, repeated: true, type: Google.Protobuf.Any
  field :text_events, 3, repeated: true, type: :string, json_name: "textEvents"
end

defmodule Google.Cloud.Eventarc.Publishing.V1.PublishEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Eventarc.Publishing.V1.Publisher.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.eventarc.publishing.v1.Publisher",
    protoc_gen_elixir_version: "0.12.0"

  rpc :PublishChannelConnectionEvents,
      Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsRequest,
      Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsResponse

  rpc :PublishEvents,
      Google.Cloud.Eventarc.Publishing.V1.PublishEventsRequest,
      Google.Cloud.Eventarc.Publishing.V1.PublishEventsResponse
end

defmodule Google.Cloud.Eventarc.Publishing.V1.Publisher.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Eventarc.Publishing.V1.Publisher.Service
end