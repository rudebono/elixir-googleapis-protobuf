defmodule Google.Cloud.Video.Livestream.Logging.V1.ChannelActivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          activity_type:
            {:streaming_state_change,
             Google.Cloud.Video.Livestream.Logging.V1.StreamingStateChange.t() | nil}
            | {:streaming_error,
               Google.Cloud.Video.Livestream.Logging.V1.StreamingError.t() | nil}
            | {:input_accept, Google.Cloud.Video.Livestream.Logging.V1.InputAccept.t() | nil}
            | {:input_error, Google.Cloud.Video.Livestream.Logging.V1.InputError.t() | nil}
            | {:input_disconnect,
               Google.Cloud.Video.Livestream.Logging.V1.InputDisconnect.t() | nil},
          message: String.t()
        }

  defstruct activity_type: nil,
            message: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_state: Google.Cloud.Video.Livestream.V1.Channel.StreamingState.t(),
          previous_state: Google.Cloud.Video.Livestream.V1.Channel.StreamingState.t()
        }

  defstruct new_state: :STREAMING_STATE_UNSPECIFIED,
            previous_state: :STREAMING_STATE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil
        }

  defstruct error: nil

  field :error, 1, type: Google.Rpc.Status
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputAccept do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: String.t(),
          input_attachment: String.t(),
          input_stream_property:
            Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty.t() | nil
        }

  defstruct stream_id: "",
            input_attachment: "",
            input_stream_property: nil

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: String.t(),
          input_attachment: String.t(),
          input_stream_property:
            Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct stream_id: "",
            input_attachment: "",
            input_stream_property: nil,
            error: nil

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"

  field :error, 4, type: Google.Rpc.Status
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          video_streams: [Google.Cloud.Video.Livestream.Logging.V1.VideoStream.t()],
          audio_streams: [Google.Cloud.Video.Livestream.Logging.V1.AudioStream.t()]
        }

  defstruct video_streams: [],
            audio_streams: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          video_format: Google.Cloud.Video.Livestream.Logging.V1.VideoFormat.t() | nil
        }

  defstruct index: 0,
            video_format: nil

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.VideoFormat,
    json_name: "videoFormat"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.VideoFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          width_pixels: integer,
          height_pixels: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct codec: "",
            width_pixels: 0,
            height_pixels: 0,
            frame_rate: 0.0

  field :codec, 1, type: :string
  field :width_pixels, 2, type: :int32, json_name: "widthPixels"
  field :height_pixels, 3, type: :int32, json_name: "heightPixels"
  field :frame_rate, 4, type: :double, json_name: "frameRate"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          audio_format: Google.Cloud.Video.Livestream.Logging.V1.AudioFormat.t() | nil
        }

  defstruct index: 0,
            audio_format: nil

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.AudioFormat,
    json_name: "audioFormat"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          channel_count: integer,
          channel_layout: [String.t()]
        }

  defstruct codec: "",
            channel_count: 0,
            channel_layout: []

  field :codec, 1, type: :string
  field :channel_count, 2, type: :int32, json_name: "channelCount"
  field :channel_layout, 3, repeated: true, type: :string, json_name: "channelLayout"
end
defmodule Google.Cloud.Video.Livestream.Logging.V1.InputDisconnect do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: String.t(),
          input_attachment: String.t()
        }

  defstruct stream_id: "",
            input_attachment: ""

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"
end
