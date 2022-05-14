defmodule Google.Cloud.Videointelligence.V1p2beta1.Feature do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :FEATURE_UNSPECIFIED, 0
  field :LABEL_DETECTION, 1
  field :SHOT_CHANGE_DETECTION, 2
  field :EXPLICIT_CONTENT_DETECTION, 3
  field :TEXT_DETECTION, 7
  field :OBJECT_TRACKING, 9
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.LabelDetectionMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LABEL_DETECTION_MODE_UNSPECIFIED, 0
  field :SHOT_MODE, 1
  field :FRAME_MODE, 2
  field :SHOT_AND_FRAME_MODE, 3
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.Likelihood do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LIKELIHOOD_UNSPECIFIED, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.AnnotateVideoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :input_content, 6, type: :bytes, json_name: "inputContent"

  field :features, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.Feature,
    enum: true,
    deprecated: false

  field :video_context, 3,
    type: Google.Cloud.Videointelligence.V1p2beta1.VideoContext,
    json_name: "videoContext"

  field :output_uri, 4, type: :string, json_name: "outputUri", deprecated: false
  field :location_id, 5, type: :string, json_name: "locationId", deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1p2beta1.VideoSegment

  field :label_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1p2beta1.LabelDetectionConfig,
    json_name: "labelDetectionConfig"

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1p2beta1.ShotChangeDetectionConfig,
    json_name: "shotChangeDetectionConfig"

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentDetectionConfig,
    json_name: "explicitContentDetectionConfig"

  field :text_detection_config, 8,
    type: Google.Cloud.Videointelligence.V1p2beta1.TextDetectionConfig,
    json_name: "textDetectionConfig"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.LabelDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1p2beta1.LabelDetectionMode,
    json_name: "labelDetectionMode",
    enum: true

  field :stationary_camera, 2, type: :bool, json_name: "stationaryCamera"
  field :model, 3, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :model, 1, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :model, 1, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.TextDetectionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoSegment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.LabelSegment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p2beta1.VideoSegment
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.LabelFrame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.Entity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :description, 2, type: :string
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.LabelAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity, 1, type: Google.Cloud.Videointelligence.V1p2beta1.Entity

  field :category_entities, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.Entity,
    json_name: "categoryEntities"

  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p2beta1.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1p2beta1.LabelFrame
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentFrame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :pornography_likelihood, 2,
    type: Google.Cloud.Videointelligence.V1p2beta1.Likelihood,
    json_name: "pornographyLikelihood",
    enum: true
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :frames, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentFrame
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.NormalizedBoundingBox do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :left, 1, type: :float
  field :top, 2, type: :float
  field :right, 3, type: :float
  field :bottom, 4, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoAnnotationResults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.LabelAnnotation,
    json_name: "segmentLabelAnnotations"

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.LabelAnnotation,
    json_name: "shotLabelAnnotations"

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.LabelAnnotation,
    json_name: "frameLabelAnnotations"

  field :shot_annotations, 6,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.VideoSegment,
    json_name: "shotAnnotations"

  field :explicit_annotation, 7,
    type: Google.Cloud.Videointelligence.V1p2beta1.ExplicitContentAnnotation,
    json_name: "explicitAnnotation"

  field :text_annotations, 12,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.TextAnnotation,
    json_name: "textAnnotations"

  field :object_annotations, 14,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.ObjectTrackingAnnotation,
    json_name: "objectAnnotations"

  field :error, 9, type: Google.Rpc.Status
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.AnnotateVideoResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.VideoAnnotationResults,
    json_name: "annotationResults"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoAnnotationProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :progress_percent, 2, type: :int32, json_name: "progressPercent"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.AnnotateVideoProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.VideoAnnotationProgress,
    json_name: "annotationProgress"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.NormalizedVertex do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.NormalizedBoundingPoly do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :vertices, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.NormalizedVertex
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.TextSegment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p2beta1.VideoSegment
  field :confidence, 2, type: :float
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p2beta1.TextFrame
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.TextFrame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :rotated_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1p2beta1.NormalizedBoundingPoly,
    json_name: "rotatedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.TextAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :text, 1, type: :string
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1p2beta1.TextSegment
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ObjectTrackingFrame do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :normalized_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1p2beta1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.ObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :track_info, 0

  field :segment, 3, type: Google.Cloud.Videointelligence.V1p2beta1.VideoSegment, oneof: 0
  field :track_id, 5, type: :int64, json_name: "trackId", oneof: 0
  field :entity, 1, type: Google.Cloud.Videointelligence.V1p2beta1.Entity
  field :confidence, 4, type: :float

  field :frames, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p2beta1.ObjectTrackingFrame
end
defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoIntelligenceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.videointelligence.v1p2beta1.VideoIntelligenceService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :AnnotateVideo,
      Google.Cloud.Videointelligence.V1p2beta1.AnnotateVideoRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Videointelligence.V1p2beta1.VideoIntelligenceService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Videointelligence.V1p2beta1.VideoIntelligenceService.Service
end
