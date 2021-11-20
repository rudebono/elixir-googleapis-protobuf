defmodule Google.Cloud.Video.Livestream.V1.Manifest.ManifestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MANIFEST_TYPE_UNSPECIFIED | :HLS | :DASH

  field :MANIFEST_TYPE_UNSPECIFIED, 0
  field :HLS, 1
  field :DASH, 2
end

defmodule Google.Cloud.Video.Livestream.V1.ElementaryStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elementary_stream:
            {:video_stream, Google.Cloud.Video.Livestream.V1.VideoStream.t() | nil}
            | {:audio_stream, Google.Cloud.Video.Livestream.V1.AudioStream.t() | nil}
            | {:text_stream, Google.Cloud.Video.Livestream.V1.TextStream.t() | nil},
          key: String.t()
        }

  defstruct [:elementary_stream, :key]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.MuxStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          container: String.t(),
          elementary_streams: [String.t()],
          segment_settings: Google.Cloud.Video.Livestream.V1.SegmentSettings.t() | nil
        }

  defstruct [:key, :container, :elementary_streams, :segment_settings]

  field :key, 1, type: :string
  field :container, 3, type: :string
  field :elementary_streams, 4, repeated: true, type: :string, json_name: "elementaryStreams"

  field :segment_settings, 5,
    type: Google.Cloud.Video.Livestream.V1.SegmentSettings,
    json_name: "segmentSettings"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.Manifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_name: String.t(),
          type: Google.Cloud.Video.Livestream.V1.Manifest.ManifestType.t(),
          mux_streams: [String.t()],
          max_segment_count: integer,
          segment_keep_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:file_name, :type, :mux_streams, :max_segment_count, :segment_keep_duration]

  field :file_name, 1, type: :string, json_name: "fileName"
  field :type, 2, type: Google.Cloud.Video.Livestream.V1.Manifest.ManifestType, enum: true
  field :mux_streams, 3, repeated: true, type: :string, json_name: "muxStreams"
  field :max_segment_count, 4, type: :int32, json_name: "maxSegmentCount"

  field :segment_keep_duration, 5,
    type: Google.Protobuf.Duration,
    json_name: "segmentKeepDuration"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.SpriteSheet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: String.t(),
          file_prefix: String.t(),
          sprite_width_pixels: integer,
          sprite_height_pixels: integer,
          column_count: integer,
          row_count: integer,
          interval: Google.Protobuf.Duration.t() | nil,
          quality: integer
        }

  defstruct [
    :format,
    :file_prefix,
    :sprite_width_pixels,
    :sprite_height_pixels,
    :column_count,
    :row_count,
    :interval,
    :quality
  ]

  field :format, 1, type: :string
  field :file_prefix, 2, type: :string, json_name: "filePrefix"
  field :sprite_width_pixels, 3, type: :int32, json_name: "spriteWidthPixels"
  field :sprite_height_pixels, 4, type: :int32, json_name: "spriteHeightPixels"
  field :column_count, 5, type: :int32, json_name: "columnCount"
  field :row_count, 6, type: :int32, json_name: "rowCount"
  field :interval, 7, type: Google.Protobuf.Duration
  field :quality, 8, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Crop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_pixels: integer,
          bottom_pixels: integer,
          left_pixels: integer,
          right_pixels: integer
        }

  defstruct [:top_pixels, :bottom_pixels, :left_pixels, :right_pixels]

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Pad do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_pixels: integer,
          bottom_pixels: integer,
          left_pixels: integer,
          right_pixels: integer
        }

  defstruct [:top_pixels, :bottom_pixels, :left_pixels, :right_pixels]

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.PreprocessingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crop: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Crop.t() | nil,
          pad: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Pad.t() | nil
        }

  defstruct [:crop, :pad]

  field :crop, 2, type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Crop
  field :pad, 3, type: Google.Cloud.Video.Livestream.V1.PreprocessingConfig.Pad

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.VideoStream.H264CodecSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gop_mode:
            {:gop_frame_count, integer} | {:gop_duration, Google.Protobuf.Duration.t() | nil},
          width_pixels: integer,
          height_pixels: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan,
          bitrate_bps: integer,
          allow_open_gop: boolean,
          vbv_size_bits: integer,
          vbv_fullness_bits: integer,
          entropy_coder: String.t(),
          b_pyramid: boolean,
          b_frame_count: integer,
          aq_strength: float | :infinity | :negative_infinity | :nan,
          profile: String.t(),
          tune: String.t()
        }

  defstruct [
    :gop_mode,
    :width_pixels,
    :height_pixels,
    :frame_rate,
    :bitrate_bps,
    :allow_open_gop,
    :vbv_size_bits,
    :vbv_fullness_bits,
    :entropy_coder,
    :b_pyramid,
    :b_frame_count,
    :aq_strength,
    :profile,
    :tune
  ]

  oneof :gop_mode, 0

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate"
  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps"
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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.VideoStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec_settings:
            {:h264, Google.Cloud.Video.Livestream.V1.VideoStream.H264CodecSettings.t() | nil}
        }

  defstruct [:codec_settings]

  oneof :codec_settings, 0

  field :h264, 20, type: Google.Cloud.Video.Livestream.V1.VideoStream.H264CodecSettings, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.AudioStream.AudioMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_key: String.t(),
          input_track: integer,
          input_channel: integer,
          output_channel: integer
        }

  defstruct [:input_key, :input_track, :input_channel, :output_channel]

  field :input_key, 6, type: :string, json_name: "inputKey"
  field :input_track, 2, type: :int32, json_name: "inputTrack"
  field :input_channel, 3, type: :int32, json_name: "inputChannel"
  field :output_channel, 4, type: :int32, json_name: "outputChannel"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.AudioStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transmux: boolean,
          codec: String.t(),
          bitrate_bps: integer,
          channel_count: integer,
          channel_layout: [String.t()],
          mapping: [Google.Cloud.Video.Livestream.V1.AudioStream.AudioMapping.t()],
          sample_rate_hertz: integer
        }

  defstruct [
    :transmux,
    :codec,
    :bitrate_bps,
    :channel_count,
    :channel_layout,
    :mapping,
    :sample_rate_hertz
  ]

  field :transmux, 8, type: :bool
  field :codec, 1, type: :string
  field :bitrate_bps, 2, type: :int32, json_name: "bitrateBps"
  field :channel_count, 3, type: :int32, json_name: "channelCount"
  field :channel_layout, 4, repeated: true, type: :string, json_name: "channelLayout"

  field :mapping, 5,
    repeated: true,
    type: Google.Cloud.Video.Livestream.V1.AudioStream.AudioMapping

  field :sample_rate_hertz, 6, type: :int32, json_name: "sampleRateHertz"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.TextStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t()
        }

  defstruct [:codec]

  field :codec, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.SegmentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:segment_duration]

  field :segment_duration, 1, type: Google.Protobuf.Duration, json_name: "segmentDuration"

  def transform_module(), do: nil
end
