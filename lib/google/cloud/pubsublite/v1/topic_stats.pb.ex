defmodule Google.Cloud.Pubsublite.V1.ComputeMessageStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer,
          start_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil,
          end_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:topic, :partition, :start_cursor, :end_cursor]

  field :topic, 1, type: :string
  field :partition, 2, type: :int64
  field :start_cursor, 3, type: Google.Cloud.Pubsublite.V1.Cursor
  field :end_cursor, 4, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.ComputeMessageStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_count: integer,
          message_bytes: integer,
          minimum_publish_time: Google.Protobuf.Timestamp.t() | nil,
          minimum_event_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:message_count, :message_bytes, :minimum_publish_time, :minimum_event_time]

  field :message_count, 1, type: :int64
  field :message_bytes, 2, type: :int64
  field :minimum_publish_time, 3, type: Google.Protobuf.Timestamp
  field :minimum_event_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorRequest do
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

defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          head_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:head_cursor]

  field :head_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer,
          target: Google.Cloud.Pubsublite.V1.TimeTarget.t() | nil
        }

  defstruct [:topic, :partition, :target]

  field :topic, 1, type: :string
  field :partition, 2, type: :int64
  field :target, 3, type: Google.Cloud.Pubsublite.V1.TimeTarget
end

defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:cursor]

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.TopicStatsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.pubsublite.v1.TopicStatsService"

  rpc :ComputeMessageStats,
      Google.Cloud.Pubsublite.V1.ComputeMessageStatsRequest,
      Google.Cloud.Pubsublite.V1.ComputeMessageStatsResponse

  rpc :ComputeHeadCursor,
      Google.Cloud.Pubsublite.V1.ComputeHeadCursorRequest,
      Google.Cloud.Pubsublite.V1.ComputeHeadCursorResponse

  rpc :ComputeTimeCursor,
      Google.Cloud.Pubsublite.V1.ComputeTimeCursorRequest,
      Google.Cloud.Pubsublite.V1.ComputeTimeCursorResponse
end

defmodule Google.Cloud.Pubsublite.V1.TopicStatsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.TopicStatsService.Service
end
