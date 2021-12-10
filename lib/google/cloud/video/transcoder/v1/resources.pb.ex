defmodule Google.Cloud.Video.Transcoder.V1.Job.ProcessingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROCESSING_STATE_UNSPECIFIED | :PENDING | :RUNNING | :SUCCEEDED | :FAILED

  field :PROCESSING_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end
defmodule Google.Cloud.Video.Transcoder.V1.Manifest.ManifestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MANIFEST_TYPE_UNSPECIFIED | :HLS | :DASH

  field :MANIFEST_TYPE_UNSPECIFIED, 0
  field :HLS, 1
  field :DASH, 2
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.FadeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FADE_TYPE_UNSPECIFIED | :FADE_IN | :FADE_OUT

  field :FADE_TYPE_UNSPECIFIED, 0
  field :FADE_IN, 1
  field :FADE_OUT, 2
end
defmodule Google.Cloud.Video.Transcoder.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_config:
            {:template_id, String.t()}
            | {:config, Google.Cloud.Video.Transcoder.V1.JobConfig.t() | nil},
          name: String.t(),
          input_uri: String.t(),
          output_uri: String.t(),
          state: Google.Cloud.Video.Transcoder.V1.Job.ProcessingState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          ttl_after_completion_days: integer,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct job_config: nil,
            name: "",
            input_uri: "",
            output_uri: "",
            state: :PROCESSING_STATE_UNSPECIFIED,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            ttl_after_completion_days: 0,
            error: nil

  oneof :job_config, 0

  field :name, 1, type: :string
  field :input_uri, 2, type: :string, json_name: "inputUri", deprecated: false
  field :output_uri, 3, type: :string, json_name: "outputUri", deprecated: false
  field :template_id, 4, type: :string, json_name: "templateId", oneof: 0, deprecated: false
  field :config, 5, type: Google.Cloud.Video.Transcoder.V1.JobConfig, oneof: 0

  field :state, 8,
    type: Google.Cloud.Video.Transcoder.V1.Job.ProcessingState,
    enum: true,
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 14, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :ttl_after_completion_days, 15, type: :int32, json_name: "ttlAfterCompletionDays"
  field :error, 17, type: Google.Rpc.Status, deprecated: false
end
defmodule Google.Cloud.Video.Transcoder.V1.JobTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Video.Transcoder.V1.JobConfig.t() | nil
        }

  defstruct name: "",
            config: nil

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Video.Transcoder.V1.JobConfig
end
defmodule Google.Cloud.Video.Transcoder.V1.JobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: [Google.Cloud.Video.Transcoder.V1.Input.t()],
          edit_list: [Google.Cloud.Video.Transcoder.V1.EditAtom.t()],
          elementary_streams: [Google.Cloud.Video.Transcoder.V1.ElementaryStream.t()],
          mux_streams: [Google.Cloud.Video.Transcoder.V1.MuxStream.t()],
          manifests: [Google.Cloud.Video.Transcoder.V1.Manifest.t()],
          output: Google.Cloud.Video.Transcoder.V1.Output.t() | nil,
          ad_breaks: [Google.Cloud.Video.Transcoder.V1.AdBreak.t()],
          pubsub_destination: Google.Cloud.Video.Transcoder.V1.PubsubDestination.t() | nil,
          sprite_sheets: [Google.Cloud.Video.Transcoder.V1.SpriteSheet.t()],
          overlays: [Google.Cloud.Video.Transcoder.V1.Overlay.t()]
        }

  defstruct inputs: [],
            edit_list: [],
            elementary_streams: [],
            mux_streams: [],
            manifests: [],
            output: nil,
            ad_breaks: [],
            pubsub_destination: nil,
            sprite_sheets: [],
            overlays: []

  field :inputs, 1, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Input

  field :edit_list, 2,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.EditAtom,
    json_name: "editList"

  field :elementary_streams, 3,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.ElementaryStream,
    json_name: "elementaryStreams"

  field :mux_streams, 4,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.MuxStream,
    json_name: "muxStreams"

  field :manifests, 5, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Manifest
  field :output, 6, type: Google.Cloud.Video.Transcoder.V1.Output

  field :ad_breaks, 7,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.AdBreak,
    json_name: "adBreaks"

  field :pubsub_destination, 8,
    type: Google.Cloud.Video.Transcoder.V1.PubsubDestination,
    json_name: "pubsubDestination"

  field :sprite_sheets, 9,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.SpriteSheet,
    json_name: "spriteSheets"

  field :overlays, 10, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Overlay
end
defmodule Google.Cloud.Video.Transcoder.V1.Input do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          uri: String.t(),
          preprocessing_config: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.t() | nil
        }

  defstruct key: "",
            uri: "",
            preprocessing_config: nil

  field :key, 1, type: :string
  field :uri, 2, type: :string

  field :preprocessing_config, 3,
    type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig,
    json_name: "preprocessingConfig"
end
defmodule Google.Cloud.Video.Transcoder.V1.Output do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.EditAtom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          inputs: [String.t()],
          end_time_offset: Google.Protobuf.Duration.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct key: "",
            inputs: [],
            end_time_offset: nil,
            start_time_offset: nil

  field :key, 1, type: :string
  field :inputs, 2, repeated: true, type: :string
  field :end_time_offset, 3, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :start_time_offset, 4, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end
defmodule Google.Cloud.Video.Transcoder.V1.AdBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct start_time_offset: nil

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end
defmodule Google.Cloud.Video.Transcoder.V1.ElementaryStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elementary_stream:
            {:video_stream, Google.Cloud.Video.Transcoder.V1.VideoStream.t() | nil}
            | {:audio_stream, Google.Cloud.Video.Transcoder.V1.AudioStream.t() | nil}
            | {:text_stream, Google.Cloud.Video.Transcoder.V1.TextStream.t() | nil},
          key: String.t()
        }

  defstruct elementary_stream: nil,
            key: ""

  oneof :elementary_stream, 0

  field :key, 4, type: :string

  field :video_stream, 1,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream,
    json_name: "videoStream",
    oneof: 0

  field :audio_stream, 2,
    type: Google.Cloud.Video.Transcoder.V1.AudioStream,
    json_name: "audioStream",
    oneof: 0

  field :text_stream, 3,
    type: Google.Cloud.Video.Transcoder.V1.TextStream,
    json_name: "textStream",
    oneof: 0
end
defmodule Google.Cloud.Video.Transcoder.V1.MuxStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          file_name: String.t(),
          container: String.t(),
          elementary_streams: [String.t()],
          segment_settings: Google.Cloud.Video.Transcoder.V1.SegmentSettings.t() | nil
        }

  defstruct key: "",
            file_name: "",
            container: "",
            elementary_streams: [],
            segment_settings: nil

  field :key, 1, type: :string
  field :file_name, 2, type: :string, json_name: "fileName"
  field :container, 3, type: :string
  field :elementary_streams, 4, repeated: true, type: :string, json_name: "elementaryStreams"

  field :segment_settings, 5,
    type: Google.Cloud.Video.Transcoder.V1.SegmentSettings,
    json_name: "segmentSettings"
end
defmodule Google.Cloud.Video.Transcoder.V1.Manifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_name: String.t(),
          type: Google.Cloud.Video.Transcoder.V1.Manifest.ManifestType.t(),
          mux_streams: [String.t()]
        }

  defstruct file_name: "",
            type: :MANIFEST_TYPE_UNSPECIFIED,
            mux_streams: []

  field :file_name, 1, type: :string, json_name: "fileName"

  field :type, 2,
    type: Google.Cloud.Video.Transcoder.V1.Manifest.ManifestType,
    enum: true,
    deprecated: false

  field :mux_streams, 3, repeated: true, type: :string, json_name: "muxStreams", deprecated: false
end
defmodule Google.Cloud.Video.Transcoder.V1.PubsubDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.SpriteSheet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          extraction_strategy:
            {:total_count, integer} | {:interval, Google.Protobuf.Duration.t() | nil},
          format: String.t(),
          file_prefix: String.t(),
          sprite_width_pixels: integer,
          sprite_height_pixels: integer,
          column_count: integer,
          row_count: integer,
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil,
          quality: integer
        }

  defstruct extraction_strategy: nil,
            format: "",
            file_prefix: "",
            sprite_width_pixels: 0,
            sprite_height_pixels: 0,
            column_count: 0,
            row_count: 0,
            start_time_offset: nil,
            end_time_offset: nil,
            quality: 0

  oneof :extraction_strategy, 0

  field :format, 1, type: :string
  field :file_prefix, 2, type: :string, json_name: "filePrefix", deprecated: false
  field :sprite_width_pixels, 3, type: :int32, json_name: "spriteWidthPixels", deprecated: false
  field :sprite_height_pixels, 4, type: :int32, json_name: "spriteHeightPixels", deprecated: false
  field :column_count, 5, type: :int32, json_name: "columnCount"
  field :row_count, 6, type: :int32, json_name: "rowCount"
  field :start_time_offset, 7, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 8, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :total_count, 9, type: :int32, json_name: "totalCount", oneof: 0
  field :interval, 10, type: Google.Protobuf.Duration, oneof: 0
  field :quality, 11, type: :int32
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct x: 0.0,
            y: 0.0

  field :x, 1, type: :double
  field :y, 2, type: :double
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          resolution: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate.t() | nil,
          alpha: float | :infinity | :negative_infinity | :nan
        }

  defstruct uri: "",
            resolution: nil,
            alpha: 0.0

  field :uri, 1, type: :string, deprecated: false
  field :resolution, 2, type: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate
  field :alpha, 3, type: :double
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.AnimationStatic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          xy: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct xy: nil,
            start_time_offset: nil

  field :xy, 1, type: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate
  field :start_time_offset, 2, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.AnimationFade do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fade_type: Google.Cloud.Video.Transcoder.V1.Overlay.FadeType.t(),
          xy: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct fade_type: :FADE_TYPE_UNSPECIFIED,
            xy: nil,
            start_time_offset: nil,
            end_time_offset: nil

  field :fade_type, 1,
    type: Google.Cloud.Video.Transcoder.V1.Overlay.FadeType,
    json_name: "fadeType",
    enum: true,
    deprecated: false

  field :xy, 2, type: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate
  field :start_time_offset, 3, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 4, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.AnimationEnd do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct start_time_offset: nil

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay.Animation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          animation_type:
            {:animation_static,
             Google.Cloud.Video.Transcoder.V1.Overlay.AnimationStatic.t() | nil}
            | {:animation_fade, Google.Cloud.Video.Transcoder.V1.Overlay.AnimationFade.t() | nil}
            | {:animation_end, Google.Cloud.Video.Transcoder.V1.Overlay.AnimationEnd.t() | nil}
        }

  defstruct animation_type: nil

  oneof :animation_type, 0

  field :animation_static, 1,
    type: Google.Cloud.Video.Transcoder.V1.Overlay.AnimationStatic,
    json_name: "animationStatic",
    oneof: 0

  field :animation_fade, 2,
    type: Google.Cloud.Video.Transcoder.V1.Overlay.AnimationFade,
    json_name: "animationFade",
    oneof: 0

  field :animation_end, 3,
    type: Google.Cloud.Video.Transcoder.V1.Overlay.AnimationEnd,
    json_name: "animationEnd",
    oneof: 0
end
defmodule Google.Cloud.Video.Transcoder.V1.Overlay do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: Google.Cloud.Video.Transcoder.V1.Overlay.Image.t() | nil,
          animations: [Google.Cloud.Video.Transcoder.V1.Overlay.Animation.t()]
        }

  defstruct image: nil,
            animations: []

  field :image, 1, type: Google.Cloud.Video.Transcoder.V1.Overlay.Image
  field :animations, 2, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Overlay.Animation
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Color do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          saturation: float | :infinity | :negative_infinity | :nan,
          contrast: float | :infinity | :negative_infinity | :nan,
          brightness: float | :infinity | :negative_infinity | :nan
        }

  defstruct saturation: 0.0,
            contrast: 0.0,
            brightness: 0.0

  field :saturation, 1, type: :double
  field :contrast, 2, type: :double
  field :brightness, 3, type: :double
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Denoise do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strength: float | :infinity | :negative_infinity | :nan,
          tune: String.t()
        }

  defstruct strength: 0.0,
            tune: ""

  field :strength, 1, type: :double
  field :tune, 2, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deblock do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strength: float | :infinity | :negative_infinity | :nan,
          enabled: boolean
        }

  defstruct strength: 0.0,
            enabled: false

  field :strength, 1, type: :double
  field :enabled, 2, type: :bool
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Audio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lufs: float | :infinity | :negative_infinity | :nan,
          high_boost: boolean,
          low_boost: boolean
        }

  defstruct lufs: 0.0,
            high_boost: false,
            low_boost: false

  field :lufs, 1, type: :double
  field :high_boost, 2, type: :bool, json_name: "highBoost"
  field :low_boost, 3, type: :bool, json_name: "lowBoost"
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Crop do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_pixels: integer,
          bottom_pixels: integer,
          left_pixels: integer,
          right_pixels: integer
        }

  defstruct top_pixels: 0,
            bottom_pixels: 0,
            left_pixels: 0,
            right_pixels: 0

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Pad do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          top_pixels: integer,
          bottom_pixels: integer,
          left_pixels: integer,
          right_pixels: integer
        }

  defstruct top_pixels: 0,
            bottom_pixels: 0,
            left_pixels: 0,
            right_pixels: 0

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end
defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          color: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Color.t() | nil,
          denoise: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Denoise.t() | nil,
          deblock: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deblock.t() | nil,
          audio: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Audio.t() | nil,
          crop: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Crop.t() | nil,
          pad: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Pad.t() | nil
        }

  defstruct color: nil,
            denoise: nil,
            deblock: nil,
            audio: nil,
            crop: nil,
            pad: nil

  field :color, 1, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Color
  field :denoise, 2, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Denoise
  field :deblock, 3, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deblock
  field :audio, 4, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Audio
  field :crop, 5, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Crop
  field :pad, 6, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Pad
end
defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H264CodecSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gop_mode:
            {:gop_frame_count, integer} | {:gop_duration, Google.Protobuf.Duration.t() | nil},
          width_pixels: integer,
          height_pixels: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan,
          bitrate_bps: integer,
          pixel_format: String.t(),
          rate_control_mode: String.t(),
          crf_level: integer,
          allow_open_gop: boolean,
          enable_two_pass: boolean,
          vbv_size_bits: integer,
          vbv_fullness_bits: integer,
          entropy_coder: String.t(),
          b_pyramid: boolean,
          b_frame_count: integer,
          aq_strength: float | :infinity | :negative_infinity | :nan,
          profile: String.t(),
          tune: String.t(),
          preset: String.t()
        }

  defstruct gop_mode: nil,
            width_pixels: 0,
            height_pixels: 0,
            frame_rate: 0.0,
            bitrate_bps: 0,
            pixel_format: "",
            rate_control_mode: "",
            crf_level: 0,
            allow_open_gop: false,
            enable_two_pass: false,
            vbv_size_bits: 0,
            vbv_fullness_bits: 0,
            entropy_coder: "",
            b_pyramid: false,
            b_frame_count: 0,
            aq_strength: 0.0,
            profile: "",
            tune: "",
            preset: ""

  oneof :gop_mode, 0

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false
  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps", deprecated: false
  field :pixel_format, 5, type: :string, json_name: "pixelFormat"
  field :rate_control_mode, 6, type: :string, json_name: "rateControlMode"
  field :crf_level, 7, type: :int32, json_name: "crfLevel"
  field :allow_open_gop, 8, type: :bool, json_name: "allowOpenGop"
  field :gop_frame_count, 9, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 10, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :enable_two_pass, 11, type: :bool, json_name: "enableTwoPass"
  field :vbv_size_bits, 12, type: :int32, json_name: "vbvSizeBits"
  field :vbv_fullness_bits, 13, type: :int32, json_name: "vbvFullnessBits"
  field :entropy_coder, 14, type: :string, json_name: "entropyCoder"
  field :b_pyramid, 15, type: :bool, json_name: "bPyramid"
  field :b_frame_count, 16, type: :int32, json_name: "bFrameCount"
  field :aq_strength, 17, type: :double, json_name: "aqStrength"
  field :profile, 18, type: :string
  field :tune, 19, type: :string
  field :preset, 20, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H265CodecSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gop_mode:
            {:gop_frame_count, integer} | {:gop_duration, Google.Protobuf.Duration.t() | nil},
          width_pixels: integer,
          height_pixels: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan,
          bitrate_bps: integer,
          pixel_format: String.t(),
          rate_control_mode: String.t(),
          crf_level: integer,
          allow_open_gop: boolean,
          enable_two_pass: boolean,
          vbv_size_bits: integer,
          vbv_fullness_bits: integer,
          b_pyramid: boolean,
          b_frame_count: integer,
          aq_strength: float | :infinity | :negative_infinity | :nan,
          profile: String.t(),
          tune: String.t(),
          preset: String.t()
        }

  defstruct gop_mode: nil,
            width_pixels: 0,
            height_pixels: 0,
            frame_rate: 0.0,
            bitrate_bps: 0,
            pixel_format: "",
            rate_control_mode: "",
            crf_level: 0,
            allow_open_gop: false,
            enable_two_pass: false,
            vbv_size_bits: 0,
            vbv_fullness_bits: 0,
            b_pyramid: false,
            b_frame_count: 0,
            aq_strength: 0.0,
            profile: "",
            tune: "",
            preset: ""

  oneof :gop_mode, 0

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false
  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps", deprecated: false
  field :pixel_format, 5, type: :string, json_name: "pixelFormat"
  field :rate_control_mode, 6, type: :string, json_name: "rateControlMode"
  field :crf_level, 7, type: :int32, json_name: "crfLevel"
  field :allow_open_gop, 8, type: :bool, json_name: "allowOpenGop"
  field :gop_frame_count, 9, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 10, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :enable_two_pass, 11, type: :bool, json_name: "enableTwoPass"
  field :vbv_size_bits, 12, type: :int32, json_name: "vbvSizeBits"
  field :vbv_fullness_bits, 13, type: :int32, json_name: "vbvFullnessBits"
  field :b_pyramid, 14, type: :bool, json_name: "bPyramid"
  field :b_frame_count, 15, type: :int32, json_name: "bFrameCount"
  field :aq_strength, 16, type: :double, json_name: "aqStrength"
  field :profile, 17, type: :string
  field :tune, 18, type: :string
  field :preset, 19, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9CodecSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gop_mode:
            {:gop_frame_count, integer} | {:gop_duration, Google.Protobuf.Duration.t() | nil},
          width_pixels: integer,
          height_pixels: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan,
          bitrate_bps: integer,
          pixel_format: String.t(),
          rate_control_mode: String.t(),
          crf_level: integer,
          profile: String.t()
        }

  defstruct gop_mode: nil,
            width_pixels: 0,
            height_pixels: 0,
            frame_rate: 0.0,
            bitrate_bps: 0,
            pixel_format: "",
            rate_control_mode: "",
            crf_level: 0,
            profile: ""

  oneof :gop_mode, 0

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false
  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps", deprecated: false
  field :pixel_format, 5, type: :string, json_name: "pixelFormat"
  field :rate_control_mode, 6, type: :string, json_name: "rateControlMode"
  field :crf_level, 7, type: :int32, json_name: "crfLevel"
  field :gop_frame_count, 8, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 9, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :profile, 10, type: :string
end
defmodule Google.Cloud.Video.Transcoder.V1.VideoStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec_settings:
            {:h264, Google.Cloud.Video.Transcoder.V1.VideoStream.H264CodecSettings.t() | nil}
            | {:h265, Google.Cloud.Video.Transcoder.V1.VideoStream.H265CodecSettings.t() | nil}
            | {:vp9, Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9CodecSettings.t() | nil}
        }

  defstruct codec_settings: nil

  oneof :codec_settings, 0

  field :h264, 1, type: Google.Cloud.Video.Transcoder.V1.VideoStream.H264CodecSettings, oneof: 0
  field :h265, 2, type: Google.Cloud.Video.Transcoder.V1.VideoStream.H265CodecSettings, oneof: 0
  field :vp9, 3, type: Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9CodecSettings, oneof: 0
end
defmodule Google.Cloud.Video.Transcoder.V1.AudioStream.AudioMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          atom_key: String.t(),
          input_key: String.t(),
          input_track: integer,
          input_channel: integer,
          output_channel: integer,
          gain_db: float | :infinity | :negative_infinity | :nan
        }

  defstruct atom_key: "",
            input_key: "",
            input_track: 0,
            input_channel: 0,
            output_channel: 0,
            gain_db: 0.0

  field :atom_key, 1, type: :string, json_name: "atomKey", deprecated: false
  field :input_key, 2, type: :string, json_name: "inputKey", deprecated: false
  field :input_track, 3, type: :int32, json_name: "inputTrack", deprecated: false
  field :input_channel, 4, type: :int32, json_name: "inputChannel", deprecated: false
  field :output_channel, 5, type: :int32, json_name: "outputChannel", deprecated: false
  field :gain_db, 6, type: :double, json_name: "gainDb"
end
defmodule Google.Cloud.Video.Transcoder.V1.AudioStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          bitrate_bps: integer,
          channel_count: integer,
          channel_layout: [String.t()],
          mapping: [Google.Cloud.Video.Transcoder.V1.AudioStream.AudioMapping.t()],
          sample_rate_hertz: integer
        }

  defstruct codec: "",
            bitrate_bps: 0,
            channel_count: 0,
            channel_layout: [],
            mapping: [],
            sample_rate_hertz: 0

  field :codec, 1, type: :string
  field :bitrate_bps, 2, type: :int32, json_name: "bitrateBps", deprecated: false
  field :channel_count, 3, type: :int32, json_name: "channelCount"
  field :channel_layout, 4, repeated: true, type: :string, json_name: "channelLayout"

  field :mapping, 5,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.AudioStream.AudioMapping

  field :sample_rate_hertz, 6, type: :int32, json_name: "sampleRateHertz"
end
defmodule Google.Cloud.Video.Transcoder.V1.TextStream.TextMapping do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          atom_key: String.t(),
          input_key: String.t(),
          input_track: integer
        }

  defstruct atom_key: "",
            input_key: "",
            input_track: 0

  field :atom_key, 1, type: :string, json_name: "atomKey", deprecated: false
  field :input_key, 2, type: :string, json_name: "inputKey", deprecated: false
  field :input_track, 3, type: :int32, json_name: "inputTrack", deprecated: false
end
defmodule Google.Cloud.Video.Transcoder.V1.TextStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          mapping: [Google.Cloud.Video.Transcoder.V1.TextStream.TextMapping.t()]
        }

  defstruct codec: "",
            mapping: []

  field :codec, 1, type: :string
  field :mapping, 3, repeated: true, type: Google.Cloud.Video.Transcoder.V1.TextStream.TextMapping
end
defmodule Google.Cloud.Video.Transcoder.V1.SegmentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment_duration: Google.Protobuf.Duration.t() | nil,
          individual_segments: boolean
        }

  defstruct segment_duration: nil,
            individual_segments: false

  field :segment_duration, 1, type: Google.Protobuf.Duration, json_name: "segmentDuration"
  field :individual_segments, 3, type: :bool, json_name: "individualSegments", deprecated: false
end
