defmodule Google.Cloud.Pubsublite.V1.InitialPublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer
        }

  defstruct [:topic, :partition]

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

  defstruct [:messages]

  field :messages, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.PubSubMessage
end

defmodule Google.Cloud.Pubsublite.V1.MessagePublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:start_cursor]

  field :start_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.PublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_type: {atom, any}
        }

  defstruct [:request_type]

  oneof :request_type, 0
  field :initial_request, 1, type: Google.Cloud.Pubsublite.V1.InitialPublishRequest, oneof: 0

  field :message_publish_request, 2,
    type: Google.Cloud.Pubsublite.V1.MessagePublishRequest,
    oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.PublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type: {atom, any}
        }

  defstruct [:response_type]

  oneof :response_type, 0
  field :initial_response, 1, type: Google.Cloud.Pubsublite.V1.InitialPublishResponse, oneof: 0
  field :message_response, 2, type: Google.Cloud.Pubsublite.V1.MessagePublishResponse, oneof: 0
end
