defmodule Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_connection: String.t(),
          events: [Google.Protobuf.Any.t()]
        }

  defstruct channel_connection: "",
            events: []

  field :channel_connection, 1, type: :string, json_name: "channelConnection"
  field :events, 2, repeated: true, type: Google.Protobuf.Any
end
defmodule Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Eventarc.Publishing.V1.Publisher.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.eventarc.publishing.v1.Publisher"

  rpc :PublishChannelConnectionEvents,
      Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsRequest,
      Google.Cloud.Eventarc.Publishing.V1.PublishChannelConnectionEventsResponse
end

defmodule Google.Cloud.Eventarc.Publishing.V1.Publisher.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Eventarc.Publishing.V1.Publisher.Service
end
