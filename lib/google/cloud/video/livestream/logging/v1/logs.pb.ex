defmodule Google.Cloud.Video.Livestream.Logging.V1.ChannelActivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :event_state_change, 7,
    type: Google.Cloud.Video.Livestream.Logging.V1.EventStateChange,
    json_name: "eventStateChange",
    oneof: 0

  field :scte35_command_received, 8,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command,
    json_name: "scte35CommandReceived",
    oneof: 0
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.StreamingStateChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error, 1, type: Google.Rpc.Status
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.InputAccept do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.InputError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"

  field :input_stream_property, 3,
    type: Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty,
    json_name: "inputStreamProperty"

  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.InputStreamProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.VideoFormat,
    json_name: "videoFormat"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.VideoFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :codec, 1, type: :string
  field :width_pixels, 2, type: :int32, json_name: "widthPixels"
  field :height_pixels, 3, type: :int32, json_name: "heightPixels"
  field :frame_rate, 4, type: :double, json_name: "frameRate"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.AudioFormat,
    json_name: "audioFormat"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.AudioFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :codec, 1, type: :string
  field :channel_count, 2, type: :int32, json_name: "channelCount"
  field :channel_layout, 3, repeated: true, type: :string, json_name: "channelLayout"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.InputDisconnect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :input_attachment, 2, type: :string, json_name: "inputAttachment"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.EventStateChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_id, 1, type: :string, json_name: "eventId"

  field :new_state, 2,
    type: Google.Cloud.Video.Livestream.V1.Event.State,
    json_name: "newState",
    enum: true

  field :previous_state, 3,
    type: Google.Cloud.Video.Livestream.V1.Event.State,
    json_name: "previousState",
    enum: true
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_specified_flag, 1, type: :bool, json_name: "timeSpecifiedFlag"
  field :pts_time, 2, type: :int64, json_name: "ptsTime"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.BreakDuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auto_return, 1, type: :bool, json_name: "autoReturn"
  field :duration, 2, type: :int64
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.Component do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :component_tag, 1, type: :int32, json_name: "componentTag"

  field :splice_time, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceTime,
    json_name: "spliceTime"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceInsert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :splice_event_id, 1, type: :int32, json_name: "spliceEventId"
  field :splice_event_cancel_indicator, 2, type: :bool, json_name: "spliceEventCancelIndicator"
  field :out_of_network_indicator, 3, type: :bool, json_name: "outOfNetworkIndicator"
  field :program_splice_flag, 4, type: :bool, json_name: "programSpliceFlag"
  field :duration_flag, 5, type: :bool, json_name: "durationFlag"
  field :splice_immediate_flag, 6, type: :bool, json_name: "spliceImmediateFlag"

  field :splice_time, 7,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceTime,
    json_name: "spliceTime"

  field :break_duration, 8,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.BreakDuration,
    json_name: "breakDuration"

  field :unique_program_id, 9, type: :int32, json_name: "uniqueProgramId"
  field :avail_num, 10, type: :int32, json_name: "availNum"
  field :avails_expected, 11, type: :int32, json_name: "availsExpected"
  field :component_count, 12, type: :int32, json_name: "componentCount"

  field :components, 13,
    repeated: true,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.Component
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceInfoSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pts_adjustment, 1, type: :int64, json_name: "ptsAdjustment"

  field :splice_insert, 2,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceInsert,
    json_name: "spliceInsert"
end

defmodule Google.Cloud.Video.Livestream.Logging.V1.Scte35Command do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :splice_info_section, 1,
    type: Google.Cloud.Video.Livestream.Logging.V1.Scte35Command.SpliceInfoSection,
    json_name: "spliceInfoSection"
end
