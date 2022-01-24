defmodule Google.Cloud.Video.Livestream.V1.Input.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :RTMP_PUSH | :SRT_PUSH

  field :TYPE_UNSPECIFIED, 0
  field :RTMP_PUSH, 1
  field :SRT_PUSH, 2
end
defmodule Google.Cloud.Video.Livestream.V1.Input.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TIER_UNSPECIFIED | :SD | :HD | :UHD

  field :TIER_UNSPECIFIED, 0
  field :SD, 1
  field :HD, 2
  field :UHD, 3
end
defmodule Google.Cloud.Video.Livestream.V1.Channel.StreamingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STREAMING_STATE_UNSPECIFIED
          | :STREAMING
          | :AWAITING_INPUT
          | :STREAMING_ERROR
          | :STREAMING_NO_INPUT
          | :STOPPED
          | :STARTING
          | :STOPPING

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
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOG_SEVERITY_UNSPECIFIED | :OFF | :DEBUG | :INFO | :WARNING | :ERROR

  field :LOG_SEVERITY_UNSPECIFIED, 0
  field :OFF, 1
  field :DEBUG, 100
  field :INFO, 200
  field :WARNING, 400
  field :ERROR, 500
end
defmodule Google.Cloud.Video.Livestream.V1.Event.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STATE_UNSPECIFIED | :SCHEDULED | :RUNNING | :SUCCEEDED | :FAILED | :PENDING

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :PENDING, 5
end
defmodule Google.Cloud.Video.Livestream.V1.Input.SecurityRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_ranges: [String.t()]
        }

  defstruct ip_ranges: []

  field :ip_ranges, 1, repeated: true, type: :string, json_name: "ipRanges"
end
defmodule Google.Cloud.Video.Livestream.V1.Input.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Input do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          type: Google.Cloud.Video.Livestream.V1.Input.Type.t(),
          tier: Google.Cloud.Video.Livestream.V1.Input.Tier.t(),
          uri: String.t(),
          preprocessing_config: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.t() | nil,
          security_rules: Google.Cloud.Video.Livestream.V1.Input.SecurityRule.t() | nil,
          input_stream_property: Google.Cloud.Video.Livestream.V1.InputStreamProperty.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            type: :TYPE_UNSPECIFIED,
            tier: :TIER_UNSPECIFIED,
            uri: "",
            preprocessing_config: nil,
            security_rules: nil,
            input_stream_property: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Channel.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Channel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          input_attachments: [Google.Cloud.Video.Livestream.V1.InputAttachment.t()],
          active_input: String.t(),
          output: Google.Cloud.Video.Livestream.V1.Channel.Output.t() | nil,
          elementary_streams: [Google.Cloud.Video.Livestream.V1.ElementaryStream.t()],
          mux_streams: [Google.Cloud.Video.Livestream.V1.MuxStream.t()],
          manifests: [Google.Cloud.Video.Livestream.V1.Manifest.t()],
          sprite_sheets: [Google.Cloud.Video.Livestream.V1.SpriteSheet.t()],
          streaming_state: Google.Cloud.Video.Livestream.V1.Channel.StreamingState.t(),
          streaming_error: Google.Rpc.Status.t() | nil,
          log_config: Google.Cloud.Video.Livestream.V1.LogConfig.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            input_attachments: [],
            active_input: "",
            output: nil,
            elementary_streams: [],
            mux_streams: [],
            manifests: [],
            sprite_sheets: [],
            streaming_state: :STREAMING_STATE_UNSPECIFIED,
            streaming_error: nil,
            log_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_severity: Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity.t()
        }

  defstruct log_severity: :LOG_SEVERITY_UNSPECIFIED

  field :log_severity, 1,
    type: Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity,
    json_name: "logSeverity",
    enum: true
end
defmodule Google.Cloud.Video.Livestream.V1.InputStreamProperty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          last_establish_time: Google.Protobuf.Timestamp.t() | nil,
          video_streams: [Google.Cloud.Video.Livestream.V1.VideoStreamProperty.t()],
          audio_streams: [Google.Cloud.Video.Livestream.V1.AudioStreamProperty.t()]
        }

  defstruct last_establish_time: nil,
            video_streams: [],
            audio_streams: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          video_format: Google.Cloud.Video.Livestream.V1.VideoFormat.t() | nil
        }

  defstruct index: 0,
            video_format: nil

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.V1.VideoFormat,
    json_name: "videoFormat"
end
defmodule Google.Cloud.Video.Livestream.V1.VideoFormat do
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
defmodule Google.Cloud.Video.Livestream.V1.AudioStreamProperty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: integer,
          audio_format: Google.Cloud.Video.Livestream.V1.AudioFormat.t() | nil
        }

  defstruct index: 0,
            audio_format: nil

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.V1.AudioFormat,
    json_name: "audioFormat"
end
defmodule Google.Cloud.Video.Livestream.V1.AudioFormat do
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
defmodule Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_keys: [String.t()]
        }

  defstruct input_keys: []

  field :input_keys, 1, repeated: true, type: :string, json_name: "inputKeys"
end
defmodule Google.Cloud.Video.Livestream.V1.InputAttachment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          input: String.t(),
          automatic_failover:
            Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover.t() | nil
        }

  defstruct key: "",
            input: "",
            automatic_failover: nil

  field :key, 1, type: :string
  field :input, 2, type: :string, deprecated: false

  field :automatic_failover, 3,
    type: Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover,
    json_name: "automaticFailover"
end
defmodule Google.Cloud.Video.Livestream.V1.Event.AdBreakTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct duration: nil

  field :duration, 1, type: Google.Protobuf.Duration
end
defmodule Google.Cloud.Video.Livestream.V1.Event.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task: {:ad_break, Google.Cloud.Video.Livestream.V1.Event.AdBreakTask.t() | nil},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          execute_now: boolean,
          execution_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Video.Livestream.V1.Event.State.t(),
          error: Google.Rpc.Status.t() | nil
        }

  defstruct task: nil,
            name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            execute_now: false,
            execution_time: nil,
            state: :STATE_UNSPECIFIED,
            error: nil

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
