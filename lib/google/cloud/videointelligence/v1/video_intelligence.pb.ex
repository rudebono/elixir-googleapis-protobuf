defmodule Google.Cloud.Videointelligence.V1.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :LABEL_DETECTION
          | :SHOT_CHANGE_DETECTION
          | :EXPLICIT_CONTENT_DETECTION
          | :FACE_DETECTION
          | :SPEECH_TRANSCRIPTION
          | :TEXT_DETECTION
          | :OBJECT_TRACKING
          | :LOGO_RECOGNITION
          | :PERSON_DETECTION

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LABEL_DETECTION_MODE_UNSPECIFIED
          | :SHOT_MODE
          | :FRAME_MODE
          | :SHOT_AND_FRAME_MODE

  field :LABEL_DETECTION_MODE_UNSPECIFIED, 0

  field :SHOT_MODE, 1

  field :FRAME_MODE, 2

  field :SHOT_AND_FRAME_MODE, 3
end

defmodule Google.Cloud.Videointelligence.V1.Likelihood do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LIKELIHOOD_UNSPECIFIED
          | :VERY_UNLIKELY
          | :UNLIKELY
          | :POSSIBLE
          | :LIKELY
          | :VERY_LIKELY

  field :LIKELIHOOD_UNSPECIFIED, 0

  field :VERY_UNLIKELY, 1

  field :UNLIKELY, 2

  field :POSSIBLE, 3

  field :LIKELY, 4

  field :VERY_LIKELY, 5
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          input_content: binary,
          features: [[Google.Cloud.Videointelligence.V1.Feature.t()]],
          video_context: Google.Cloud.Videointelligence.V1.VideoContext.t() | nil,
          output_uri: String.t(),
          location_id: String.t()
        }

  defstruct [:input_uri, :input_content, :features, :video_context, :output_uri, :location_id]

  field :input_uri, 1, type: :string
  field :input_content, 6, type: :bytes
  field :features, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.Feature, enum: true
  field :video_context, 3, type: Google.Cloud.Videointelligence.V1.VideoContext
  field :output_uri, 4, type: :string
  field :location_id, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.VideoContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Videointelligence.V1.VideoSegment.t()],
          label_detection_config:
            Google.Cloud.Videointelligence.V1.LabelDetectionConfig.t() | nil,
          shot_change_detection_config:
            Google.Cloud.Videointelligence.V1.ShotChangeDetectionConfig.t() | nil,
          explicit_content_detection_config:
            Google.Cloud.Videointelligence.V1.ExplicitContentDetectionConfig.t() | nil,
          face_detection_config: Google.Cloud.Videointelligence.V1.FaceDetectionConfig.t() | nil,
          speech_transcription_config:
            Google.Cloud.Videointelligence.V1.SpeechTranscriptionConfig.t() | nil,
          text_detection_config: Google.Cloud.Videointelligence.V1.TextDetectionConfig.t() | nil,
          person_detection_config:
            Google.Cloud.Videointelligence.V1.PersonDetectionConfig.t() | nil,
          object_tracking_config: Google.Cloud.Videointelligence.V1.ObjectTrackingConfig.t() | nil
        }

  defstruct [
    :segments,
    :label_detection_config,
    :shot_change_detection_config,
    :explicit_content_detection_config,
    :face_detection_config,
    :speech_transcription_config,
    :text_detection_config,
    :person_detection_config,
    :object_tracking_config
  ]

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :label_detection_config, 2, type: Google.Cloud.Videointelligence.V1.LabelDetectionConfig

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1.ShotChangeDetectionConfig

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1.ExplicitContentDetectionConfig

  field :face_detection_config, 5, type: Google.Cloud.Videointelligence.V1.FaceDetectionConfig

  field :speech_transcription_config, 6,
    type: Google.Cloud.Videointelligence.V1.SpeechTranscriptionConfig

  field :text_detection_config, 8, type: Google.Cloud.Videointelligence.V1.TextDetectionConfig

  field :person_detection_config, 11,
    type: Google.Cloud.Videointelligence.V1.PersonDetectionConfig

  field :object_tracking_config, 13, type: Google.Cloud.Videointelligence.V1.ObjectTrackingConfig
end

defmodule Google.Cloud.Videointelligence.V1.LabelDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_detection_mode: Google.Cloud.Videointelligence.V1.LabelDetectionMode.t(),
          stationary_camera: boolean,
          model: String.t(),
          frame_confidence_threshold: float | :infinity | :negative_infinity | :nan,
          video_confidence_threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :label_detection_mode,
    :stationary_camera,
    :model,
    :frame_confidence_threshold,
    :video_confidence_threshold
  ]

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1.LabelDetectionMode,
    enum: true

  field :stationary_camera, 2, type: :bool
  field :model, 3, type: :string
  field :frame_confidence_threshold, 4, type: :float
  field :video_confidence_threshold, 5, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.ShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.FaceDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          include_bounding_boxes: boolean,
          include_attributes: boolean
        }

  defstruct [:model, :include_bounding_boxes, :include_attributes]

  field :model, 1, type: :string
  field :include_bounding_boxes, 2, type: :bool
  field :include_attributes, 5, type: :bool
end

defmodule Google.Cloud.Videointelligence.V1.PersonDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_bounding_boxes: boolean,
          include_pose_landmarks: boolean,
          include_attributes: boolean
        }

  defstruct [:include_bounding_boxes, :include_pose_landmarks, :include_attributes]

  field :include_bounding_boxes, 1, type: :bool
  field :include_pose_landmarks, 2, type: :bool
  field :include_attributes, 3, type: :bool
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.TextDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_hints: [String.t()],
          model: String.t()
        }

  defstruct [:language_hints, :model]

  field :language_hints, 1, repeated: true, type: :string
  field :model, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.VideoSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time_offset, :end_time_offset]

  field :start_time_offset, 1, type: Google.Protobuf.Duration
  field :end_time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Videointelligence.V1.LabelSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:segment, :confidence]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.LabelFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:time_offset, :confidence]

  field :time_offset, 1, type: Google.Protobuf.Duration
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          description: String.t(),
          language_code: String.t()
        }

  defstruct [:entity_id, :description, :language_code]

  field :entity_id, 1, type: :string
  field :description, 2, type: :string
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.LabelAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1.Entity.t() | nil,
          category_entities: [Google.Cloud.Videointelligence.V1.Entity.t()],
          segments: [Google.Cloud.Videointelligence.V1.LabelSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1.LabelFrame.t()],
          version: String.t()
        }

  defstruct [:entity, :category_entities, :segments, :frames, :version]

  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity
  field :category_entities, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.Entity
  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1.LabelFrame
  field :version, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          pornography_likelihood: Google.Cloud.Videointelligence.V1.Likelihood.t()
        }

  defstruct [:time_offset, :pornography_likelihood]

  field :time_offset, 1, type: Google.Protobuf.Duration
  field :pornography_likelihood, 2, type: Google.Cloud.Videointelligence.V1.Likelihood, enum: true
end

defmodule Google.Cloud.Videointelligence.V1.ExplicitContentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          frames: [Google.Cloud.Videointelligence.V1.ExplicitContentFrame.t()],
          version: String.t()
        }

  defstruct [:frames, :version]

  field :frames, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.ExplicitContentFrame
  field :version, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedBoundingBox do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left: float | :infinity | :negative_infinity | :nan,
          top: float | :infinity | :negative_infinity | :nan,
          right: float | :infinity | :negative_infinity | :nan,
          bottom: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:left, :top, :right, :bottom]

  field :left, 1, type: :float
  field :top, 2, type: :float
  field :right, 3, type: :float
  field :bottom, 4, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.FaceDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracks: [Google.Cloud.Videointelligence.V1.Track.t()],
          thumbnail: binary,
          version: String.t()
        }

  defstruct [:tracks, :thumbnail, :version]

  field :tracks, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :thumbnail, 4, type: :bytes
  field :version, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.PersonDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracks: [Google.Cloud.Videointelligence.V1.Track.t()],
          version: String.t()
        }

  defstruct [:tracks, :version]

  field :tracks, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :version, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.FaceSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil
        }

  defstruct [:segment]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1.FaceFrame do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_boxes: [Google.Cloud.Videointelligence.V1.NormalizedBoundingBox.t()],
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:normalized_bounding_boxes, :time_offset]

  field :normalized_bounding_boxes, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox

  field :time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Videointelligence.V1.FaceAnnotation do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          thumbnail: binary,
          segments: [Google.Cloud.Videointelligence.V1.FaceSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1.FaceFrame.t()]
        }

  defstruct [:thumbnail, :segments, :frames]

  field :thumbnail, 1, type: :bytes
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.FaceSegment
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.FaceFrame
end

defmodule Google.Cloud.Videointelligence.V1.TimestampedObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_box:
            Google.Cloud.Videointelligence.V1.NormalizedBoundingBox.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil,
          attributes: [Google.Cloud.Videointelligence.V1.DetectedAttribute.t()],
          landmarks: [Google.Cloud.Videointelligence.V1.DetectedLandmark.t()]
        }

  defstruct [:normalized_bounding_box, :time_offset, :attributes, :landmarks]

  field :normalized_bounding_box, 1, type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox
  field :time_offset, 2, type: Google.Protobuf.Duration
  field :attributes, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.DetectedAttribute
  field :landmarks, 4, repeated: true, type: Google.Cloud.Videointelligence.V1.DetectedLandmark
end

defmodule Google.Cloud.Videointelligence.V1.Track do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil,
          timestamped_objects: [Google.Cloud.Videointelligence.V1.TimestampedObject.t()],
          attributes: [Google.Cloud.Videointelligence.V1.DetectedAttribute.t()],
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:segment, :timestamped_objects, :attributes, :confidence]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment

  field :timestamped_objects, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.TimestampedObject

  field :attributes, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.DetectedAttribute
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.DetectedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          value: String.t()
        }

  defstruct [:name, :confidence, :value]

  field :name, 1, type: :string
  field :confidence, 2, type: :float
  field :value, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.DetectedLandmark do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          point: Google.Cloud.Videointelligence.V1.NormalizedVertex.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :point, :confidence]

  field :name, 1, type: :string
  field :point, 2, type: Google.Cloud.Videointelligence.V1.NormalizedVertex
  field :confidence, 3, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.VideoAnnotationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil,
          segment_label_annotations: [Google.Cloud.Videointelligence.V1.LabelAnnotation.t()],
          segment_presence_label_annotations: [
            Google.Cloud.Videointelligence.V1.LabelAnnotation.t()
          ],
          shot_label_annotations: [Google.Cloud.Videointelligence.V1.LabelAnnotation.t()],
          shot_presence_label_annotations: [Google.Cloud.Videointelligence.V1.LabelAnnotation.t()],
          frame_label_annotations: [Google.Cloud.Videointelligence.V1.LabelAnnotation.t()],
          face_annotations: [Google.Cloud.Videointelligence.V1.FaceAnnotation.t()],
          face_detection_annotations: [
            Google.Cloud.Videointelligence.V1.FaceDetectionAnnotation.t()
          ],
          shot_annotations: [Google.Cloud.Videointelligence.V1.VideoSegment.t()],
          explicit_annotation:
            Google.Cloud.Videointelligence.V1.ExplicitContentAnnotation.t() | nil,
          speech_transcriptions: [Google.Cloud.Videointelligence.V1.SpeechTranscription.t()],
          text_annotations: [Google.Cloud.Videointelligence.V1.TextAnnotation.t()],
          object_annotations: [Google.Cloud.Videointelligence.V1.ObjectTrackingAnnotation.t()],
          logo_recognition_annotations: [
            Google.Cloud.Videointelligence.V1.LogoRecognitionAnnotation.t()
          ],
          person_detection_annotations: [
            Google.Cloud.Videointelligence.V1.PersonDetectionAnnotation.t()
          ],
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :input_uri,
    :segment,
    :segment_label_annotations,
    :segment_presence_label_annotations,
    :shot_label_annotations,
    :shot_presence_label_annotations,
    :frame_label_annotations,
    :face_annotations,
    :face_detection_annotations,
    :shot_annotations,
    :explicit_annotation,
    :speech_transcriptions,
    :text_annotations,
    :object_annotations,
    :logo_recognition_annotations,
    :person_detection_annotations,
    :error
  ]

  field :input_uri, 1, type: :string
  field :segment, 10, type: Google.Cloud.Videointelligence.V1.VideoSegment

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation

  field :segment_presence_label_annotations, 23,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation

  field :shot_presence_label_annotations, 24,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LabelAnnotation

  field :face_annotations, 5,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.FaceAnnotation,
    deprecated: true

  field :face_detection_annotations, 13,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.FaceDetectionAnnotation

  field :shot_annotations, 6, repeated: true, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :explicit_annotation, 7, type: Google.Cloud.Videointelligence.V1.ExplicitContentAnnotation

  field :speech_transcriptions, 11,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.SpeechTranscription

  field :text_annotations, 12,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.TextAnnotation

  field :object_annotations, 14,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.ObjectTrackingAnnotation

  field :logo_recognition_annotations, 19,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.LogoRecognitionAnnotation

  field :person_detection_annotations, 20,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.PersonDetectionAnnotation

  field :error, 9, type: Google.Rpc.Status
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_results: [Google.Cloud.Videointelligence.V1.VideoAnnotationResults.t()]
        }

  defstruct [:annotation_results]

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.VideoAnnotationResults
end

defmodule Google.Cloud.Videointelligence.V1.VideoAnnotationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          feature: Google.Cloud.Videointelligence.V1.Feature.t(),
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil
        }

  defstruct [:input_uri, :progress_percent, :start_time, :update_time, :feature, :segment]

  field :input_uri, 1, type: :string
  field :progress_percent, 2, type: :int32
  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :feature, 5, type: Google.Cloud.Videointelligence.V1.Feature, enum: true
  field :segment, 6, type: Google.Cloud.Videointelligence.V1.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1.AnnotateVideoProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_progress: [Google.Cloud.Videointelligence.V1.VideoAnnotationProgress.t()]
        }

  defstruct [:annotation_progress]

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.VideoAnnotationProgress
end

defmodule Google.Cloud.Videointelligence.V1.SpeechTranscriptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          max_alternatives: integer,
          filter_profanity: boolean,
          speech_contexts: [Google.Cloud.Videointelligence.V1.SpeechContext.t()],
          enable_automatic_punctuation: boolean,
          audio_tracks: [integer],
          enable_speaker_diarization: boolean,
          diarization_speaker_count: integer,
          enable_word_confidence: boolean
        }

  defstruct [
    :language_code,
    :max_alternatives,
    :filter_profanity,
    :speech_contexts,
    :enable_automatic_punctuation,
    :audio_tracks,
    :enable_speaker_diarization,
    :diarization_speaker_count,
    :enable_word_confidence
  ]

  field :language_code, 1, type: :string
  field :max_alternatives, 2, type: :int32
  field :filter_profanity, 3, type: :bool
  field :speech_contexts, 4, repeated: true, type: Google.Cloud.Videointelligence.V1.SpeechContext
  field :enable_automatic_punctuation, 5, type: :bool
  field :audio_tracks, 6, repeated: true, type: :int32
  field :enable_speaker_diarization, 7, type: :bool
  field :diarization_speaker_count, 8, type: :int32
  field :enable_word_confidence, 9, type: :bool
end

defmodule Google.Cloud.Videointelligence.V1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()]
        }

  defstruct [:phrases]

  field :phrases, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.SpeechTranscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [Google.Cloud.Videointelligence.V1.SpeechRecognitionAlternative.t()],
          language_code: String.t()
        }

  defstruct [:alternatives, :language_code]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1.SpeechRecognitionAlternative

  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.SpeechRecognitionAlternative do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [Google.Cloud.Videointelligence.V1.WordInfo.t()]
        }

  defstruct [:transcript, :confidence, :words]

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float
  field :words, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.WordInfo
end

defmodule Google.Cloud.Videointelligence.V1.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Duration.t() | nil,
          end_time: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          speaker_tag: integer
        }

  defstruct [:start_time, :end_time, :word, :confidence, :speaker_tag]

  field :start_time, 1, type: Google.Protobuf.Duration
  field :end_time, 2, type: Google.Protobuf.Duration
  field :word, 3, type: :string
  field :confidence, 4, type: :float
  field :speaker_tag, 5, type: :int32
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:x, :y]

  field :x, 1, type: :float
  field :y, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1.NormalizedBoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Videointelligence.V1.NormalizedVertex.t()]
        }

  defstruct [:vertices]

  field :vertices, 1, repeated: true, type: Google.Cloud.Videointelligence.V1.NormalizedVertex
end

defmodule Google.Cloud.Videointelligence.V1.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          frames: [Google.Cloud.Videointelligence.V1.TextFrame.t()]
        }

  defstruct [:segment, :confidence, :frames]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1.VideoSegment
  field :confidence, 2, type: :float
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.TextFrame
end

defmodule Google.Cloud.Videointelligence.V1.TextFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rotated_bounding_box:
            Google.Cloud.Videointelligence.V1.NormalizedBoundingPoly.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:rotated_bounding_box, :time_offset]

  field :rotated_bounding_box, 1, type: Google.Cloud.Videointelligence.V1.NormalizedBoundingPoly
  field :time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Videointelligence.V1.TextAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          segments: [Google.Cloud.Videointelligence.V1.TextSegment.t()],
          version: String.t()
        }

  defstruct [:text, :segments, :version]

  field :text, 1, type: :string
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.TextSegment
  field :version, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_box:
            Google.Cloud.Videointelligence.V1.NormalizedBoundingBox.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:normalized_bounding_box, :time_offset]

  field :normalized_bounding_box, 1, type: Google.Cloud.Videointelligence.V1.NormalizedBoundingBox
  field :time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Videointelligence.V1.ObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          track_info: {atom, any},
          entity: Google.Cloud.Videointelligence.V1.Entity.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          frames: [Google.Cloud.Videointelligence.V1.ObjectTrackingFrame.t()],
          version: String.t()
        }

  defstruct [:track_info, :entity, :confidence, :frames, :version]

  oneof :track_info, 0
  field :segment, 3, type: Google.Cloud.Videointelligence.V1.VideoSegment, oneof: 0
  field :track_id, 5, type: :int64, oneof: 0
  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity
  field :confidence, 4, type: :float
  field :frames, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.ObjectTrackingFrame
  field :version, 6, type: :string
end

defmodule Google.Cloud.Videointelligence.V1.LogoRecognitionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1.Entity.t() | nil,
          tracks: [Google.Cloud.Videointelligence.V1.Track.t()],
          segments: [Google.Cloud.Videointelligence.V1.VideoSegment.t()]
        }

  defstruct [:entity, :tracks, :segments]

  field :entity, 1, type: Google.Cloud.Videointelligence.V1.Entity
  field :tracks, 2, repeated: true, type: Google.Cloud.Videointelligence.V1.Track
  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1.VideoSegment
end
