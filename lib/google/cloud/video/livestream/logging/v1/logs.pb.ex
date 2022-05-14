defmodule Google.Cloud.Video.Livestream.Logging.V1.ChannelActivity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :activity_type, 0

  field :message, 1, type: :string

  field :streaming_state_change, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.StreamingStateChange,
    json_name: "streamingStateChange",
    oneof: 0

  field :streaming_error, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.StreamingError,
    json_name: "streamingError",
    oneof: 0

  field :input_accept, 4,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputAccept,
    json_name: "inputAccept",
    oneof: 0

  field :input_error, 5,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputError,
    json_name: "inputError",
    oneof: 0

  field :input_disconnect, 6,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputDisconnect,
    json_name: "inputDisconnect",
    oneof: 0
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.StreamingStateChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :new_state, 1,
    type: Google.Cloud.Video.Livestream.V1.Channel.StreamingState,
    json_name: "newState",
    enum: true

  field :previous_state, 2,
    type: Google.Cloud.Video.Livestream.V1.Channel.StreamingState,
    json_name: "previousState",
    enum: true
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.StreamingError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :error, 1, type: Google.Rpc.Status
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputAccept do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"

  field :error, 4, type: Google.Rpc.Status
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :video_streams, 1,
    repeated: true,
    type: Google.Cloud.Video.Livestream.Logging.V1.VideoStream,
    json_name: "videoStreams"

  field :audio_streams, 2,
    repeated: true,
    type: Google.Cloud.Video.Livestream.Logging.V1.AudioStream,
    json_name: "audioStreams"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.VideoStream do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.VideoFormat,
    json_name: "videoFormat"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.VideoFormat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :codec, 1, type: :string
  field :width_pixels, 2, type: :int32, json_name: "widthPixels"
  field :height_pixels, 3, type: :int32, json_name: "heightPixels"
  field :frame_rate, 4, type: :double, json_name: "frameRate"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioStream do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.AudioFormat,
    json_name: "audioFormat"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioFormat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :codec, 1, type: :string
  field :channel_count, 2, type: :int32, json_name: "channelCount"
  field :channel_layout, 3, repeated: true, type: :string, json_name: "channelLayout"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputDisconnect do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"
end
