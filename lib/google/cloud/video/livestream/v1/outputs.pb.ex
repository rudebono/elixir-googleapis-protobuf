defmodule Google.Cloud.Video.Livestream.V1.Manifest.ManifestType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MANIFEST_TYPE_UNSPECIFIED, 0
  field :HLS, 1
  field :DASH, 2
end

defmodule Google.Cloud.Video.Livestream.V1.TimecodeConfig.TimecodeSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TIMECODE_SOURCE_UNSPECIFIED, 0
  field :MEDIA_TIMESTAMP, 1
  field :EMBEDDED_TIMECODE, 2
end

defmodule Google.Cloud.Video.Livestream.V1.ElementaryStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :elementary_stream, 0

  field :key, 4, type: :string

  field :video_stream, 1,
    type: Google.Cloud.Video.Livestream.V1.VideoStream,
    json_name: "videoStream",
    oneof: 0

  field :audio_stream, 2,
    type: Google.Cloud.Video.Livestream.V1.AudioStream,
    json_name: "audioStream",
    oneof: 0

  field :text_stream, 3,
    type: Google.Cloud.Video.Livestream.V1.TextStream,
    json_name: "textStream",
    oneof: 0
end

defmodule Google.Cloud.Video.Livestream.V1.MuxStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :container, 3, type: :string
  field :elementary_streams, 4, repeated: true, type: :string, json_name: "elementaryStreams"

  field :segment_settings, 5,
    type: Google.Cloud.Video.Livestream.V1.SegmentSettings,
    json_name: "segmentSettings"

  field :encryption_id, 6, type: :string, json_name: "encryptionId"
end

defmodule Google.Cloud.Video.Livestream.V1.Manifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :file_name, 1, type: :string, json_name: "fileName"

  field :type, 2,
    type: Google.Cloud.Video.Livestream.V1.Manifest.ManifestType,
    enum: true,
    deprecated: false

  field :mux_streams, 3, repeated: true, type: :string, json_name: "muxStreams", deprecated: false
  field :max_segment_count, 4, type: :int32, json_name: "maxSegmentCount"

  field :segment_keep_duration, 5,
    type: Google.Protobuf.Duration,
    json_name: "segmentKeepDuration"

  field :use_timecode_as_timeline, 6, type: :bool, json_name: "useTimecodeAsTimeline"
  field :key, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.SpriteSheet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :format, 1, type: :string
  field :file_prefix, 2, type: :string, json_name: "filePrefix", deprecated: false
  field :sprite_width_pixels, 3, type: :int32, json_name: "spriteWidthPixels", deprecated: false
  field :sprite_height_pixels, 4, type: :int32, json_name: "spriteHeightPixels", deprecated: false
  field :column_count, 5, type: :int32, json_name: "columnCount"
  field :row_count, 6, type: :int32, json_name: "rowCount"
  field :interval, 7, type: Google.Protobuf.Duration
  field :quality, 8, type: :int32
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Audio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :lufs, 1, type: :double
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Crop do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Pad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :audio, 1, type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Audio
  field :crop, 2, type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Crop
  field :pad, 3, type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Pad
end

defmodule Google.Cloud.Video.Livestream.V1.VideoStream.H264CodecSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :gop_mode, 0

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false
  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps", deprecated: false
  field :allow_open_gop, 6, type: :bool, json_name: "allowOpenGop"
  field :gop_frame_count, 7, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 8, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :vbv_size_bits, 9, type: :int32, json_name: "vbvSizeBits"
  field :vbv_fullness_bits, 10, type: :int32, json_name: "vbvFullnessBits"
  field :entropy_coder, 11, type: :string, json_name: "entropyCoder"
  field :b_pyramid, 12, type: :bool, json_name: "bPyramid"
  field :b_frame_count, 13, type: :int32, json_name: "bFrameCount"
  field :aq_strength, 14, type: :double, json_name: "aqStrength"
  field :profile, 15, type: :string
  field :tune, 16, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.VideoStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :codec_settings, 0

  field :h264, 20, type: Google.Cloud.Video.Livestream.V1.VideoStream.H264CodecSettings, oneof: 0
end

defmodule Google.Cloud.Video.Livestream.V1.AudioStream.AudioMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :input_key, 6, type: :string, json_name: "inputKey", deprecated: false
  field :input_track, 2, type: :int32, json_name: "inputTrack", deprecated: false
  field :input_channel, 3, type: :int32, json_name: "inputChannel", deprecated: false
  field :output_channel, 4, type: :int32, json_name: "outputChannel", deprecated: false
  field :gain_db, 5, type: :double, json_name: "gainDb"
end

defmodule Google.Cloud.Video.Livestream.V1.AudioStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transmux, 8, type: :bool
  field :codec, 1, type: :string
  field :bitrate_bps, 2, type: :int32, json_name: "bitrateBps", deprecated: false
  field :channel_count, 3, type: :int32, json_name: "channelCount"
  field :channel_layout, 4, repeated: true, type: :string, json_name: "channelLayout"

  field :mapping, 5,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.AudioStream.AudioMapping

  field :sample_rate_hertz, 6, type: :int32, json_name: "sampleRateHertz"
end

defmodule Google.Cloud.Video.Livestream.V1.TextStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :codec, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.SegmentSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :segment_duration, 1, type: Google.Protobuf.Duration, json_name: "segmentDuration"
end

defmodule Google.Cloud.Video.Livestream.V1.TimecodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :time_offset, 0

  field :source, 1,
    type: Google.Cloud.Video.Livestream.V1.TimecodeConfig.TimecodeSource,
    enum: true

  field :utc_offset, 2, type: Google.Protobuf.Duration, json_name: "utcOffset", oneof: 0
  field :time_zone, 3, type: Google.Type.TimeZone, json_name: "timeZone", oneof: 0
end