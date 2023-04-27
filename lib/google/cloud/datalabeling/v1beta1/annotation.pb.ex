defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANNOTATION_SOURCE_UNSPECIFIED, 0
  field :OPERATOR, 3
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationSentiment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANNOTATION_SENTIMENT_UNSPECIFIED, 0
  field :NEGATIVE, 1
  field :POSITIVE, 2
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANNOTATION_TYPE_UNSPECIFIED, 0
  field :IMAGE_CLASSIFICATION_ANNOTATION, 1
  field :IMAGE_BOUNDING_BOX_ANNOTATION, 2
  field :IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION, 13
  field :IMAGE_BOUNDING_POLY_ANNOTATION, 10
  field :IMAGE_POLYLINE_ANNOTATION, 11
  field :IMAGE_SEGMENTATION_ANNOTATION, 12
  field :VIDEO_SHOTS_CLASSIFICATION_ANNOTATION, 3
  field :VIDEO_OBJECT_TRACKING_ANNOTATION, 4
  field :VIDEO_OBJECT_DETECTION_ANNOTATION, 5
  field :VIDEO_EVENT_ANNOTATION, 6
  field :TEXT_CLASSIFICATION_ANNOTATION, 8
  field :TEXT_ENTITY_EXTRACTION_ANNOTATION, 9
  field :GENERAL_CLASSIFICATION_ANNOTATION, 14
end

defmodule Google.Cloud.Datalabeling.V1beta1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :annotation_source, 2,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSource,
    json_name: "annotationSource",
    enum: true

  field :annotation_value, 3,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationValue,
    json_name: "annotationValue"

  field :annotation_metadata, 4,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationMetadata,
    json_name: "annotationMetadata"

  field :annotation_sentiment, 6,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSentiment,
    json_name: "annotationSentiment",
    enum: true
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value_type, 0

  field :image_classification_annotation, 1,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationAnnotation,
    json_name: "imageClassificationAnnotation",
    oneof: 0

  field :image_bounding_poly_annotation, 2,
    type: Google.Cloud.Datalabeling.V1beta1.ImageBoundingPolyAnnotation,
    json_name: "imageBoundingPolyAnnotation",
    oneof: 0

  field :image_polyline_annotation, 8,
    type: Google.Cloud.Datalabeling.V1beta1.ImagePolylineAnnotation,
    json_name: "imagePolylineAnnotation",
    oneof: 0

  field :image_segmentation_annotation, 9,
    type: Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation,
    json_name: "imageSegmentationAnnotation",
    oneof: 0

  field :text_classification_annotation, 3,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationAnnotation,
    json_name: "textClassificationAnnotation",
    oneof: 0

  field :text_entity_extraction_annotation, 10,
    type: Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionAnnotation,
    json_name: "textEntityExtractionAnnotation",
    oneof: 0

  field :video_classification_annotation, 4,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationAnnotation,
    json_name: "videoClassificationAnnotation",
    oneof: 0

  field :video_object_tracking_annotation, 5,
    type: Google.Cloud.Datalabeling.V1beta1.VideoObjectTrackingAnnotation,
    json_name: "videoObjectTrackingAnnotation",
    oneof: 0

  field :video_event_annotation, 6,
    type: Google.Cloud.Datalabeling.V1beta1.VideoEventAnnotation,
    json_name: "videoEventAnnotation",
    oneof: 0
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageClassificationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"
end

defmodule Google.Cloud.Datalabeling.V1beta1.Vertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :x, 1, type: :int32
  field :y, 2, type: :int32
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedVertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingPoly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vertices, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Vertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedVertex,
    json_name: "normalizedVertices"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageBoundingPolyAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :bounded_area, 0

  field :bounding_poly, 2,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPoly,
    json_name: "boundingPoly",
    oneof: 0

  field :normalized_bounding_poly, 3,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly,
    json_name: "normalizedBoundingPoly",
    oneof: 0

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"
end

defmodule Google.Cloud.Datalabeling.V1beta1.Polyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vertices, 1, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Vertex
end

defmodule Google.Cloud.Datalabeling.V1beta1.NormalizedPolyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedVertex,
    json_name: "normalizedVertices"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImagePolylineAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :poly, 0

  field :polyline, 2, type: Google.Cloud.Datalabeling.V1beta1.Polyline, oneof: 0

  field :normalized_polyline, 3,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedPolyline,
    json_name: "normalizedPolyline",
    oneof: 0

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation.AnnotationColorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_colors, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ImageSegmentationAnnotation.AnnotationColorsEntry,
    json_name: "annotationColors",
    map: true

  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :image_bytes, 3, type: :bytes, json_name: "imageBytes"
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextClassificationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :sequential_segment, 2,
    type: Google.Cloud.Datalabeling.V1beta1.SequentialSegment,
    json_name: "sequentialSegment"
end

defmodule Google.Cloud.Datalabeling.V1beta1.SequentialSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: :int32
  field :end, 2, type: :int32
end

defmodule Google.Cloud.Datalabeling.V1beta1.TimeSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_segment, 1,
    type: Google.Cloud.Datalabeling.V1beta1.TimeSegment,
    json_name: "timeSegment"

  field :annotation_spec, 2,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectTrackingFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :bounded_area, 0

  field :bounding_poly, 1,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPoly,
    json_name: "boundingPoly",
    oneof: 0

  field :normalized_bounding_poly, 2,
    type: Google.Cloud.Datalabeling.V1beta1.NormalizedBoundingPoly,
    json_name: "normalizedBoundingPoly",
    oneof: 0

  field :time_offset, 3, type: Google.Protobuf.Duration, json_name: "timeOffset"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoObjectTrackingAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :time_segment, 2,
    type: Google.Cloud.Datalabeling.V1beta1.TimeSegment,
    json_name: "timeSegment"

  field :object_tracking_frames, 3,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.ObjectTrackingFrame,
    json_name: "objectTrackingFrames"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoEventAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec, 1,
    type: Google.Cloud.Datalabeling.V1beta1.AnnotationSpec,
    json_name: "annotationSpec"

  field :time_segment, 2,
    type: Google.Cloud.Datalabeling.V1beta1.TimeSegment,
    json_name: "timeSegment"
end

defmodule Google.Cloud.Datalabeling.V1beta1.AnnotationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operator_metadata, 2,
    type: Google.Cloud.Datalabeling.V1beta1.OperatorMetadata,
    json_name: "operatorMetadata"
end

defmodule Google.Cloud.Datalabeling.V1beta1.OperatorMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, type: :float
  field :total_votes, 2, type: :int32, json_name: "totalVotes"
  field :label_votes, 3, type: :int32, json_name: "labelVotes"
  field :comments, 4, repeated: true, type: :string
end