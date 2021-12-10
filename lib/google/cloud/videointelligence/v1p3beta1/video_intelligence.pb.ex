defmodule Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionMode do
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
defmodule Google.Cloud.Videointelligence.V1p3beta1.Likelihood do
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
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingFeature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STREAMING_FEATURE_UNSPECIFIED
          | :STREAMING_LABEL_DETECTION
          | :STREAMING_SHOT_CHANGE_DETECTION
          | :STREAMING_EXPLICIT_CONTENT_DETECTION
          | :STREAMING_OBJECT_TRACKING
          | :STREAMING_AUTOML_ACTION_RECOGNITION
          | :STREAMING_AUTOML_CLASSIFICATION
          | :STREAMING_AUTOML_OBJECT_TRACKING

  field :STREAMING_FEATURE_UNSPECIFIED, 0
  field :STREAMING_LABEL_DETECTION, 1
  field :STREAMING_SHOT_CHANGE_DETECTION, 2
  field :STREAMING_EXPLICIT_CONTENT_DETECTION, 3
  field :STREAMING_OBJECT_TRACKING, 4
  field :STREAMING_AUTOML_ACTION_RECOGNITION, 23
  field :STREAMING_AUTOML_CLASSIFICATION, 21
  field :STREAMING_AUTOML_OBJECT_TRACKING, 22
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.Feature do
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
          | :CELEBRITY_RECOGNITION
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
  field :CELEBRITY_RECOGNITION, 13
  field :PERSON_DETECTION, 14
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.AnnotateVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          input_content: binary,
          features: [Google.Cloud.Videointelligence.V1p3beta1.Feature.t()],
          video_context: Google.Cloud.Videointelligence.V1p3beta1.VideoContext.t() | nil,
          output_uri: String.t(),
          location_id: String.t()
        }

  defstruct input_uri: "",
            input_content: "",
            features: [],
            video_context: nil,
            output_uri: "",
            location_id: ""

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :input_content, 6, type: :bytes, json_name: "inputContent"

  field :features, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.Feature,
    enum: true,
    deprecated: false

  field :video_context, 3,
    type: Google.Cloud.Videointelligence.V1p3beta1.VideoContext,
    json_name: "videoContext"

  field :output_uri, 4, type: :string, json_name: "outputUri", deprecated: false
  field :location_id, 5, type: :string, json_name: "locationId", deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t()],
          label_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionConfig.t() | nil,
          shot_change_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.ShotChangeDetectionConfig.t() | nil,
          explicit_content_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentDetectionConfig.t() | nil,
          face_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionConfig.t() | nil,
          speech_transcription_config:
            Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscriptionConfig.t() | nil,
          text_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.TextDetectionConfig.t() | nil,
          person_detection_config:
            Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionConfig.t() | nil,
          object_tracking_config:
            Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingConfig.t() | nil
        }

  defstruct segments: [],
            label_detection_config: nil,
            shot_change_detection_config: nil,
            explicit_content_detection_config: nil,
            face_detection_config: nil,
            speech_transcription_config: nil,
            text_detection_config: nil,
            person_detection_config: nil,
            object_tracking_config: nil

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment

  field :label_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionConfig,
    json_name: "labelDetectionConfig"

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1p3beta1.ShotChangeDetectionConfig,
    json_name: "shotChangeDetectionConfig"

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentDetectionConfig,
    json_name: "explicitContentDetectionConfig"

  field :face_detection_config, 5,
    type: Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionConfig,
    json_name: "faceDetectionConfig"

  field :speech_transcription_config, 6,
    type: Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscriptionConfig,
    json_name: "speechTranscriptionConfig"

  field :text_detection_config, 8,
    type: Google.Cloud.Videointelligence.V1p3beta1.TextDetectionConfig,
    json_name: "textDetectionConfig"

  field :person_detection_config, 11,
    type: Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionConfig,
    json_name: "personDetectionConfig"

  field :object_tracking_config, 13,
    type: Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingConfig,
    json_name: "objectTrackingConfig"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_detection_mode: Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionMode.t(),
          stationary_camera: boolean,
          model: String.t(),
          frame_confidence_threshold: float | :infinity | :negative_infinity | :nan,
          video_confidence_threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct label_detection_mode: :LABEL_DETECTION_MODE_UNSPECIFIED,
            stationary_camera: false,
            model: "",
            frame_confidence_threshold: 0.0,
            video_confidence_threshold: 0.0

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelDetectionMode,
    json_name: "labelDetectionMode",
    enum: true

  field :stationary_camera, 2, type: :bool, json_name: "stationaryCamera"
  field :model, 3, type: :string
  field :frame_confidence_threshold, 4, type: :float, json_name: "frameConfidenceThreshold"
  field :video_confidence_threshold, 5, type: :float, json_name: "videoConfidenceThreshold"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct model: ""

  field :model, 1, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct model: ""

  field :model, 1, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct model: ""

  field :model, 1, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          include_bounding_boxes: boolean,
          include_attributes: boolean
        }

  defstruct model: "",
            include_bounding_boxes: false,
            include_attributes: false

  field :model, 1, type: :string
  field :include_bounding_boxes, 2, type: :bool, json_name: "includeBoundingBoxes"
  field :include_attributes, 5, type: :bool, json_name: "includeAttributes"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_bounding_boxes: boolean,
          include_pose_landmarks: boolean,
          include_attributes: boolean
        }

  defstruct include_bounding_boxes: false,
            include_pose_landmarks: false,
            include_attributes: false

  field :include_bounding_boxes, 1, type: :bool, json_name: "includeBoundingBoxes"
  field :include_pose_landmarks, 2, type: :bool, json_name: "includePoseLandmarks"
  field :include_attributes, 3, type: :bool, json_name: "includeAttributes"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.TextDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_hints: [String.t()],
          model: String.t()
        }

  defstruct language_hints: [],
            model: ""

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
  field :model, 2, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct start_time_offset: nil,
            end_time_offset: nil

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.LabelSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct segment: nil,
            confidence: 0.0

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.LabelFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct time_offset: nil,
            confidence: 0.0

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          description: String.t(),
          language_code: String.t()
        }

  defstruct entity_id: "",
            description: "",
            language_code: ""

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :description, 2, type: :string
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1p3beta1.Entity.t() | nil,
          category_entities: [Google.Cloud.Videointelligence.V1p3beta1.Entity.t()],
          segments: [Google.Cloud.Videointelligence.V1p3beta1.LabelSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1p3beta1.LabelFrame.t()]
        }

  defstruct entity: nil,
            category_entities: [],
            segments: [],
            frames: []

  field :entity, 1, type: Google.Cloud.Videointelligence.V1p3beta1.Entity

  field :category_entities, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.Entity,
    json_name: "categoryEntities"

  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.LabelFrame
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          pornography_likelihood: Google.Cloud.Videointelligence.V1p3beta1.Likelihood.t()
        }

  defstruct time_offset: nil,
            pornography_likelihood: :LIKELIHOOD_UNSPECIFIED

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :pornography_likelihood, 2,
    type: Google.Cloud.Videointelligence.V1p3beta1.Likelihood,
    json_name: "pornographyLikelihood",
    enum: true
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          frames: [Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentFrame.t()]
        }

  defstruct frames: []

  field :frames, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentFrame
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingBox do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left: float | :infinity | :negative_infinity | :nan,
          top: float | :infinity | :negative_infinity | :nan,
          right: float | :infinity | :negative_infinity | :nan,
          bottom: float | :infinity | :negative_infinity | :nan
        }

  defstruct left: 0.0,
            top: 0.0,
            right: 0.0,
            bottom: 0.0

  field :left, 1, type: :float
  field :top, 2, type: :float
  field :right, 3, type: :float
  field :bottom, 4, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.TimestampedObject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_box:
            Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingBox.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil,
          attributes: [Google.Cloud.Videointelligence.V1p3beta1.DetectedAttribute.t()],
          landmarks: [Google.Cloud.Videointelligence.V1p3beta1.DetectedLandmark.t()]
        }

  defstruct normalized_bounding_box: nil,
            time_offset: nil,
            attributes: [],
            landmarks: []

  field :normalized_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.DetectedAttribute,
    deprecated: false

  field :landmarks, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.DetectedLandmark,
    deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.Track do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil,
          timestamped_objects: [Google.Cloud.Videointelligence.V1p3beta1.TimestampedObject.t()],
          attributes: [Google.Cloud.Videointelligence.V1p3beta1.DetectedAttribute.t()],
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct segment: nil,
            timestamped_objects: [],
            attributes: [],
            confidence: 0.0

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment

  field :timestamped_objects, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.TimestampedObject,
    json_name: "timestampedObjects"

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.DetectedAttribute,
    deprecated: false

  field :confidence, 4, type: :float, deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.DetectedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          value: String.t()
        }

  defstruct name: "",
            confidence: 0.0,
            value: ""

  field :name, 1, type: :string
  field :confidence, 2, type: :float
  field :value, 3, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.Celebrity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t()
        }

  defstruct name: "",
            display_name: "",
            description: ""

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack.RecognizedCelebrity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          celebrity: Google.Cloud.Videointelligence.V1p3beta1.Celebrity.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct celebrity: nil,
            confidence: 0.0

  field :celebrity, 1, type: Google.Cloud.Videointelligence.V1p3beta1.Celebrity
  field :confidence, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          celebrities: [
            Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack.RecognizedCelebrity.t()
          ],
          face_track: Google.Cloud.Videointelligence.V1p3beta1.Track.t() | nil
        }

  defstruct celebrities: [],
            face_track: nil

  field :celebrities, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack.RecognizedCelebrity

  field :face_track, 3,
    type: Google.Cloud.Videointelligence.V1p3beta1.Track,
    json_name: "faceTrack"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.CelebrityRecognitionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          celebrity_tracks: [Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack.t()]
        }

  defstruct celebrity_tracks: []

  field :celebrity_tracks, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.CelebrityTrack,
    json_name: "celebrityTracks"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.DetectedLandmark do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          point: Google.Cloud.Videointelligence.V1p3beta1.NormalizedVertex.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct name: "",
            point: nil,
            confidence: 0.0

  field :name, 1, type: :string
  field :point, 2, type: Google.Cloud.Videointelligence.V1p3beta1.NormalizedVertex
  field :confidence, 3, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracks: [Google.Cloud.Videointelligence.V1p3beta1.Track.t()],
          thumbnail: binary
        }

  defstruct tracks: [],
            thumbnail: ""

  field :tracks, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.Track
  field :thumbnail, 4, type: :bytes
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tracks: [Google.Cloud.Videointelligence.V1p3beta1.Track.t()]
        }

  defstruct tracks: []

  field :tracks, 1, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.Track
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          segment: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil,
          segment_label_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()
          ],
          segment_presence_label_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()
          ],
          shot_label_annotations: [Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()],
          shot_presence_label_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()
          ],
          frame_label_annotations: [Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()],
          face_detection_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionAnnotation.t()
          ],
          shot_annotations: [Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t()],
          explicit_annotation:
            Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentAnnotation.t() | nil,
          speech_transcriptions: [
            Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscription.t()
          ],
          text_annotations: [Google.Cloud.Videointelligence.V1p3beta1.TextAnnotation.t()],
          object_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingAnnotation.t()
          ],
          logo_recognition_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.LogoRecognitionAnnotation.t()
          ],
          person_detection_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionAnnotation.t()
          ],
          celebrity_recognition_annotations:
            Google.Cloud.Videointelligence.V1p3beta1.CelebrityRecognitionAnnotation.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct input_uri: "",
            segment: nil,
            segment_label_annotations: [],
            segment_presence_label_annotations: [],
            shot_label_annotations: [],
            shot_presence_label_annotations: [],
            frame_label_annotations: [],
            face_detection_annotations: [],
            shot_annotations: [],
            explicit_annotation: nil,
            speech_transcriptions: [],
            text_annotations: [],
            object_annotations: [],
            logo_recognition_annotations: [],
            person_detection_annotations: [],
            celebrity_recognition_annotations: nil,
            error: nil

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :segment, 10, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "segmentLabelAnnotations"

  field :segment_presence_label_annotations, 23,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "segmentPresenceLabelAnnotations"

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "shotLabelAnnotations"

  field :shot_presence_label_annotations, 24,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "shotPresenceLabelAnnotations"

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "frameLabelAnnotations"

  field :face_detection_annotations, 13,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.FaceDetectionAnnotation,
    json_name: "faceDetectionAnnotations"

  field :shot_annotations, 6,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment,
    json_name: "shotAnnotations"

  field :explicit_annotation, 7,
    type: Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentAnnotation,
    json_name: "explicitAnnotation"

  field :speech_transcriptions, 11,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscription,
    json_name: "speechTranscriptions"

  field :text_annotations, 12,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.TextAnnotation,
    json_name: "textAnnotations"

  field :object_annotations, 14,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingAnnotation,
    json_name: "objectAnnotations"

  field :logo_recognition_annotations, 19,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LogoRecognitionAnnotation,
    json_name: "logoRecognitionAnnotations"

  field :person_detection_annotations, 20,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.PersonDetectionAnnotation,
    json_name: "personDetectionAnnotations"

  field :celebrity_recognition_annotations, 21,
    type: Google.Cloud.Videointelligence.V1p3beta1.CelebrityRecognitionAnnotation,
    json_name: "celebrityRecognitionAnnotations"

  field :error, 9, type: Google.Rpc.Status
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.AnnotateVideoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_results: [
            Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationResults.t()
          ]
        }

  defstruct annotation_results: []

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationResults,
    json_name: "annotationResults"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          feature: Google.Cloud.Videointelligence.V1p3beta1.Feature.t(),
          segment: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil
        }

  defstruct input_uri: "",
            progress_percent: 0,
            start_time: nil,
            update_time: nil,
            feature: :FEATURE_UNSPECIFIED,
            segment: nil

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :progress_percent, 2, type: :int32, json_name: "progressPercent"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :feature, 5, type: Google.Cloud.Videointelligence.V1p3beta1.Feature, enum: true
  field :segment, 6, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.AnnotateVideoProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_progress: [
            Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationProgress.t()
          ]
        }

  defstruct annotation_progress: []

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.VideoAnnotationProgress,
    json_name: "annotationProgress"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscriptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          max_alternatives: integer,
          filter_profanity: boolean,
          speech_contexts: [Google.Cloud.Videointelligence.V1p3beta1.SpeechContext.t()],
          enable_automatic_punctuation: boolean,
          audio_tracks: [integer],
          enable_speaker_diarization: boolean,
          diarization_speaker_count: integer,
          enable_word_confidence: boolean
        }

  defstruct language_code: "",
            max_alternatives: 0,
            filter_profanity: false,
            speech_contexts: [],
            enable_automatic_punctuation: false,
            audio_tracks: [],
            enable_speaker_diarization: false,
            diarization_speaker_count: 0,
            enable_word_confidence: false

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
  field :max_alternatives, 2, type: :int32, json_name: "maxAlternatives", deprecated: false
  field :filter_profanity, 3, type: :bool, json_name: "filterProfanity", deprecated: false

  field :speech_contexts, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.SpeechContext,
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
defmodule Google.Cloud.Videointelligence.V1p3beta1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()]
        }

  defstruct phrases: []

  field :phrases, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.SpeechTranscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [
            Google.Cloud.Videointelligence.V1p3beta1.SpeechRecognitionAlternative.t()
          ],
          language_code: String.t()
        }

  defstruct alternatives: [],
            language_code: ""

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.SpeechRecognitionAlternative

  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.SpeechRecognitionAlternative do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [Google.Cloud.Videointelligence.V1p3beta1.WordInfo.t()]
        }

  defstruct transcript: "",
            confidence: 0.0,
            words: []

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float, deprecated: false

  field :words, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.WordInfo,
    deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Duration.t() | nil,
          end_time: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          speaker_tag: integer
        }

  defstruct start_time: nil,
            end_time: nil,
            word: "",
            confidence: 0.0,
            speaker_tag: 0

  field :start_time, 1, type: Google.Protobuf.Duration, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Duration, json_name: "endTime"
  field :word, 3, type: :string
  field :confidence, 4, type: :float, deprecated: false
  field :speaker_tag, 5, type: :int32, json_name: "speakerTag", deprecated: false
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.NormalizedVertex do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x: float | :infinity | :negative_infinity | :nan,
          y: float | :infinity | :negative_infinity | :nan
        }

  defstruct x: 0.0,
            y: 0.0

  field :x, 1, type: :float
  field :y, 2, type: :float
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingPoly do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertices: [Google.Cloud.Videointelligence.V1p3beta1.NormalizedVertex.t()]
        }

  defstruct vertices: []

  field :vertices, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.NormalizedVertex
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          frames: [Google.Cloud.Videointelligence.V1p3beta1.TextFrame.t()]
        }

  defstruct segment: nil,
            confidence: 0.0,
            frames: []

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment
  field :confidence, 2, type: :float
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.TextFrame
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.TextFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rotated_bounding_box:
            Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingPoly.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct rotated_bounding_box: nil,
            time_offset: nil

  field :rotated_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingPoly,
    json_name: "rotatedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.TextAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          segments: [Google.Cloud.Videointelligence.V1p3beta1.TextSegment.t()]
        }

  defstruct text: "",
            segments: []

  field :text, 1, type: :string
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.TextSegment
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_box:
            Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingBox.t() | nil,
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct normalized_bounding_box: nil,
            time_offset: nil

  field :normalized_bounding_box, 1,
    type: Google.Cloud.Videointelligence.V1p3beta1.NormalizedBoundingBox,
    json_name: "normalizedBoundingBox"

  field :time_offset, 2, type: Google.Protobuf.Duration, json_name: "timeOffset"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          track_info:
            {:segment, Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t() | nil}
            | {:track_id, integer},
          entity: Google.Cloud.Videointelligence.V1p3beta1.Entity.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          frames: [Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingFrame.t()]
        }

  defstruct track_info: nil,
            entity: nil,
            confidence: 0.0,
            frames: []

  oneof :track_info, 0

  field :segment, 3, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment, oneof: 0
  field :track_id, 5, type: :int64, json_name: "trackId", oneof: 0
  field :entity, 1, type: Google.Cloud.Videointelligence.V1p3beta1.Entity
  field :confidence, 4, type: :float

  field :frames, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingFrame
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.LogoRecognitionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1p3beta1.Entity.t() | nil,
          tracks: [Google.Cloud.Videointelligence.V1p3beta1.Track.t()],
          segments: [Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t()]
        }

  defstruct entity: nil,
            tracks: [],
            segments: []

  field :entity, 1, type: Google.Cloud.Videointelligence.V1p3beta1.Entity
  field :tracks, 2, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.Track
  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingAnnotateVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_request:
            {:video_config,
             Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoConfig.t() | nil}
            | {:input_content, binary}
        }

  defstruct streaming_request: nil

  oneof :streaming_request, 0

  field :video_config, 1,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoConfig,
    json_name: "videoConfig",
    oneof: 0

  field :input_content, 2, type: :bytes, json_name: "inputContent", oneof: 0
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_config:
            {:shot_change_detection_config,
             Google.Cloud.Videointelligence.V1p3beta1.StreamingShotChangeDetectionConfig.t() | nil}
            | {:label_detection_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingLabelDetectionConfig.t() | nil}
            | {:explicit_content_detection_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingExplicitContentDetectionConfig.t()
               | nil}
            | {:object_tracking_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingObjectTrackingConfig.t() | nil}
            | {:automl_action_recognition_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlActionRecognitionConfig.t()
               | nil}
            | {:automl_classification_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlClassificationConfig.t()
               | nil}
            | {:automl_object_tracking_config,
               Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlObjectTrackingConfig.t()
               | nil},
          feature: Google.Cloud.Videointelligence.V1p3beta1.StreamingFeature.t(),
          storage_config:
            Google.Cloud.Videointelligence.V1p3beta1.StreamingStorageConfig.t() | nil
        }

  defstruct streaming_config: nil,
            feature: :STREAMING_FEATURE_UNSPECIFIED,
            storage_config: nil

  oneof :streaming_config, 0

  field :shot_change_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingShotChangeDetectionConfig,
    json_name: "shotChangeDetectionConfig",
    oneof: 0

  field :label_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingLabelDetectionConfig,
    json_name: "labelDetectionConfig",
    oneof: 0

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingExplicitContentDetectionConfig,
    json_name: "explicitContentDetectionConfig",
    oneof: 0

  field :object_tracking_config, 5,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingObjectTrackingConfig,
    json_name: "objectTrackingConfig",
    oneof: 0

  field :automl_action_recognition_config, 23,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlActionRecognitionConfig,
    json_name: "automlActionRecognitionConfig",
    oneof: 0

  field :automl_classification_config, 21,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlClassificationConfig,
    json_name: "automlClassificationConfig",
    oneof: 0

  field :automl_object_tracking_config, 22,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlObjectTrackingConfig,
    json_name: "automlObjectTrackingConfig",
    oneof: 0

  field :feature, 1, type: Google.Cloud.Videointelligence.V1p3beta1.StreamingFeature, enum: true

  field :storage_config, 30,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingStorageConfig,
    json_name: "storageConfig"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingAnnotateVideoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil,
          annotation_results:
            Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoAnnotationResults.t() | nil,
          annotation_results_uri: String.t()
        }

  defstruct error: nil,
            annotation_results: nil,
            annotation_results_uri: ""

  field :error, 1, type: Google.Rpc.Status

  field :annotation_results, 2,
    type: Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoAnnotationResults,
    json_name: "annotationResults"

  field :annotation_results_uri, 3, type: :string, json_name: "annotationResultsUri"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoAnnotationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shot_annotations: [Google.Cloud.Videointelligence.V1p3beta1.VideoSegment.t()],
          label_annotations: [Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation.t()],
          explicit_annotation:
            Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentAnnotation.t() | nil,
          object_annotations: [
            Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingAnnotation.t()
          ]
        }

  defstruct shot_annotations: [],
            label_annotations: [],
            explicit_annotation: nil,
            object_annotations: []

  field :shot_annotations, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.VideoSegment,
    json_name: "shotAnnotations"

  field :label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.LabelAnnotation,
    json_name: "labelAnnotations"

  field :explicit_annotation, 3,
    type: Google.Cloud.Videointelligence.V1p3beta1.ExplicitContentAnnotation,
    json_name: "explicitAnnotation"

  field :object_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p3beta1.ObjectTrackingAnnotation,
    json_name: "objectAnnotations"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingLabelDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stationary_camera: boolean
        }

  defstruct stationary_camera: false

  field :stationary_camera, 1, type: :bool, json_name: "stationaryCamera"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlActionRecognitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_name: String.t()
        }

  defstruct model_name: ""

  field :model_name, 1, type: :string, json_name: "modelName"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlClassificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_name: String.t()
        }

  defstruct model_name: ""

  field :model_name, 1, type: :string, json_name: "modelName"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingAutomlObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_name: String.t()
        }

  defstruct model_name: ""

  field :model_name, 1, type: :string, json_name: "modelName"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingStorageConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_storage_annotation_result: boolean,
          annotation_result_storage_directory: String.t()
        }

  defstruct enable_storage_annotation_result: false,
            annotation_result_storage_directory: ""

  field :enable_storage_annotation_result, 1,
    type: :bool,
    json_name: "enableStorageAnnotationResult"

  field :annotation_result_storage_directory, 3,
    type: :string,
    json_name: "annotationResultStorageDirectory"
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoIntelligenceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.videointelligence.v1p3beta1.VideoIntelligenceService"

  rpc :AnnotateVideo,
      Google.Cloud.Videointelligence.V1p3beta1.AnnotateVideoRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Videointelligence.V1p3beta1.VideoIntelligenceService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Videointelligence.V1p3beta1.VideoIntelligenceService.Service
end
defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoIntelligenceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.videointelligence.v1p3beta1.StreamingVideoIntelligenceService"

  rpc :StreamingAnnotateVideo,
      stream(Google.Cloud.Videointelligence.V1p3beta1.StreamingAnnotateVideoRequest),
      stream(Google.Cloud.Videointelligence.V1p3beta1.StreamingAnnotateVideoResponse)
end

defmodule Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoIntelligenceService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Videointelligence.V1p3beta1.StreamingVideoIntelligenceService.Service
end
