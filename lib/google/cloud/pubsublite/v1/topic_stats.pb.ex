defmodule Google.Cloud.Pubsublite.V1.ComputeMessageStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer,
          start_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil,
          end_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct topic: "",
            partition: 0,
            start_cursor: nil,
            end_cursor: nil

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
  field :start_cursor, 3, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "startCursor"
  field :end_cursor, 4, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "endCursor"
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

  defstruct message_count: 0,
            message_bytes: 0,
            minimum_publish_time: nil,
            minimum_event_time: nil

  field :message_count, 1, type: :int64, json_name: "messageCount"
  field :message_bytes, 2, type: :int64, json_name: "messageBytes"
  field :minimum_publish_time, 3, type: Google.Protobuf.Timestamp, json_name: "minimumPublishTime"
  field :minimum_event_time, 4, type: Google.Protobuf.Timestamp, json_name: "minimumEventTime"
end
defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer
        }

  defstruct topic: "",
            partition: 0

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
end
defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          head_cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct head_cursor: nil

  field :head_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "headCursor"
end
defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          partition: integer,
          target: Google.Cloud.Pubsublite.V1.TimeTarget.t() | nil
        }

  defstruct topic: "",
            partition: 0,
            target: nil

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
  field :target, 3, type: Google.Cloud.Pubsublite.V1.TimeTarget, deprecated: false
end
defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct cursor: nil

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
