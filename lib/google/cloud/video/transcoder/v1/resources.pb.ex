defmodule Google.Cloud.Video.Transcoder.V1.Job.ProcessingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Video.Transcoder.V1.Job.ProcessingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_MODE_UNSPECIFIED, 0
  field :PROCESSING_MODE_INTERACTIVE, 1
  field :PROCESSING_MODE_BATCH, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.Job.OptimizationStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPTIMIZATION_STRATEGY_UNSPECIFIED, 0
  field :AUTODETECT, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.Manifest.ManifestType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MANIFEST_TYPE_UNSPECIFIED, 0
  field :HLS, 1
  field :DASH, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.Manifest.DashConfig.SegmentReferenceScheme do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEGMENT_REFERENCE_SCHEME_UNSPECIFIED, 0
  field :SEGMENT_LIST, 1
  field :SEGMENT_TEMPLATE_NUMBER, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.Overlay.FadeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FADE_TYPE_UNSPECIFIED, 0
  field :FADE_IN, 1
  field :FADE_OUT, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.FrameRateConversionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FRAME_RATE_CONVERSION_STRATEGY_UNSPECIFIED, 0
  field :DOWNSAMPLE, 1
  field :DROP_DUPLICATE, 2
end

defmodule Google.Cloud.Video.Transcoder.V1.Job.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :labels, 16,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.Job.LabelsEntry,
    map: true

  field :error, 17, type: Google.Rpc.Status, deprecated: false
  field :mode, 20, type: Google.Cloud.Video.Transcoder.V1.Job.ProcessingMode, enum: true
  field :batch_mode_priority, 21, type: :int32, json_name: "batchModePriority"

  field :optimization, 22,
    type: Google.Cloud.Video.Transcoder.V1.Job.OptimizationStrategy,
    enum: true,
    deprecated: false

  field :fill_content_gaps, 25, type: :bool, json_name: "fillContentGaps", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.JobTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.JobTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Video.Transcoder.V1.JobConfig

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.JobTemplate.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Video.Transcoder.V1.JobConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :encryptions, 11, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Encryption
end

defmodule Google.Cloud.Video.Transcoder.V1.Input do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :uri, 2, type: :string

  field :preprocessing_config, 3,
    type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig,
    json_name: "preprocessingConfig"
end

defmodule Google.Cloud.Video.Transcoder.V1.Output do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.EditAtom do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :inputs, 2, repeated: true, type: :string
  field :end_time_offset, 3, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
  field :start_time_offset, 4, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end

defmodule Google.Cloud.Video.Transcoder.V1.AdBreak do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end

defmodule Google.Cloud.Video.Transcoder.V1.ElementaryStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Video.Transcoder.V1.MuxStream.Fmp4Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :codec_tag, 1, type: :string, json_name: "codecTag", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.MuxStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :container_config, 0

  field :key, 1, type: :string
  field :file_name, 2, type: :string, json_name: "fileName"
  field :container, 3, type: :string
  field :elementary_streams, 4, repeated: true, type: :string, json_name: "elementaryStreams"

  field :segment_settings, 5,
    type: Google.Cloud.Video.Transcoder.V1.SegmentSettings,
    json_name: "segmentSettings"

  field :encryption_id, 7, type: :string, json_name: "encryptionId"

  field :fmp4, 8,
    type: Google.Cloud.Video.Transcoder.V1.MuxStream.Fmp4Config,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.Manifest.DashConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment_reference_scheme, 1,
    type: Google.Cloud.Video.Transcoder.V1.Manifest.DashConfig.SegmentReferenceScheme,
    json_name: "segmentReferenceScheme",
    enum: true
end

defmodule Google.Cloud.Video.Transcoder.V1.Manifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :manifest_config, 0

  field :file_name, 1, type: :string, json_name: "fileName"

  field :type, 2,
    type: Google.Cloud.Video.Transcoder.V1.Manifest.ManifestType,
    enum: true,
    deprecated: false

  field :mux_streams, 3, repeated: true, type: :string, json_name: "muxStreams", deprecated: false
  field :dash, 4, type: Google.Cloud.Video.Transcoder.V1.Manifest.DashConfig, oneof: 0
end

defmodule Google.Cloud.Video.Transcoder.V1.PubsubDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.SpriteSheet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
end

defmodule Google.Cloud.Video.Transcoder.V1.Overlay.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :resolution, 2, type: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate
  field :alpha, 3, type: :double
end

defmodule Google.Cloud.Video.Transcoder.V1.Overlay.AnimationStatic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :xy, 1, type: Google.Cloud.Video.Transcoder.V1.Overlay.NormalizedCoordinate
  field :start_time_offset, 2, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end

defmodule Google.Cloud.Video.Transcoder.V1.Overlay.AnimationFade do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
end

defmodule Google.Cloud.Video.Transcoder.V1.Overlay.Animation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image, 1, type: Google.Cloud.Video.Transcoder.V1.Overlay.Image
  field :animations, 2, repeated: true, type: Google.Cloud.Video.Transcoder.V1.Overlay.Animation
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Color do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :saturation, 1, type: :double
  field :contrast, 2, type: :double
  field :brightness, 3, type: :double
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Denoise do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :strength, 1, type: :double
  field :tune, 2, type: :string
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deblock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :strength, 1, type: :double
  field :enabled, 2, type: :bool
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Audio do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lufs, 1, type: :double
  field :high_boost, 2, type: :bool, json_name: "highBoost"
  field :low_boost, 3, type: :bool, json_name: "lowBoost"
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Crop do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Pad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :top_pixels, 1, type: :int32, json_name: "topPixels"
  field :bottom_pixels, 2, type: :int32, json_name: "bottomPixels"
  field :left_pixels, 3, type: :int32, json_name: "leftPixels"
  field :right_pixels, 4, type: :int32, json_name: "rightPixels"
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace.YadifConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: :string
  field :disable_spatial_interlacing, 2, type: :bool, json_name: "disableSpatialInterlacing"
  field :parity, 3, type: :string
  field :deinterlace_all_frames, 4, type: :bool, json_name: "deinterlaceAllFrames"
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace.BwdifConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: :string
  field :parity, 2, type: :string
  field :deinterlace_all_frames, 3, type: :bool, json_name: "deinterlaceAllFrames"
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :deinterlacing_filter, 0

  field :yadif, 1,
    type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace.YadifConfig,
    oneof: 0

  field :bwdif, 2,
    type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace.BwdifConfig,
    oneof: 0
end

defmodule Google.Cloud.Video.Transcoder.V1.PreprocessingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :color, 1, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Color
  field :denoise, 2, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Denoise
  field :deblock, 3, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deblock
  field :audio, 4, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Audio
  field :crop, 5, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Crop
  field :pad, 6, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Pad
  field :deinterlace, 7, type: Google.Cloud.Video.Transcoder.V1.PreprocessingConfig.Deinterlace
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H264ColorFormatSDR do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H264ColorFormatHLG do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H264CodecSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :gop_mode, 0

  oneof :color_format, 1

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false

  field :frame_rate_conversion_strategy, 23,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.FrameRateConversionStrategy,
    json_name: "frameRateConversionStrategy",
    enum: true,
    deprecated: false

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

  field :sdr, 21,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.H264ColorFormatSDR,
    oneof: 1,
    deprecated: false

  field :hlg, 22,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.H264ColorFormatHLG,
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatSDR do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatHLG do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatHDR10 do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.H265CodecSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :gop_mode, 0

  oneof :color_format, 1

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false

  field :frame_rate_conversion_strategy, 23,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.FrameRateConversionStrategy,
    json_name: "frameRateConversionStrategy",
    enum: true,
    deprecated: false

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

  field :sdr, 20,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatSDR,
    oneof: 1,
    deprecated: false

  field :hlg, 21,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatHLG,
    oneof: 1,
    deprecated: false

  field :hdr10, 22,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.H265ColorFormatHDR10,
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9ColorFormatSDR do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9ColorFormatHLG do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9CodecSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :gop_mode, 0

  oneof :color_format, 1

  field :width_pixels, 1, type: :int32, json_name: "widthPixels"
  field :height_pixels, 2, type: :int32, json_name: "heightPixels"
  field :frame_rate, 3, type: :double, json_name: "frameRate", deprecated: false

  field :frame_rate_conversion_strategy, 13,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.FrameRateConversionStrategy,
    json_name: "frameRateConversionStrategy",
    enum: true,
    deprecated: false

  field :bitrate_bps, 4, type: :int32, json_name: "bitrateBps", deprecated: false
  field :pixel_format, 5, type: :string, json_name: "pixelFormat"
  field :rate_control_mode, 6, type: :string, json_name: "rateControlMode"
  field :crf_level, 7, type: :int32, json_name: "crfLevel"
  field :gop_frame_count, 8, type: :int32, json_name: "gopFrameCount", oneof: 0
  field :gop_duration, 9, type: Google.Protobuf.Duration, json_name: "gopDuration", oneof: 0
  field :profile, 10, type: :string

  field :sdr, 11,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9ColorFormatSDR,
    oneof: 1,
    deprecated: false

  field :hlg, 12,
    type: Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9ColorFormatHLG,
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.VideoStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :codec_settings, 0

  field :h264, 1, type: Google.Cloud.Video.Transcoder.V1.VideoStream.H264CodecSettings, oneof: 0
  field :h265, 2, type: Google.Cloud.Video.Transcoder.V1.VideoStream.H265CodecSettings, oneof: 0
  field :vp9, 3, type: Google.Cloud.Video.Transcoder.V1.VideoStream.Vp9CodecSettings, oneof: 0
end

defmodule Google.Cloud.Video.Transcoder.V1.AudioStream.AudioMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :atom_key, 1, type: :string, json_name: "atomKey", deprecated: false
  field :input_key, 2, type: :string, json_name: "inputKey", deprecated: false
  field :input_track, 3, type: :int32, json_name: "inputTrack", deprecated: false
  field :input_channel, 4, type: :int32, json_name: "inputChannel", deprecated: false
  field :output_channel, 5, type: :int32, json_name: "outputChannel", deprecated: false
  field :gain_db, 6, type: :double, json_name: "gainDb"
end

defmodule Google.Cloud.Video.Transcoder.V1.AudioStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :codec, 1, type: :string
  field :bitrate_bps, 2, type: :int32, json_name: "bitrateBps", deprecated: false
  field :channel_count, 3, type: :int32, json_name: "channelCount"
  field :channel_layout, 4, repeated: true, type: :string, json_name: "channelLayout"

  field :mapping, 5,
    repeated: true,
    type: Google.Cloud.Video.Transcoder.V1.AudioStream.AudioMapping

  field :sample_rate_hertz, 6, type: :int32, json_name: "sampleRateHertz"
  field :language_code, 7, type: :string, json_name: "languageCode"
  field :display_name, 8, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Video.Transcoder.V1.TextStream.TextMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :atom_key, 1, type: :string, json_name: "atomKey", deprecated: false
  field :input_key, 2, type: :string, json_name: "inputKey", deprecated: false
  field :input_track, 3, type: :int32, json_name: "inputTrack", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.TextStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :codec, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :mapping, 3, repeated: true, type: Google.Cloud.Video.Transcoder.V1.TextStream.TextMapping
  field :display_name, 4, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Video.Transcoder.V1.SegmentSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment_duration, 1, type: Google.Protobuf.Duration, json_name: "segmentDuration"
  field :individual_segments, 3, type: :bool, json_name: "individualSegments", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.Aes128Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.SampleAesEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.MpegCommonEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scheme, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.SecretManagerSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret_version, 1, type: :string, json_name: "secretVersion", deprecated: false
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.Widevine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.Fairplay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.Playready do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.Clearkey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption.DrmSystems do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :widevine, 1, type: Google.Cloud.Video.Transcoder.V1.Encryption.Widevine
  field :fairplay, 2, type: Google.Cloud.Video.Transcoder.V1.Encryption.Fairplay
  field :playready, 3, type: Google.Cloud.Video.Transcoder.V1.Encryption.Playready
  field :clearkey, 4, type: Google.Cloud.Video.Transcoder.V1.Encryption.Clearkey
end

defmodule Google.Cloud.Video.Transcoder.V1.Encryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :encryption_mode, 0

  oneof :secret_source, 1

  field :id, 6, type: :string, deprecated: false

  field :aes_128, 3,
    type: Google.Cloud.Video.Transcoder.V1.Encryption.Aes128Encryption,
    json_name: "aes128",
    oneof: 0

  field :sample_aes, 4,
    type: Google.Cloud.Video.Transcoder.V1.Encryption.SampleAesEncryption,
    json_name: "sampleAes",
    oneof: 0

  field :mpeg_cenc, 5,
    type: Google.Cloud.Video.Transcoder.V1.Encryption.MpegCommonEncryption,
    json_name: "mpegCenc",
    oneof: 0

  field :secret_manager_key_source, 7,
    type: Google.Cloud.Video.Transcoder.V1.Encryption.SecretManagerSource,
    json_name: "secretManagerKeySource",
    oneof: 1

  field :drm_systems, 8,
    type: Google.Cloud.Video.Transcoder.V1.Encryption.DrmSystems,
    json_name: "drmSystems",
    deprecated: false
end
