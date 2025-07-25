defmodule Google.Cloud.Stream.Logging.V1.OperationEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_EVENT_TYPE_UNSPECIFIED, 0
  field :OPERATION_EVENT_CREATE_CONTENT_STARTED, 1
  field :OPERATION_EVENT_CREATE_CONTENT_ENDED, 2
  field :OPERATION_EVENT_BUILD_CONTENT_STARTED, 3
  field :OPERATION_EVENT_BUILD_CONTENT_ENDED, 4
  field :OPERATION_EVENT_UPDATE_CONTENT_STARTED, 5
  field :OPERATION_EVENT_UPDATE_CONTENT_ENDED, 6
  field :OPERATION_EVENT_DELETE_CONTENT_STARTED, 7
  field :OPERATION_EVENT_DELETE_CONTENT_ENDED, 8
  field :OPERATION_EVENT_CREATE_INSTANCE_STARTED, 9
  field :OPERATION_EVENT_CREATE_INSTANCE_ENDED, 10
  field :OPERATION_EVENT_UPDATE_INSTANCE_STARTED, 11
  field :OPERATION_EVENT_UPDATE_INSTANCE_ENDED, 12
  field :OPERATION_EVENT_DELETE_INSTANCE_STARTED, 13
  field :OPERATION_EVENT_DELETE_INSTANCE_ENDED, 14
end

defmodule Google.Cloud.Stream.Logging.V1.SessionEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SESSION_EVENT_TYPE_UNSPECIFIED, 0
  field :SESSION_EVENT_SERVER_STREAMER_SHUTTING_DOWN, 1
  field :SESSION_EVENT_SERVER_STREAMER_READY, 2
  field :SESSION_EVENT_SERVER_STREAMER_BINARY_STARTED, 3
  field :SESSION_EVENT_SERVER_STREAMER_READ_POD_IMAGE_NAMES, 4
  field :SESSION_EVENT_SERVER_STREAMER_CONNECTED_TO_GAME, 5
  field :SESSION_EVENT_SERVER_STREAMER_CONNECTED_TO_CLIENT, 6
  field :SESSION_EVENT_SERVER_STREAMER_DISCONNECTED_FROM_CLIENT, 7
  field :SESSION_EVENT_SERVER_STREAMER_RECEIVED_CREATE_SESSION_REQUEST, 8
  field :SESSION_EVENT_SERVER_STREAMER_GAME_MESSAGE_STREAM_CLOSED, 9
  field :SESSION_EVENT_SERVER_STREAMER_GAME_FRAME_STREAM_CLOSED, 10
  field :SESSION_EVENT_SERVER_STREAMER_GAME_MESSAGE_STREAM_ERROR, 11
  field :SESSION_EVENT_SERVER_STREAMER_GAME_AUDIO_STREAM_ERROR, 12
  field :SESSION_EVENT_SERVER_STREAMER_GAME_AUDIO_STREAM_CLOSED, 13
  field :SESSION_EVENT_SERVER_STREAMER_GAME_FRAME_STREAM_ERROR, 14
  field :SESSION_EVENT_SERVER_GAME_DISCONNECTING_AFTER_PAUSED_TOO_LONG, 15
  field :SESSION_EVENT_SERVER_STREAMER_RECEIVED_EXPERIMENT_CONFIGURATION, 16
  field :SESSION_EVENT_SERVER_GAME_CONNECTED_TO_LOGGING_SERVICE, 17
  field :SESSION_EVENT_SERVER_STREAMER_DETERMINED_SESSION_OPTIONS, 18
  field :SESSION_EVENT_SERVER_STREAMER_KILLED_IN_MIDDLE_OF_SESSION, 19
  field :SESSION_EVENT_SERVER_GAME_UPDATED_FRAME_PIPELINE, 20
  field :SESSION_EVENT_SERVER_ERROR, 21
end

defmodule Google.Cloud.Stream.Logging.V1.OperationEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_type, 1,
    type: Google.Cloud.Stream.Logging.V1.OperationEventType,
    json_name: "eventType",
    enum: true

  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :operation, 3, type: :string

  field :operation_artifacts, 4,
    repeated: true,
    type: Google.Cloud.Stream.Logging.V1.OperationArtifact,
    json_name: "operationArtifacts"
end

defmodule Google.Cloud.Stream.Logging.V1.OperationArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :artifact_type, 1, type: :string, json_name: "artifactType"
  field :artifact_uri, 2, type: :string, json_name: "artifactUri"
end

defmodule Google.Cloud.Stream.Logging.V1.SessionEventLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_type, 1,
    type: Google.Cloud.Stream.Logging.V1.SessionEventType,
    json_name: "eventType",
    enum: true

  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :session_id, 3, type: :string, json_name: "sessionId"
end
