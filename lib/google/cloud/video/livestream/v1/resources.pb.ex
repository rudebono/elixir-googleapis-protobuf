defmodule Google.Cloud.Video.Livestream.V1.Input.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :RTMP_PUSH, 1
  field :SRT_PUSH, 2
end
defmodule Google.Cloud.Video.Livestream.V1.Input.Tier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :SD, 1
  field :HD, 2
  field :UHD, 3
end
defmodule Google.Cloud.Video.Livestream.V1.Channel.StreamingState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STREAMING_STATE_UNSPECIFIED, 0
  field :STREAMING, 1
  field :AWAITING_INPUT, 2
  field :STREAMING_ERROR, 4
  field :STREAMING_NO_INPUT, 5
  field :STOPPED, 6
  field :STARTING, 7
  field :STOPPING, 8
end
defmodule Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LOG_SEVERITY_UNSPECIFIED, 0
  field :OFF, 1
  field :DEBUG, 100
  field :INFO, 200
  field :WARNING, 400
  field :ERROR, 500
end
defmodule Google.Cloud.Video.Livestream.V1.Event.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :PENDING, 5
  field :STOPPED, 6
end
defmodule Google.Cloud.Video.Livestream.V1.Input.SecurityRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ip_ranges, 1, repeated: true, type: :string, json_name: "ipRanges"
end
defmodule Google.Cloud.Video.Livestream.V1.Input.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Input do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.Input.LabelsEntry,
    map: true

  field :type, 5, type: Google.Cloud.Video.Livestream.V1.Input.Type, enum: true
  field :tier, 14, type: Google.Cloud.Video.Livestream.V1.Input.Tier, enum: true
  field :uri, 6, type: :string, deprecated: false

  field :preprocessing_config, 9,
    type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig,
    json_name: "preprocessingConfig"

  field :security_rules, 12,
    type: Google.Cloud.Video.Livestream.V1.Input.SecurityRule,
    json_name: "securityRules"

  field :input_stream_property, 15,
    type: Google.Cloud.Video.Livestream.V1.InputStreamProperty,
    json_name: "inputStreamProperty",
    deprecated: false
end
defmodule Google.Cloud.Video.Livestream.V1.Channel.Output do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Channel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Channel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.Channel.LabelsEntry,
    map: true

  field :input_attachments, 16,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.InputAttachment,
    json_name: "inputAttachments"

  field :active_input, 6, type: :string, json_name: "activeInput", deprecated: false
  field :output, 9, type: Google.Cloud.Video.Livestream.V1.Channel.Output, deprecated: false

  field :elementary_streams, 10,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.ElementaryStream,
    json_name: "elementaryStreams"

  field :mux_streams, 11,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.MuxStream,
    json_name: "muxStreams"

  field :manifests, 12, repeated: true, type: Google.Cloud.Video.Livestream.V1.Manifest

  field :sprite_sheets, 13,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.SpriteSheet,
    json_name: "spriteSheets"

  field :streaming_state, 14,
    type: Google.Cloud.Video.Livestream.V1.Channel.StreamingState,
    json_name: "streamingState",
    enum: true,
    deprecated: false

  field :streaming_error, 18,
    type: Google.Rpc.Status,
    json_name: "streamingError",
    deprecated: false

  field :log_config, 19, type: Google.Cloud.Video.Livestream.V1.LogConfig, json_name: "logConfig"
end
defmodule Google.Cloud.Video.Livestream.V1.LogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :log_severity, 1,
    type: Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity,
    json_name: "logSeverity",
    enum: true
end
defmodule Google.Cloud.Video.Livestream.V1.InputStreamProperty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :last_establish_time, 1, type: Google.Protobuf.Timestamp, json_name: "lastEstablishTime"

  field :video_streams, 2,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.VideoStreamProperty,
    json_name: "videoStreams"

  field :audio_streams, 3,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.AudioStreamProperty,
    json_name: "audioStreams"
end
defmodule Google.Cloud.Video.Livestream.V1.VideoStreamProperty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.V1.VideoFormat,
    json_name: "videoFormat"
end
defmodule Google.Cloud.Video.Livestream.V1.VideoFormat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :codec, 1, type: :string
  field :width_pixels, 2, type: :int32, json_name: "widthPixels"
  field :height_pixels, 3, type: :int32, json_name: "heightPixels"
  field :frame_rate, 4, type: :double, json_name: "frameRate"
end
defmodule Google.Cloud.Video.Livestream.V1.AudioStreamProperty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.V1.AudioFormat,
    json_name: "audioFormat"
end
defmodule Google.Cloud.Video.Livestream.V1.AudioFormat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :codec, 1, type: :string
  field :channel_count, 2, type: :int32, json_name: "channelCount"
  field :channel_layout, 3, repeated: true, type: :string, json_name: "channelLayout"
end
defmodule Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_keys, 1, repeated: true, type: :string, json_name: "inputKeys"
end
defmodule Google.Cloud.Video.Livestream.V1.InputAttachment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :input, 2, type: :string, deprecated: false

  field :automatic_failover, 3,
    type: Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover,
    json_name: "automaticFailover"
end
defmodule Google.Cloud.Video.Livestream.V1.Event.AdBreakTask do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
end
defmodule Google.Cloud.Video.Livestream.V1.Event.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :task, 0

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.Event.LabelsEntry,
    map: true

  field :ad_break, 6,
    type: Google.Cloud.Video.Livestream.V1.Event.AdBreakTask,
    json_name: "adBreak",
    oneof: 0,
    deprecated: false

  field :execute_now, 9, type: :bool, json_name: "executeNow"
  field :execution_time, 10, type: Google.Protobuf.Timestamp, json_name: "executionTime"

  field :state, 11,
    type: Google.Cloud.Video.Livestream.V1.Event.State,
    enum: true,
    deprecated: false

  field :error, 12, type: Google.Rpc.Status, deprecated: false
end
