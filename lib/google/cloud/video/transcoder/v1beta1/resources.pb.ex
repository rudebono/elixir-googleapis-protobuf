defmodule Google.Cloud.Video.Transcoder.V1beta1.Job.ProcessingState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PROCESSING_STATE_UNSPECIFIED | :PENDING | :RUNNING | :SUCCEEDED | :FAILED

  field :PROCESSING_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Manifest.ManifestType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MANIFEST_TYPE_UNSPECIFIED | :HLS | :DASH

  field :MANIFEST_TYPE_UNSPECIFIED, 0
  field :HLS, 1
  field :DASH, 2
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.FadeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FADE_TYPE_UNSPECIFIED | :FADE_IN | :FADE_OUT

  field :FADE_TYPE_UNSPECIFIED, 0
  field :FADE_IN, 1
  field :FADE_OUT, 2
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Job.OriginUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hls: String.t(),
          dash: String.t()
        }

  defstruct [:hls, :dash]

  field :hls, 1, type: :string
  field :dash, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_config:
            {:template_id, String.t()}
            | {:config, Google.Cloud.Video.Transcoder.V1beta1.JobConfig.t() | nil},
          name: String.t(),
          input_uri: String.t(),
          output_uri: String.t(),
          priority: integer,
          origin_uri: Google.Cloud.Video.Transcoder.V1beta1.Job.OriginUri.t() | nil,
          state: Google.Cloud.Video.Transcoder.V1beta1.Job.ProcessingState.t(),
          progress: Google.Cloud.Video.Transcoder.V1beta1.Progress.t() | nil,
          failure_reason: String.t(),
          failure_details: [Google.Cloud.Video.Transcoder.V1beta1.FailureDetail.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          ttl_after_completion_days: integer
        }

  defstruct [
    :job_config,
    :name,
    :input_uri,
    :output_uri,
    :priority,
    :origin_uri,
    :state,
    :progress,
    :failure_reason,
    :failure_details,
    :create_time,
    :start_time,
    :end_time,
    :ttl_after_completion_days
  ]

  oneof :job_config, 0

  field :name, 1, type: :string
  field :input_uri, 2, type: :string, json_name: "inputUri"
  field :output_uri, 3, type: :string, json_name: "outputUri"
  field :template_id, 4, type: :string, json_name: "templateId", oneof: 0
  field :config, 5, type: Google.Cloud.Video.Transcoder.V1beta1.JobConfig, oneof: 0
  field :priority, 6, type: :int32

  field :origin_uri, 7,
    type: Google.Cloud.Video.Transcoder.V1beta1.Job.OriginUri,
    json_name: "originUri"

  field :state, 8, type: Google.Cloud.Video.Transcoder.V1beta1.Job.ProcessingState, enum: true
  field :progress, 9, type: Google.Cloud.Video.Transcoder.V1beta1.Progress
  field :failure_reason, 10, type: :string, json_name: "failureReason"

  field :failure_details, 11,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.FailureDetail,
    json_name: "failureDetails"

  field :create_time, 12, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 13, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 14, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :ttl_after_completion_days, 15, type: :int32, json_name: "ttlAfterCompletionDays"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.JobTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Video.Transcoder.V1beta1.JobConfig.t() | nil
        }

  defstruct [:name, :config]

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Video.Transcoder.V1beta1.JobConfig

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.JobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: [Google.Cloud.Video.Transcoder.V1beta1.Input.t()],
          edit_list: [Google.Cloud.Video.Transcoder.V1beta1.EditAtom.t()],
          elementary_streams: [Google.Cloud.Video.Transcoder.V1beta1.ElementaryStream.t()],
          mux_streams: [Google.Cloud.Video.Transcoder.V1beta1.MuxStream.t()],
          manifests: [Google.Cloud.Video.Transcoder.V1beta1.Manifest.t()],
          output: Google.Cloud.Video.Transcoder.V1beta1.Output.t() | nil,
          ad_breaks: [Google.Cloud.Video.Transcoder.V1beta1.AdBreak.t()],
          pubsub_destination: Google.Cloud.Video.Transcoder.V1beta1.PubsubDestination.t() | nil,
          sprite_sheets: [Google.Cloud.Video.Transcoder.V1beta1.SpriteSheet.t()],
          overlays: [Google.Cloud.Video.Transcoder.V1beta1.Overlay.t()]
        }

  defstruct [
    :inputs,
    :edit_list,
    :elementary_streams,
    :mux_streams,
    :manifests,
    :output,
    :ad_breaks,
    :pubsub_destination,
    :sprite_sheets,
    :overlays
  ]

  field :inputs, 1, repeated: true, type: Google.Cloud.Video.Transcoder.V1beta1.Input

  field :edit_list, 2,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.EditAtom,
    json_name: "editList"

  field :elementary_streams, 3,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.ElementaryStream,
    json_name: "elementaryStreams"

  field :mux_streams, 4,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.MuxStream,
    json_name: "muxStreams"

  field :manifests, 5, repeated: true, type: Google.Cloud.Video.Transcoder.V1beta1.Manifest
  field :output, 6, type: Google.Cloud.Video.Transcoder.V1beta1.Output

  field :ad_breaks, 7,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.AdBreak,
    json_name: "adBreaks"

  field :pubsub_destination, 8,
    type: Google.Cloud.Video.Transcoder.V1beta1.PubsubDestination,
    json_name: "pubsubDestination"

  field :sprite_sheets, 9,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.SpriteSheet,
    json_name: "spriteSheets"

  field :overlays, 10, repeated: true, type: Google.Cloud.Video.Transcoder.V1beta1.Overlay

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Input do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          uri: String.t(),
          preprocessing_config:
            Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.t() | nil
        }

  defstruct [:key, :uri, :preprocessing_config]

  field :key, 1, type: :string
  field :uri, 2, type: :string

  field :preprocessing_config, 3,
    type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig,
    json_name: "preprocessingConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Output do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.EditAtom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          inputs: [String.t()],
          end_time_offset: Google.Protobuf.Duration.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:key, :inputs, :end_time_offset, :start_time_offset]

  field :key, 1, type: :string
  field :inputs, 2, repeated: true, type: :string
  field :end_time_offset, 3, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :start_time_offset, 4, type: Google.Protobuf.Duration, json_name: "startTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.AdBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time_offset]

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.ElementaryStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elementary_stream:
            {:video_stream, Google.Cloud.Video.Transcoder.V1beta1.VideoStream.t() | nil}
            | {:audio_stream, Google.Cloud.Video.Transcoder.V1beta1.AudioStream.t() | nil}
            | {:text_stream, Google.Cloud.Video.Transcoder.V1beta1.TextStream.t() | nil},
          key: String.t()
        }

  defstruct [:elementary_stream, :key]

  oneof :elementary_stream, 0

  field :key, 4, type: :string

  field :video_stream, 1,
    type: Google.Cloud.Video.Transcoder.V1beta1.VideoStream,
    json_name: "videoStream",
    oneof: 0

  field :audio_stream, 2,
    type: Google.Cloud.Video.Transcoder.V1beta1.AudioStream,
    json_name: "audioStream",
    oneof: 0

  field :text_stream, 3,
    type: Google.Cloud.Video.Transcoder.V1beta1.TextStream,
    json_name: "textStream",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.MuxStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          file_name: String.t(),
          container: String.t(),
          elementary_streams: [String.t()],
          segment_settings: Google.Cloud.Video.Transcoder.V1beta1.SegmentSettings.t() | nil,
          encryption: Google.Cloud.Video.Transcoder.V1beta1.Encryption.t() | nil
        }

  defstruct [:key, :file_name, :container, :elementary_streams, :segment_settings, :encryption]

  field :key, 1, type: :string
  field :file_name, 2, type: :string, json_name: "fileName"
  field :container, 3, type: :string
  field :elementary_streams, 4, repeated: true, type: :string, json_name: "elementaryStreams"

  field :segment_settings, 5,
    type: Google.Cloud.Video.Transcoder.V1beta1.SegmentSettings,
    json_name: "segmentSettings"

  field :encryption, 6, type: Google.Cloud.Video.Transcoder.V1beta1.Encryption

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Manifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_name: String.t(),
          type: Google.Cloud.Video.Transcoder.V1beta1.Manifest.ManifestType.t(),
          mux_streams: [String.t()]
        }

  defstruct [:file_name, :type, :mux_streams]

  field :file_name, 1, type: :string, json_name: "fileName"
  field :type, 2, type: Google.Cloud.Video.Transcoder.V1beta1.Manifest.ManifestType, enum: true
  field :mux_streams, 3, repeated: true, type: :string, json_name: "muxStreams"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PubsubDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.SpriteSheet do
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

  defstruct [
    :extraction_strategy,
    :format,
    :file_prefix,
    :sprite_width_pixels,
    :sprite_height_pixels,
    :column_count,
    :row_count,
    :start_time_offset,
    :end_time_offset,
    :quality
  ]

  oneof :extraction_strategy, 0

  field :format, 1, type: :string
  field :file_prefix, 2, type: :string, json_name: "filePrefix"
  field :sprite_width_pixels, 3, type: :int32, json_name: "spriteWidthPixels"
  field :sprite_height_pixels, 4, type: :int32, json_name: "spriteHeightPixels"
  field :column_count, 5, type: :int32, json_name: "columnCount"
  field :row_count, 6, type: :int32, json_name: "rowCount"
  field :start_time_offset, 7, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 8, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :total_count, 9, type: :int32, json_name: "totalCount", oneof: 0
  field :interval, 10, type: Google.Protobuf.Duration, oneof: 0
  field :quality, 11, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :double
  field :y, 2, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          resolution:
            Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate.t() | nil,
          alpha: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:uri, :resolution, :alpha]

  field :uri, 1, type: :string
  field :resolution, 2, type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate
  field :alpha, 3, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationStatic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          xy: Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:xy, :start_time_offset]

  field :xy, 1, type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate
  field :start_time_offset, 2, type: Google.Protobuf.Duration, json_name: "startTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationFade do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fade_type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.FadeType.t(),
          xy: Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate.t() | nil,
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:fade_type, :xy, :start_time_offset, :end_time_offset]

  field :fade_type, 1,
    type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.FadeType,
    enum: true,
    json_name: "fadeType"

  field :xy, 2, type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.NormalizedCoordinate
  field :start_time_offset, 3, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 4, type: Google.Protobuf.Duration, json_name: "endTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationEnd do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time_offset]

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay.Animation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          animation_type:
            {:animation_static,
             Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationStatic.t() | nil}
            | {:animation_fade,
               Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationFade.t() | nil}
            | {:animation_end,
               Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationEnd.t() | nil}
        }

  defstruct [:animation_type]

  oneof :animation_type, 0

  field :animation_static, 1,
    type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationStatic,
    json_name: "animationStatic",
    oneof: 0

  field :animation_fade, 2,
    type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationFade,
    json_name: "animationFade",
    oneof: 0

  field :animation_end, 3,
    type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.AnimationEnd,
    json_name: "animationEnd",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Overlay do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: Google.Cloud.Video.Transcoder.V1beta1.Overlay.Image.t() | nil,
          animations: [Google.Cloud.Video.Transcoder.V1beta1.Overlay.Animation.t()]
        }

  defstruct [:image, :animations]

  field :image, 1, type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.Image

  field :animations, 2,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.Overlay.Animation

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Color do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          saturation: float | :infinity | :negative_infinity | :nan,
          contrast: float | :infinity | :negative_infinity | :nan,
          brightness: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:saturation, :contrast, :brightness]

  field :saturation, 1, type: :double
  field :contrast, 2, type: :double
  field :brightness, 3, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Denoise do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strength: float | :infinity | :negative_infinity | :nan,
          tune: String.t()
        }

  defstruct [:strength, :tune]

  field :strength, 1, type: :double
  field :tune, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Deblock do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strength: float | :infinity | :negative_infinity | :nan,
          enabled: boolean
        }

  defstruct [:strength, :enabled]

  field :strength, 1, type: :double
  field :enabled, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Audio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          lufs: float | :infinity | :negative_infinity | :nan,
          high_boost: boolean,
          low_boost: boolean
        }

  defstruct [:lufs, :high_boost, :low_boost]

  field :lufs, 1, type: :double
  field :high_boost, 2, type: :bool, json_name: "highBoost"
  field :low_boost, 3, type: :bool, json_name: "lowBoost"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Crop do
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

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Pad do
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

defmodule Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          color: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Color.t() | nil,
          denoise: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Denoise.t() | nil,
          deblock: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Deblock.t() | nil,
          audio: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Audio.t() | nil,
          crop: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Crop.t() | nil,
          pad: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Pad.t() | nil
        }

  defstruct [:color, :denoise, :deblock, :audio, :crop, :pad]

  field :color, 1, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Color
  field :denoise, 2, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Denoise
  field :deblock, 3, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Deblock
  field :audio, 4, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Audio
  field :crop, 5, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Crop
  field :pad, 6, type: Google.Cloud.Video.Transcoder.V1beta1.PreprocessingConfig.Pad

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.VideoStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gop_mode:
            {:gop_frame_count, integer} | {:gop_duration, Google.Protobuf.Duration.t() | nil},
          codec: String.t(),
          profile: String.t(),
          tune: String.t(),
          preset: String.t(),
          height_pixels: integer,
          width_pixels: integer,
          pixel_format: String.t(),
          bitrate_bps: integer,
          rate_control_mode: String.t(),
          enable_two_pass: boolean,
          crf_level: integer,
          vbv_size_bits: integer,
          vbv_fullness_bits: integer,
          allow_open_gop: boolean,
          entropy_coder: String.t(),
          b_pyramid: boolean,
          b_frame_count: integer,
          frame_rate: float | :infinity | :negative_infinity | :nan,
          aq_strength: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :gop_mode,
    :codec,
    :profile,
    :tune,
    :preset,
    :height_pixels,
    :width_pixels,
    :pixel_format,
    :bitrate_bps,
    :rate_control_mode,
    :enable_two_pass,
    :crf_level,
    :vbv_size_bits,
    :vbv_fullness_bits,
    :allow_open_gop,
    :entropy_coder,
    :b_pyramid,
    :b_frame_count,
    :frame_rate,
    :aq_strength
  ]

  oneof :gop_mode, 0

  field :codec, 1, type: :string
  field :profile, 2, type: :string
  field :tune, 3, type: :string
  field :preset, 4, type: :string
  field :height_pixels, 5, type: :int32, json_name: "heightPixels"
  field :width_pixels, 6, type: :int32, json_name: "widthPixels"
  field :pixel_format, 7, type: :string, json_name: "pixelFormat"
  field :bitrate_bps, 8, type: :int32, json_name: "bitrateBps"
  field :rate_control_mode, 9, type: :string, json_name: "rateControlMode"
  field :enable_two_pass, 10, type: :bool, json_name: "enableTwoPass"
  field :crf_level, 11, type: :int32, json_name: "crfLevel"
  field :vbv_size_bits, 12, type: :int32, json_name: "vbvSizeBits"
  field :vbv_fullness_bits, 13, type: :int32, json_name: "vbvFullnessBits"
  field :allow_open_gop, 14, type: :bool, json_name: "allowOpenGop"
  field :gop_frame_count, 15, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 16, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :entropy_coder, 17, type: :string, json_name: "entropyCoder"
  field :b_pyramid, 18, type: :bool, json_name: "bPyramid"
  field :b_frame_count, 19, type: :int32, json_name: "bFrameCount"
  field :frame_rate, 20, type: :double, json_name: "frameRate"
  field :aq_strength, 21, type: :double, json_name: "aqStrength"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          track: integer,
          channel: integer,
          gain_db: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:key, :track, :channel, :gain_db]

  field :key, 1, type: :string
  field :track, 2, type: :int32
  field :channel, 3, type: :int32
  field :gain_db, 4, type: :double, json_name: "gainDb"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: [
            Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput.t()
          ]
        }

  defstruct [:inputs]

  field :inputs, 2,
    repeated: true,
    type:
      Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel.AudioChannelInput

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          channels: [Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel.t()]
        }

  defstruct [:key, :channels]

  field :key, 1, type: :string

  field :channels, 2,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.AudioChannel

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.AudioStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          bitrate_bps: integer,
          channel_count: integer,
          channel_layout: [String.t()],
          mapping: [Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom.t()],
          sample_rate_hertz: integer
        }

  defstruct [:codec, :bitrate_bps, :channel_count, :channel_layout, :mapping, :sample_rate_hertz]

  field :codec, 1, type: :string
  field :bitrate_bps, 2, type: :int32, json_name: "bitrateBps"
  field :channel_count, 3, type: :int32, json_name: "channelCount"
  field :channel_layout, 4, repeated: true, type: :string, json_name: "channelLayout"

  field :mapping, 5,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.AudioStream.AudioAtom

  field :sample_rate_hertz, 6, type: :int32, json_name: "sampleRateHertz"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom.TextInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          track: integer
        }

  defstruct [:key, :track]

  field :key, 1, type: :string
  field :track, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          inputs: [Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom.TextInput.t()]
        }

  defstruct [:key, :inputs]

  field :key, 1, type: :string

  field :inputs, 2,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom.TextInput

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.TextStream do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          codec: String.t(),
          language_code: String.t(),
          mapping: [Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom.t()]
        }

  defstruct [:codec, :language_code, :mapping]

  field :codec, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  field :mapping, 3,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1beta1.TextStream.TextAtom

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.SegmentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment_duration: Google.Protobuf.Duration.t() | nil,
          individual_segments: boolean
        }

  defstruct [:segment_duration, :individual_segments]

  field :segment_duration, 1, type: Google.Protobuf.Duration, json_name: "segmentDuration"
  field :individual_segments, 3, type: :bool, json_name: "individualSegments"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Encryption.Aes128Encryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_uri: String.t()
        }

  defstruct [:key_uri]

  field :key_uri, 1, type: :string, json_name: "keyUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Encryption.SampleAesEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_uri: String.t()
        }

  defstruct [:key_uri]

  field :key_uri, 1, type: :string, json_name: "keyUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Encryption.MpegCommonEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          scheme: String.t()
        }

  defstruct [:key_id, :scheme]

  field :key_id, 1, type: :string, json_name: "keyId"
  field :scheme, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Encryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_mode:
            {:aes_128,
             Google.Cloud.Video.Transcoder.V1beta1.Encryption.Aes128Encryption.t() | nil}
            | {:sample_aes,
               Google.Cloud.Video.Transcoder.V1beta1.Encryption.SampleAesEncryption.t() | nil}
            | {:mpeg_cenc,
               Google.Cloud.Video.Transcoder.V1beta1.Encryption.MpegCommonEncryption.t() | nil},
          key: String.t(),
          iv: String.t()
        }

  defstruct [:encryption_mode, :key, :iv]

  oneof :encryption_mode, 0

  field :key, 1, type: :string
  field :iv, 2, type: :string

  field :aes_128, 3,
    type: Google.Cloud.Video.Transcoder.V1beta1.Encryption.Aes128Encryption,
    json_name: "aes128",
    oneof: 0

  field :sample_aes, 4,
    type: Google.Cloud.Video.Transcoder.V1beta1.Encryption.SampleAesEncryption,
    json_name: "sampleAes",
    oneof: 0

  field :mpeg_cenc, 5,
    type: Google.Cloud.Video.Transcoder.V1beta1.Encryption.MpegCommonEncryption,
    json_name: "mpegCenc",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          analyzed: float | :infinity | :negative_infinity | :nan,
          encoded: float | :infinity | :negative_infinity | :nan,
          uploaded: float | :infinity | :negative_infinity | :nan,
          notified: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:analyzed, :encoded, :uploaded, :notified]

  field :analyzed, 1, type: :double
  field :encoded, 2, type: :double
  field :uploaded, 3, type: :double
  field :notified, 4, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Transcoder.V1beta1.FailureDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t()
        }

  defstruct [:description]

  field :description, 1, type: :string

  def transform_module(), do: nil
end
