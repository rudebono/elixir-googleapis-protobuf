defmodule Google.Cloud.Visionai.V1.StreamAnnotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STREAM_ANNOTATION_TYPE_UNSPECIFIED, 0
  field :STREAM_ANNOTATION_TYPE_ACTIVE_ZONE, 1
  field :STREAM_ANNOTATION_TYPE_CROSSING_LINE, 2
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PersonEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :person_entity_id, 1, type: :int64, json_name: "personEntityId"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PPEEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ppe_label_id, 1, type: :int64, json_name: "ppeLabelId"
  field :ppe_label_string, 2, type: :string, json_name: "ppeLabelString"

  field :ppe_supercategory_label_string, 3,
    type: :string,
    json_name: "ppeSupercategoryLabelString"

  field :ppe_entity_id, 4, type: :int64, json_name: "ppeEntityId"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.NormalizedBoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :xmin, 1, type: :float
  field :ymin, 2, type: :float
  field :width, 3, type: :float
  field :height, 4, type: :float
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PersonIdentifiedBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :box_id, 1, type: :int64, json_name: "boxId"

  field :normalized_bounding_box, 2,
    type:
      Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :confidence_score, 3, type: :float, json_name: "confidenceScore"

  field :person_entity, 4,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PersonEntity,
    json_name: "personEntity"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PPEIdentifiedBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :box_id, 1, type: :int64, json_name: "boxId"

  field :normalized_bounding_box, 2,
    type:
      Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :confidence_score, 3, type: :float, json_name: "confidenceScore"

  field :ppe_entity, 4,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PPEEntity,
    json_name: "ppeEntity"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.DetectedPerson do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :person_id, 1, type: :int64, json_name: "personId"

  field :detected_person_identified_box, 2,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PersonIdentifiedBox,
    json_name: "detectedPersonIdentifiedBox"

  field :detected_ppe_identified_boxes, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.PPEIdentifiedBox,
    json_name: "detectedPpeIdentifiedBoxes"

  field :face_coverage_score, 4,
    proto3_optional: true,
    type: :float,
    json_name: "faceCoverageScore"

  field :eyes_coverage_score, 5,
    proto3_optional: true,
    type: :float,
    json_name: "eyesCoverageScore"

  field :head_coverage_score, 6,
    proto3_optional: true,
    type: :float,
    json_name: "headCoverageScore"

  field :hands_coverage_score, 7,
    proto3_optional: true,
    type: :float,
    json_name: "handsCoverageScore"

  field :body_coverage_score, 8,
    proto3_optional: true,
    type: :float,
    json_name: "bodyCoverageScore"

  field :feet_coverage_score, 9,
    proto3_optional: true,
    type: :float,
    json_name: "feetCoverageScore"
end

defmodule Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_time, 1, type: Google.Protobuf.Timestamp, json_name: "currentTime"

  field :detected_persons, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.PersonalProtectiveEquipmentDetectionOutput.DetectedPerson,
    json_name: "detectedPersons"
end

defmodule Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :label_id, 1, type: :int64, json_name: "labelId"
  field :label_string, 2, type: :string, json_name: "labelString"
end

defmodule Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.IdentifiedBox.NormalizedBoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :xmin, 1, type: :float
  field :ymin, 2, type: :float
  field :width, 3, type: :float
  field :height, 4, type: :float
end

defmodule Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.IdentifiedBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :box_id, 1, type: :int64, json_name: "boxId"

  field :normalized_bounding_box, 2,
    type:
      Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.IdentifiedBox.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :confidence_score, 3, type: :float, json_name: "confidenceScore"
  field :entity, 4, type: Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.Entity
end

defmodule Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_time, 1, type: Google.Protobuf.Timestamp, json_name: "currentTime"

  field :identified_boxes, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.ObjectDetectionPredictionResult.IdentifiedBox,
    json_name: "identifiedBoxes"
end

defmodule Google.Cloud.Visionai.V1.ImageObjectDetectionPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string, json_name: "displayNames"
  field :confidences, 3, repeated: true, type: :float
  field :bboxes, 4, repeated: true, type: Google.Protobuf.ListValue
end

defmodule Google.Cloud.Visionai.V1.ClassificationPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ids, 1, repeated: true, type: :int64
  field :display_names, 2, repeated: true, type: :string, json_name: "displayNames"
  field :confidences, 3, repeated: true, type: :float
end

defmodule Google.Cloud.Visionai.V1.ImageSegmentationPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :category_mask, 1, type: :string, json_name: "categoryMask"
  field :confidence_mask, 2, type: :string, json_name: "confidenceMask"
end

defmodule Google.Cloud.Visionai.V1.VideoActionRecognitionPredictionResult.IdentifiedAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :confidence, 3, type: :float
end

defmodule Google.Cloud.Visionai.V1.VideoActionRecognitionPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segment_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "segmentStartTime"
  field :segment_end_time, 2, type: Google.Protobuf.Timestamp, json_name: "segmentEndTime"

  field :actions, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.VideoActionRecognitionPredictionResult.IdentifiedAction
end

defmodule Google.Cloud.Visionai.V1.VideoObjectTrackingPredictionResult.BoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :x_min, 1, type: :float, json_name: "xMin"
  field :x_max, 2, type: :float, json_name: "xMax"
  field :y_min, 3, type: :float, json_name: "yMin"
  field :y_max, 4, type: :float, json_name: "yMax"
end

defmodule Google.Cloud.Visionai.V1.VideoObjectTrackingPredictionResult.DetectedObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :bounding_box, 3,
    type: Google.Cloud.Visionai.V1.VideoObjectTrackingPredictionResult.BoundingBox,
    json_name: "boundingBox"

  field :confidence, 4, type: :float
  field :track_id, 5, type: :int64, json_name: "trackId"
end

defmodule Google.Cloud.Visionai.V1.VideoObjectTrackingPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segment_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "segmentStartTime"
  field :segment_end_time, 2, type: Google.Protobuf.Timestamp, json_name: "segmentEndTime"

  field :objects, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.VideoObjectTrackingPredictionResult.DetectedObject
end

defmodule Google.Cloud.Visionai.V1.VideoClassificationPredictionResult.IdentifiedClassification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :confidence, 3, type: :float
end

defmodule Google.Cloud.Visionai.V1.VideoClassificationPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :segment_start_time, 1, type: Google.Protobuf.Timestamp, json_name: "segmentStartTime"
  field :segment_end_time, 2, type: Google.Protobuf.Timestamp, json_name: "segmentEndTime"

  field :classifications, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.VideoClassificationPredictionResult.IdentifiedClassification
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :label_id, 1, type: :int64, json_name: "labelId"
  field :label_string, 2, type: :string, json_name: "labelString"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.IdentifiedBox.NormalizedBoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :xmin, 1, type: :float
  field :ymin, 2, type: :float
  field :width, 3, type: :float
  field :height, 4, type: :float
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.IdentifiedBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :box_id, 1, type: :int64, json_name: "boxId"

  field :normalized_bounding_box, 2,
    type:
      Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.IdentifiedBox.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :score, 3, type: :float
  field :entity, 4, type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Entity
  field :track_id, 5, type: :int64, json_name: "trackId"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity, 1, type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Entity
  field :count, 2, type: :int32
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.AccumulatedObjectCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :object_count, 2,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount,
    json_name: "objectCount"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.CrossingLineCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotation, 1, type: Google.Cloud.Visionai.V1.StreamAnnotation

  field :positive_direction_counts, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount,
    json_name: "positiveDirectionCounts"

  field :negative_direction_counts, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount,
    json_name: "negativeDirectionCounts"

  field :accumulated_positive_direction_counts, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.AccumulatedObjectCount,
    json_name: "accumulatedPositiveDirectionCounts"

  field :accumulated_negative_direction_counts, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.AccumulatedObjectCount,
    json_name: "accumulatedNegativeDirectionCounts"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ActiveZoneCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotation, 1, type: Google.Cloud.Visionai.V1.StreamAnnotation

  field :counts, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :full_frame_count, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ObjectCount,
    json_name: "fullFrameCount"

  field :crossing_line_counts, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.CrossingLineCount,
    json_name: "crossingLineCounts"

  field :active_zone_counts, 3,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats.ActiveZoneCount,
    json_name: "activeZoneCounts"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.TrackInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.DwellTimeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
  field :zone_id, 2, type: :string, json_name: "zoneId"
  field :dwell_start_time, 3, type: Google.Protobuf.Timestamp, json_name: "dwellStartTime"
  field :dwell_end_time, 4, type: Google.Protobuf.Timestamp, json_name: "dwellEndTime"
end

defmodule Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :current_time, 1, type: Google.Protobuf.Timestamp, json_name: "currentTime"

  field :identified_boxes, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.IdentifiedBox,
    json_name: "identifiedBoxes"

  field :stats, 3, type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.Stats

  field :track_info, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.TrackInfo,
    json_name: "trackInfo"

  field :dwell_time_info, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1.OccupancyCountingPredictionResult.DwellTimeInfo,
    json_name: "dwellTimeInfo"

  field :pts, 6, proto3_optional: true, type: :int64
end

defmodule Google.Cloud.Visionai.V1.StreamAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :annotation_payload, 0

  field :active_zone, 5,
    type: Google.Cloud.Visionai.V1.NormalizedPolygon,
    json_name: "activeZone",
    oneof: 0

  field :crossing_line, 6,
    type: Google.Cloud.Visionai.V1.NormalizedPolyline,
    json_name: "crossingLine",
    oneof: 0

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :source_stream, 3, type: :string, json_name: "sourceStream"
  field :type, 4, type: Google.Cloud.Visionai.V1.StreamAnnotationType, enum: true
end

defmodule Google.Cloud.Visionai.V1.StreamAnnotations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stream_annotations, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.StreamAnnotation,
    json_name: "streamAnnotations"
end

defmodule Google.Cloud.Visionai.V1.NormalizedPolygon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.NormalizedVertex,
    json_name: "normalizedVertices"
end

defmodule Google.Cloud.Visionai.V1.NormalizedPolyline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :normalized_vertices, 1,
    repeated: true,
    type: Google.Cloud.Visionai.V1.NormalizedVertex,
    json_name: "normalizedVertices"
end

defmodule Google.Cloud.Visionai.V1.NormalizedVertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Visionai.V1.AppPlatformMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :application, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :node, 3, type: :string
  field :processor, 4, type: :string
end

defmodule Google.Cloud.Visionai.V1.AppPlatformCloudFunctionRequest.StructedInputAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ingestion_time_micros, 1, type: :int64, json_name: "ingestionTimeMicros"
  field :annotation, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Visionai.V1.AppPlatformCloudFunctionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :app_platform_metadata, 1,
    type: Google.Cloud.Visionai.V1.AppPlatformMetadata,
    json_name: "appPlatformMetadata"

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AppPlatformCloudFunctionRequest.StructedInputAnnotation
end

defmodule Google.Cloud.Visionai.V1.AppPlatformCloudFunctionResponse.StructedOutputAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotation, 1, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Visionai.V1.AppPlatformCloudFunctionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :annotations, 2,
    repeated: true,
    type: Google.Cloud.Visionai.V1.AppPlatformCloudFunctionResponse.StructedOutputAnnotation

  field :annotation_passthrough, 3, type: :bool, json_name: "annotationPassthrough"
  field :events, 4, repeated: true, type: Google.Cloud.Visionai.V1.AppPlatformEventBody
end

defmodule Google.Cloud.Visionai.V1.AppPlatformEventBody do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_message, 1, type: :string, json_name: "eventMessage"
  field :payload, 2, type: Google.Protobuf.Struct
  field :event_id, 3, type: :string, json_name: "eventId"
end
