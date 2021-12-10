defmodule Google.Cloud.Pubsublite.V1.InitialPublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer
        }

  defstruct topic: "",
            partition: 0

  field :topic, 1, type: :string
  field :partition, 2, type: :int64
end
defmodule Google.Cloud.Pubsublite.V1.InitialPublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Pubsublite.V1.MessagePublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Pubsublite.V1.PubSubMessage.t()]
        }

  defstruct messages: []

  field :messages, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.PubSubMessage
end
defmodule Google.Cloud.Pubsublite.V1.MessagePublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct start_cursor: nil

  field :start_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "startCursor"
end
defmodule Google.Cloud.Pubsublite.V1.PublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_type:
            {:initial_request, Google.Cloud.Pubsublite.V1.InitialPublishRequest.t() | nil}
            | {:message_publish_request,
               Google.Cloud.Pubsublite.V1.MessagePublishRequest.t() | nil}
        }

  defstruct request_type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type:
            {:initial_response, Google.Cloud.Pubsublite.V1.InitialPublishResponse.t() | nil}
            | {:message_response, Google.Cloud.Pubsublite.V1.MessagePublishResponse.t() | nil}
        }

  defstruct response_type: nil

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
  use GRPC.Service, name: "google.cloud.pubsublite.v1.PublisherService"

  rpc :Publish,
      stream(Google.Cloud.Pubsublite.V1.PublishRequest),
      stream(Google.Cloud.Pubsublite.V1.PublishResponse)
end

defmodule Google.Cloud.Pubsublite.V1.PublisherService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.PublisherService.Service
end
