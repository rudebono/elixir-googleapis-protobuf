defmodule Google.Cloud.Video.Livestream.V1.Input.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :RTMP_PUSH, 1
  field :SRT_PUSH, 2
end

defmodule Google.Cloud.Video.Livestream.V1.Input.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :SD, 1
  field :HD, 2
  field :UHD, 3
end

defmodule Google.Cloud.Video.Livestream.V1.Channel.StreamingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STREAMING_STATE_UNSPECIFIED, 0
  field :STREAMING, 1
  field :AWAITING_INPUT, 2
  field :STREAMING_ERROR, 4
  field :STREAMING_NO_INPUT, 5
  field :STOPPED, 6
  field :STARTING, 7
  field :STOPPING, 8
end

defmodule Google.Cloud.Video.Livestream.V1.InputConfig.InputSwitchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INPUT_SWITCH_MODE_UNSPECIFIED, 0
  field :FAILOVER_PREFER_PRIMARY, 1
  field :MANUAL, 3
end

defmodule Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOG_SEVERITY_UNSPECIFIED, 0
  field :OFF, 1
  field :DEBUG, 100
  field :INFO, 200
  field :WARNING, 400
  field :ERROR, 500
end

defmodule Google.Cloud.Video.Livestream.V1.Event.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :PENDING, 5
  field :STOPPED, 6
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :CREATING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.OutputType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OUTPUT_TYPE_UNSPECIFIED, 0
  field :MANIFEST, 1
  field :MP4, 2
end

defmodule Google.Cloud.Video.Livestream.V1.DvrSession.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :UPDATING, 2
  field :SCHEDULED, 3
  field :LIVE, 4
  field :FINISHED, 5
  field :FAILED, 6
  field :DELETING, 7
  field :POST_PROCESSING, 8
  field :COOLDOWN, 9
  field :STOPPING, 10
end

defmodule Google.Cloud.Video.Livestream.V1.Asset.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Video.Livestream.V1.Input.SecurityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip_ranges, 1, repeated: true, type: :string, json_name: "ipRanges"
end

defmodule Google.Cloud.Video.Livestream.V1.Input.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Input do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Channel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Channel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :timecode_config, 21,
    type: Google.Cloud.Video.Livestream.V1.TimecodeConfig,
    json_name: "timecodeConfig"

  field :encryptions, 24, repeated: true, type: Google.Cloud.Video.Livestream.V1.Encryption

  field :input_config, 25,
    type: Google.Cloud.Video.Livestream.V1.InputConfig,
    json_name: "inputConfig"

  field :retention_config, 26,
    type: Google.Cloud.Video.Livestream.V1.RetentionConfig,
    json_name: "retentionConfig",
    deprecated: false

  field :static_overlays, 27,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.StaticOverlay,
    json_name: "staticOverlays",
    deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.NormalizedCoordinate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :x, 1, type: :double, deprecated: false
  field :y, 2, type: :double, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.NormalizedResolution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :w, 1, type: :double, deprecated: false
  field :h, 2, type: :double, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.StaticOverlay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 1, type: :string, deprecated: false

  field :resolution, 2,
    type: Google.Cloud.Video.Livestream.V1.NormalizedResolution,
    deprecated: false

  field :position, 3,
    type: Google.Cloud.Video.Livestream.V1.NormalizedCoordinate,
    deprecated: false

  field :opacity, 4, type: :double, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_switch_mode, 1,
    type: Google.Cloud.Video.Livestream.V1.InputConfig.InputSwitchMode,
    json_name: "inputSwitchMode",
    enum: true
end

defmodule Google.Cloud.Video.Livestream.V1.LogConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :log_severity, 1,
    type: Google.Cloud.Video.Livestream.V1.LogConfig.LogSeverity,
    json_name: "logSeverity",
    enum: true
end

defmodule Google.Cloud.Video.Livestream.V1.RetentionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :retention_window_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "retentionWindowDuration"
end

defmodule Google.Cloud.Video.Livestream.V1.InputStreamProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index, 1, type: :int32

  field :video_format, 2,
    type: Google.Cloud.Video.Livestream.V1.VideoFormat,
    json_name: "videoFormat"
end

defmodule Google.Cloud.Video.Livestream.V1.VideoFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :codec, 1, type: :string
  field :width_pixels, 2, type: :int32, json_name: "widthPixels"
  field :height_pixels, 3, type: :int32, json_name: "heightPixels"
  field :frame_rate, 4, type: :double, json_name: "frameRate"
end

defmodule Google.Cloud.Video.Livestream.V1.AudioStreamProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :index, 1, type: :int32

  field :audio_format, 2,
    type: Google.Cloud.Video.Livestream.V1.AudioFormat,
    json_name: "audioFormat"
end

defmodule Google.Cloud.Video.Livestream.V1.AudioFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :codec, 1, type: :string
  field :channel_count, 2, type: :int32, json_name: "channelCount"
  field :channel_layout, 3, repeated: true, type: :string, json_name: "channelLayout"
end

defmodule Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_keys, 1, repeated: true, type: :string, json_name: "inputKeys"
end

defmodule Google.Cloud.Video.Livestream.V1.InputAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :input, 2, type: :string, deprecated: false

  field :automatic_failover, 3,
    type: Google.Cloud.Video.Livestream.V1.InputAttachment.AutomaticFailover,
    json_name: "automaticFailover"
end

defmodule Google.Cloud.Video.Livestream.V1.Event.InputSwitchTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_key, 1, type: :string, json_name: "inputKey"
end

defmodule Google.Cloud.Video.Livestream.V1.Event.AdBreakTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Video.Livestream.V1.Event.SlateTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
  field :asset, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Event.ReturnToProgramTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Event.MuteTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :duration, 1, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Video.Livestream.V1.Event.UnmuteTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Event.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :input_switch, 5,
    type: Google.Cloud.Video.Livestream.V1.Event.InputSwitchTask,
    json_name: "inputSwitch",
    oneof: 0

  field :ad_break, 6,
    type: Google.Cloud.Video.Livestream.V1.Event.AdBreakTask,
    json_name: "adBreak",
    oneof: 0

  field :return_to_program, 13,
    type: Google.Cloud.Video.Livestream.V1.Event.ReturnToProgramTask,
    json_name: "returnToProgram",
    oneof: 0

  field :slate, 14, type: Google.Cloud.Video.Livestream.V1.Event.SlateTask, oneof: 0
  field :mute, 15, type: Google.Cloud.Video.Livestream.V1.Event.MuteTask, oneof: 0
  field :unmute, 16, type: Google.Cloud.Video.Livestream.V1.Event.UnmuteTask, oneof: 0
  field :execute_now, 9, type: :bool, json_name: "executeNow"
  field :execution_time, 10, type: Google.Protobuf.Timestamp, json_name: "executionTime"

  field :state, 11,
    type: Google.Cloud.Video.Livestream.V1.Event.State,
    enum: true,
    deprecated: false

  field :error, 12, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.TimeSlice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :markin_time, 1, type: Google.Protobuf.Timestamp, json_name: "markinTime"
  field :markout_time, 2, type: Google.Protobuf.Timestamp, json_name: "markoutTime"
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.Slice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :time_slice, 1,
    type: Google.Cloud.Video.Livestream.V1.Clip.TimeSlice,
    json_name: "timeSlice",
    oneof: 0
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.ClipManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :manifest_key, 1, type: :string, json_name: "manifestKey", deprecated: false
  field :output_uri, 2, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Clip.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Clip do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.Clip.LabelsEntry,
    map: true

  field :state, 6,
    type: Google.Cloud.Video.Livestream.V1.Clip.State,
    enum: true,
    deprecated: false

  field :output_uri, 7, type: :string, json_name: "outputUri"
  field :error, 9, type: Google.Rpc.Status, deprecated: false
  field :slices, 10, repeated: true, type: Google.Cloud.Video.Livestream.V1.Clip.Slice

  field :clip_manifests, 12,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.Clip.ClipManifest,
    json_name: "clipManifests",
    deprecated: false

  field :output_type, 13,
    type: Google.Cloud.Video.Livestream.V1.Clip.OutputType,
    json_name: "outputType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.TimeInterval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.DvrSession.DvrManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :manifest_key, 1, type: :string, json_name: "manifestKey", deprecated: false
  field :output_uri, 2, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.DvrSession.DvrWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :time_interval, 1,
    type: Google.Cloud.Video.Livestream.V1.TimeInterval,
    json_name: "timeInterval",
    oneof: 0
end

defmodule Google.Cloud.Video.Livestream.V1.DvrSession.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.DvrSession do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Video.Livestream.V1.DvrSession.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Video.Livestream.V1.DvrSession.State,
    enum: true,
    deprecated: false

  field :error, 6, type: Google.Rpc.Status, deprecated: false

  field :dvr_manifests, 7,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.DvrSession.DvrManifest,
    json_name: "dvrManifests",
    deprecated: false

  field :dvr_windows, 8,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.DvrSession.DvrWindow,
    json_name: "dvrWindows",
    deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Asset.VideoAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Asset.ImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Asset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :resource, 0

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
    type: Google.Cloud.Video.Livestream.V1.Asset.LabelsEntry,
    map: true

  field :video, 5, type: Google.Cloud.Video.Livestream.V1.Asset.VideoAsset, oneof: 0
  field :image, 6, type: Google.Cloud.Video.Livestream.V1.Asset.ImageAsset, oneof: 0
  field :crc32c, 7, type: :string

  field :state, 8,
    type: Google.Cloud.Video.Livestream.V1.Asset.State,
    enum: true,
    deprecated: false

  field :error, 9, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.SecretManagerSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :secret_version, 1, type: :string, json_name: "secretVersion", deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.Widevine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.Fairplay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.Playready do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.Clearkey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.DrmSystems do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :widevine, 1, type: Google.Cloud.Video.Livestream.V1.Encryption.Widevine
  field :fairplay, 2, type: Google.Cloud.Video.Livestream.V1.Encryption.Fairplay
  field :playready, 3, type: Google.Cloud.Video.Livestream.V1.Encryption.Playready
  field :clearkey, 4, type: Google.Cloud.Video.Livestream.V1.Encryption.Clearkey
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.Aes128Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.SampleAesEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption.MpegCommonEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scheme, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :secret_source, 0

  oneof :encryption_mode, 1

  field :id, 1, type: :string, deprecated: false

  field :secret_manager_key_source, 7,
    type: Google.Cloud.Video.Livestream.V1.Encryption.SecretManagerSource,
    json_name: "secretManagerKeySource",
    oneof: 0

  field :drm_systems, 3,
    type: Google.Cloud.Video.Livestream.V1.Encryption.DrmSystems,
    json_name: "drmSystems",
    deprecated: false

  field :aes128, 4, type: Google.Cloud.Video.Livestream.V1.Encryption.Aes128Encryption, oneof: 1

  field :sample_aes, 5,
    type: Google.Cloud.Video.Livestream.V1.Encryption.SampleAesEncryption,
    json_name: "sampleAes",
    oneof: 1

  field :mpeg_cenc, 6,
    type: Google.Cloud.Video.Livestream.V1.Encryption.MpegCommonEncryption,
    json_name: "mpegCenc",
    oneof: 1
end

defmodule Google.Cloud.Video.Livestream.V1.Pool.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :peered_network, 1, type: :string, json_name: "peeredNetwork", deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.Pool.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.Pool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Video.Livestream.V1.Pool.LabelsEntry,
    map: true

  field :network_config, 5,
    type: Google.Cloud.Video.Livestream.V1.Pool.NetworkConfig,
    json_name: "networkConfig"
end
