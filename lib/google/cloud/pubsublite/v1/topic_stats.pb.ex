defmodule Google.Cloud.Pubsublite.V1.ComputeMessageStatsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
  field :start_cursor, 3, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "startCursor"
  field :end_cursor, 4, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "endCursor"
end

defmodule Google.Cloud.Pubsublite.V1.ComputeMessageStatsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_count, 1, type: :int64, json_name: "messageCount"
  field :message_bytes, 2, type: :int64, json_name: "messageBytes"
  field :minimum_publish_time, 3, type: Google.Protobuf.Timestamp, json_name: "minimumPublishTime"
  field :minimum_event_time, 4, type: Google.Protobuf.Timestamp, json_name: "minimumEventTime"
end

defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ComputeHeadCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :head_cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor, json_name: "headCursor"
end

defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :partition, 2, type: :int64, deprecated: false
  field :target, 3, type: Google.Cloud.Pubsublite.V1.TimeTarget, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ComputeTimeCursorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
end

defmodule Google.Cloud.Pubsublite.V1.TopicStatsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.pubsublite.v1.TopicStatsService",
    protoc_gen_elixir_version: "0.15.0"

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
