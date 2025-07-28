defmodule Google.Cloud.Videointelligence.V1.Feature do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FEATURE_UNSPECIFIED, 0
  field :LABEL_DETECTION, 1
  field :SHOT_CHANGE_DETECTION, 2
  field :EXPLICIT_CONTENT_DETECTION, 3
  field :FACE_DETECTION, 4
  field :SPEECH_TRANSCRIPTION, 6
  field :TEXT_DETECTION, 7
  field :OBJECT_TRACKING, 9
  field :LOGO_RECOGNITION, 12
  field :PERSON_DETECTION, 14
end

defmodule Google.Cloud.Videointelligence.V1.LabelDetectionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LABEL_DETECTION_MODE_UNSPECIFIED, 0
  field :SHOT_MODE, 1
  field :FRAME_MODE, 2
  field :SHOT_AND_FRAME_MODE, 3
end

defmodule Google.Cloud.Videointelligence.V1.Likelihood do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIKELIHOOD_UNSPECIFIED, 0
  field :VERY_UNLIKELY, 1
  field :UNLIKELY, 2
  field :POSSIBLE, 3
  field :LIKELY, 4
  field :VERY_LIKELY, 5
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :input_content, 6, type: :bytes, json_name: "inputContent"

  field :features, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.Feature,
    enum: true,
    deprecated: false

  field :video_context, 3,
    type: Google.Cloud.Videointelligence.V1.VideoContext,
    json_name: "videoContext"

  field :output_uri, 4, type: :string, json_name: "outputUri", deprecated: false
  field :location_id, 5, type: :string, json_name: "locationId", deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.VideoContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.VideoSegment

  field :label_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1.LabelDetectionConfig,
    json_name: "labelDetectionConfig"

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1.ShotChangeDetectionConfig,
    json_name: "shotChangeDetectionConfig"

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1.ExplicitContentDetectionConfig,
    json_name: "explicitContentDetectionConfig"

  field :face_detection_config, 5,
    type: Google.Cloud.Videointelligence.V1.FaceDetectionConfig,
    json_name: "faceDetectionConfig"

  field :speech_transcription_config, 6,
    type: Google.Cloud.Videointelligence.V1.SpeechTranscriptionConfig,
    json_name: "speechTranscriptionConfig"

  field :text_detection_config, 8,
    type: Google.Cloud.Videointelligence.V1.TextDetectionConfig,
    json_name: "textDetectionConfig"

  field :person_detection_config, 11,
    type: Google.Cloud.Videointelligence.V1.PersonDetectionConfig,
    json_name: "personDetectionConfig"

  field :object_tracking_config, 13,
    type: Google.Cloud.Videointelligence.V1.ObjectTrackingConfig,
    json_name: "objectTrackingConfig"
end

defmodule Google.Cloud.Videointelligence.V1.LabelDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1.LabelDetectionMode,
    json_name: "labelDetectionMode",
    enum: true

  field :stationary_camera, 2, type: :bool, json_name: "stationaryCamera"
  field :model, 3, type: :string
  field :frame_confidence_threshold, 4, type: :float, json_name: "frameConfidenceThreshold"
  field :video_confidence_threshold, 5, type: :float, json_name: "videoConfidenceThreshold"
end

defmodule Google.Cloud.Videointelligence.V1.ShotChangeDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.FaceDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
  field :include_bounding_boxes, 2, type: :bool, json_name: "includeBoundingBoxes"
  field :include_attributes, 5, type: :bool, json_name: "includeAttributes"
end

defmodule Google.Cloud.Videointelligence.V1.PersonDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :include_bounding_boxes, 1, type: :bool, json_name: "includeBoundingBoxes"
  field :include_pose_landmarks, 2, type: :bool, json_name: "includePoseLandmarks"
  field :include_attributes, 3, type: :bool, json_name: "includeAttributes"
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.TextDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
  field :model, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.VideoSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end

defmodule Google.Cloud.Videointelligence.V1.LabelSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.LabelFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :description, 2, type: :string
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Videointelligence.V1.LabelAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity

  field :category_entities, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.Entity,
    json_name: "categoryEntities"

  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1.LabelFrame
  field :version, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :pornography_likelihood, 2,
    type: Google.Cloud.Videointelligence.V1.Likelihood,
    json_name: "pornographyLikelihood",
    enum: true
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :frames, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.ExplicitContentFrame
  field :version, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedBoundingBox do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :left, 1, type: :float
  field :top, 2, type: :float
  field :right, 3, type: :float
  field :bottom, 4, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.FaceDetectionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tracks, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :thumbnail, 4, type: :bytes
  field :version, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.PersonDetectionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tracks, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :version, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.FaceSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1.FaceFrame do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :normalized_bounding_boxes, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBoxes"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end

defmodule Google.Cloud.Videointelligence.V1.FaceAnnotation do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :thumbnail, 1, type: :bytes
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.FaceSegment
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.FaceFrame
end

defmodule Google.Cloud.Videointelligence.V1.TimestampedObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :normalized_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.DetectedAttribute,
    deprecated: false

  field :landmarks, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.DetectedLandmark,
    deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.Track do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment

  field :timestamped_objects, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.TimestampedObject,
    json_name: "timestampedObjects"

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.DetectedAttribute,
    deprecated: false

  field :confidence, 4, type: :float, deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.DetectedAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :confidence, 2, type: :float
  field :value, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.DetectedLandmark do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :point, 2, type: Google.Cloud.Videointelligence.V1.NormalizedVertex
  field :confidence, 3, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.VideoAnnotationResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :segment, 10, type: Google.Cloud.Videointelligence.V1.VideoSegment

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation,
    json_name: "segmentLabelAnnotations"

  field :segment_presence_label_annotations, 23,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation,
    json_name: "segmentPresenceLabelAnnotations"

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation,
    json_name: "shotLabelAnnotations"

  field :shot_presence_label_annotations, 24,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation,
    json_name: "shotPresenceLabelAnnotations"

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation,
    json_name: "frameLabelAnnotations"

  field :face_annotations, 5,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.FaceAnnotation,
    json_name: "faceAnnotations",
    deprecated: true

  field :face_detection_annotations, 13,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.FaceDetectionAnnotation,
    json_name: "faceDetectionAnnotations"

  field :shot_annotations, 6,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.VideoSegment,
    json_name: "shotAnnotations"

  field :explicit_annotation, 7,
    type: Google.Cloud.Videointelligence.V1.ExplicitContentAnnotation,
    json_name: "explicitAnnotation"

  field :speech_transcriptions, 11,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.SpeechTranscription,
    json_name: "speechTranscriptions"

  field :text_annotations, 12,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.TextAnnotation,
    json_name: "textAnnotations"

  field :object_annotations, 14,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.ObjectTrackingAnnotation,
    json_name: "objectAnnotations"

  field :logo_recognition_annotations, 19,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LogoRecognitionAnnotation,
    json_name: "logoRecognitionAnnotations"

  field :person_detection_annotations, 20,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.PersonDetectionAnnotation,
    json_name: "personDetectionAnnotations"

  field :error, 9, type: Google.Rpc.Status
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.VideoAnnotationResults,
    json_name: "annotationResults"
end

defmodule Google.Cloud.Videointelligence.V1.VideoAnnotationProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :progress_percent, 2, type: :int32, json_name: "progressPercent"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :feature, 5, type: Google.Cloud.Videointelligence.V1.Feature, enum: true
  field :segment, 6, type: Google.Cloud.Videointelligence.V1.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.VideoAnnotationProgress,
    json_name: "annotationProgress"
end

defmodule Google.Cloud.Videointelligence.V1.SpeechTranscriptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
  field :max_alternatives, 2, type: :int32, json_name: "maxAlternatives", deprecated: false
  field :filter_profanity, 3, type: :bool, json_name: "filterProfanity", deprecated: false

  field :speech_contexts, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.SpeechContext,
    json_name: "speechContexts",
    deprecated: false

  field :enable_automatic_punctuation, 5,
    type: :bool,
    json_name: "enableAutomaticPunctuation",
    deprecated: false

  field :audio_tracks, 6,
    repeated: true,
    type: :int32,
    json_name: "audioTracks",
    deprecated: false

  field :enable_speaker_diarization, 7,
    type: :bool,
    json_name: "enableSpeakerDiarization",
    deprecated: false

  field :diarization_speaker_count, 8,
    type: :int32,
    json_name: "diarizationSpeakerCount",
    deprecated: false

  field :enable_word_confidence, 9,
    type: :bool,
    json_name: "enableWordConfidence",
    deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.SpeechContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :phrases, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.SpeechTranscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.SpeechRecognitionAlternative

  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.SpeechRecognitionAlternative do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float, deprecated: false

  field :words, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.WordInfo,
    deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.WordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Duration, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Duration, json_name: "endTime"
  field :word, 3, type: :string
  field :confidence, 4, type: :float, deprecated: false
  field :speaker_tag, 5, type: :int32, json_name: "speakerTag", deprecated: false
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedVertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedBoundingPoly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vertices, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.NormalizedVertex
end

defmodule Google.Cloud.Videointelligence.V1.TextSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :confidence, 2, type: :float
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.TextFrame
end

defmodule Google.Cloud.Videointelligence.V1.TextFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rotated_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1.NormalizedBoundingPoly,
    json_name: "rotatedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end

defmodule Google.Cloud.Videointelligence.V1.TextAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.TextSegment
  field :version, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingFrame do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :normalized_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :track_info, 0

  field :segment, 3, type: Google.Cloud.Videointelligence.V1.VideoSegment, oneof: 0
  field :track_id, 5, type: :int64, json_name: "trackId", oneof: 0
  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity
  field :confidence, 4, type: :float
  field :frames, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.ObjectTrackingFrame
  field :version, 6, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.LogoRecognitionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity
  field :tracks, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1.VideoIntelligenceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.videointelligence.v1.VideoIntelligenceService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :AnnotateVideo,
      Google.Cloud.Videointelligence.V1.AnnotateVideoRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Videointelligence.V1.VideoIntelligenceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Videointelligence.V1.VideoIntelligenceService.Service
end
