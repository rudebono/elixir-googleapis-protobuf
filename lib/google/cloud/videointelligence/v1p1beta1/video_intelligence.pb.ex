defmodule Google.Cloud.Videointelligence.V1p1beta1.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :LABEL_DETECTION
          | :SHOT_CHANGE_DETECTION
          | :EXPLICIT_CONTENT_DETECTION
          | :SPEECH_TRANSCRIPTION

  field :FEATURE_UNSPECIFIED, 0
  field :LABEL_DETECTION, 1
  field :SHOT_CHANGE_DETECTION, 2
  field :EXPLICIT_CONTENT_DETECTION, 3
  field :SPEECH_TRANSCRIPTION, 6
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionMode do
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

defmodule Google.Cloud.Videointelligence.V1p1beta1.Likelihood do
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

defmodule Google.Cloud.Videointelligence.V1p1beta1.AnnotateVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          input_content: binary,
          features: [Google.Cloud.Videointelligence.V1p1beta1.Feature.t()],
          video_context: Google.Cloud.Videointelligence.V1p1beta1.VideoContext.t() | nil,
          output_uri: String.t(),
          location_id: String.t()
        }

  defstruct [:input_uri, :input_content, :features, :video_context, :output_uri, :location_id]

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :input_content, 6, type: :bytes, json_name: "inputContent"

  field :features, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.Feature,
    enum: true

  field :video_context, 3,
    type: Google.Cloud.Videointelligence.V1p1beta1.VideoContext,
    json_name: "videoContext"

  field :output_uri, 4, type: :string, json_name: "outputUri"
  field :location_id, 5, type: :string, json_name: "locationId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Videointelligence.V1p1beta1.VideoSegment.t()],
          label_detection_config:
            Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionConfig.t() | nil,
          shot_change_detection_config:
            Google.Cloud.Videointelligence.V1p1beta1.ShotChangeDetectionConfig.t() | nil,
          explicit_content_detection_config:
            Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentDetectionConfig.t() | nil,
          speech_transcription_config:
            Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscriptionConfig.t() | nil
        }

  defstruct [
    :segments,
    :label_detection_config,
    :shot_change_detection_config,
    :explicit_content_detection_config,
    :speech_transcription_config
  ]

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1p1beta1.VideoSegment

  field :label_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionConfig,
    json_name: "labelDetectionConfig"

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1p1beta1.ShotChangeDetectionConfig,
    json_name: "shotChangeDetectionConfig"

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentDetectionConfig,
    json_name: "explicitContentDetectionConfig"

  field :speech_transcription_config, 6,
    type: Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscriptionConfig,
    json_name: "speechTranscriptionConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_detection_mode: Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionMode.t(),
          stationary_camera: boolean,
          model: String.t()
        }

  defstruct [:label_detection_mode, :stationary_camera, :model]

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1p1beta1.LabelDetectionMode,
    enum: true,
    json_name: "labelDetectionMode"

  field :stationary_camera, 2, type: :bool, json_name: "stationaryCamera"
  field :model, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.ShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time_offset: Google.Protobuf.Duration.t() | nil,
          end_time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time_offset, :end_time_offset]

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.LabelSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1p1beta1.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:segment, :confidence]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1p1beta1.VideoSegment
  field :confidence, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.LabelFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:time_offset, :confidence]

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :confidence, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          description: String.t(),
          language_code: String.t()
        }

  defstruct [:entity_id, :description, :language_code]

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :description, 2, type: :string
  field :language_code, 3, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1p1beta1.Entity.t() | nil,
          category_entities: [Google.Cloud.Videointelligence.V1p1beta1.Entity.t()],
          segments: [Google.Cloud.Videointelligence.V1p1beta1.LabelSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1p1beta1.LabelFrame.t()]
        }

  defstruct [:entity, :category_entities, :segments, :frames]

  field :entity, 1, type: Google.Cloud.Videointelligence.V1p1beta1.Entity

  field :category_entities, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.Entity,
    json_name: "categoryEntities"

  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p1beta1.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1p1beta1.LabelFrame

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          pornography_likelihood: Google.Cloud.Videointelligence.V1p1beta1.Likelihood.t()
        }

  defstruct [:time_offset, :pornography_likelihood]

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"

  field :pornography_likelihood, 2,
    type: Google.Cloud.Videointelligence.V1p1beta1.Likelihood,
    enum: true,
    json_name: "pornographyLikelihood"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          frames: [Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentFrame.t()]
        }

  defstruct [:frames]

  field :frames, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentFrame

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          segment_label_annotations: [
            Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation.t()
          ],
          shot_label_annotations: [Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation.t()],
          frame_label_annotations: [Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation.t()],
          shot_annotations: [Google.Cloud.Videointelligence.V1p1beta1.VideoSegment.t()],
          explicit_annotation:
            Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentAnnotation.t() | nil,
          speech_transcriptions: [
            Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscription.t()
          ],
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :input_uri,
    :segment_label_annotations,
    :shot_label_annotations,
    :frame_label_annotations,
    :shot_annotations,
    :explicit_annotation,
    :speech_transcriptions,
    :error
  ]

  field :input_uri, 1, type: :string, json_name: "inputUri"

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation,
    json_name: "segmentLabelAnnotations"

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation,
    json_name: "shotLabelAnnotations"

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.LabelAnnotation,
    json_name: "frameLabelAnnotations"

  field :shot_annotations, 6,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.VideoSegment,
    json_name: "shotAnnotations"

  field :explicit_annotation, 7,
    type: Google.Cloud.Videointelligence.V1p1beta1.ExplicitContentAnnotation,
    json_name: "explicitAnnotation"

  field :speech_transcriptions, 11,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscription,
    json_name: "speechTranscriptions"

  field :error, 9, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.AnnotateVideoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_results: [
            Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationResults.t()
          ]
        }

  defstruct [:annotation_results]

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationResults,
    json_name: "annotationResults"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:input_uri, :progress_percent, :start_time, :update_time]

  field :input_uri, 1, type: :string, json_name: "inputUri"
  field :progress_percent, 2, type: :int32, json_name: "progressPercent"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.AnnotateVideoProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_progress: [
            Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationProgress.t()
          ]
        }

  defstruct [:annotation_progress]

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.VideoAnnotationProgress,
    json_name: "annotationProgress"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscriptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          max_alternatives: integer,
          filter_profanity: boolean,
          speech_contexts: [Google.Cloud.Videointelligence.V1p1beta1.SpeechContext.t()],
          enable_automatic_punctuation: boolean,
          audio_tracks: [integer]
        }

  defstruct [
    :language_code,
    :max_alternatives,
    :filter_profanity,
    :speech_contexts,
    :enable_automatic_punctuation,
    :audio_tracks
  ]

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :max_alternatives, 2, type: :int32, json_name: "maxAlternatives"
  field :filter_profanity, 3, type: :bool, json_name: "filterProfanity"

  field :speech_contexts, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.SpeechContext,
    json_name: "speechContexts"

  field :enable_automatic_punctuation, 5, type: :bool, json_name: "enableAutomaticPunctuation"
  field :audio_tracks, 6, repeated: true, type: :int32, json_name: "audioTracks"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()]
        }

  defstruct [:phrases]

  field :phrases, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.SpeechTranscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [
            Google.Cloud.Videointelligence.V1p1beta1.SpeechRecognitionAlternative.t()
          ]
        }

  defstruct [:alternatives]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1p1beta1.SpeechRecognitionAlternative

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.SpeechRecognitionAlternative do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [Google.Cloud.Videointelligence.V1p1beta1.WordInfo.t()]
        }

  defstruct [:transcript, :confidence, :words]

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float
  field :words, 3, repeated: true, type: Google.Cloud.Videointelligence.V1p1beta1.WordInfo

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Duration.t() | nil,
          end_time: Google.Protobuf.Duration.t() | nil,
          word: String.t()
        }

  defstruct [:start_time, :end_time, :word]

  field :start_time, 1, type: Google.Protobuf.Duration, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Duration, json_name: "endTime"
  field :word, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoIntelligenceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.videointelligence.v1p1beta1.VideoIntelligenceService"

  rpc :AnnotateVideo,
      Google.Cloud.Videointelligence.V1p1beta1.AnnotateVideoRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Videointelligence.V1p1beta1.VideoIntelligenceService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Videointelligence.V1p1beta1.VideoIntelligenceService.Service
end
