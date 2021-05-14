defmodule Google.Cloud.Videointelligence.V1beta2.Feature do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FEATURE_UNSPECIFIED
          | :LABEL_DETECTION
          | :SHOT_CHANGE_DETECTION
          | :EXPLICIT_CONTENT_DETECTION
          | :FACE_DETECTION

  field :FEATURE_UNSPECIFIED, 0

  field :LABEL_DETECTION, 1

  field :SHOT_CHANGE_DETECTION, 2

  field :EXPLICIT_CONTENT_DETECTION, 3

  field :FACE_DETECTION, 4
end

defmodule Google.Cloud.Videointelligence.V1beta2.LabelDetectionMode do
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

defmodule Google.Cloud.Videointelligence.V1beta2.Likelihood do
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

defmodule Google.Cloud.Videointelligence.V1beta2.AnnotateVideoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          input_content: binary,
          features: [[Google.Cloud.Videointelligence.V1beta2.Feature.t()]],
          video_context: Google.Cloud.Videointelligence.V1beta2.VideoContext.t() | nil,
          output_uri: String.t(),
          location_id: String.t()
        }

  defstruct [:input_uri, :input_content, :features, :video_context, :output_uri, :location_id]

  field :input_uri, 1, type: :string
  field :input_content, 6, type: :bytes

  field :features, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.Feature,
    enum: true

  field :video_context, 3, type: Google.Cloud.Videointelligence.V1beta2.VideoContext
  field :output_uri, 4, type: :string
  field :location_id, 5, type: :string
end

defmodule Google.Cloud.Videointelligence.V1beta2.VideoContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segments: [Google.Cloud.Videointelligence.V1beta2.VideoSegment.t()],
          label_detection_config:
            Google.Cloud.Videointelligence.V1beta2.LabelDetectionConfig.t() | nil,
          shot_change_detection_config:
            Google.Cloud.Videointelligence.V1beta2.ShotChangeDetectionConfig.t() | nil,
          explicit_content_detection_config:
            Google.Cloud.Videointelligence.V1beta2.ExplicitContentDetectionConfig.t() | nil,
          face_detection_config:
            Google.Cloud.Videointelligence.V1beta2.FaceDetectionConfig.t() | nil
        }

  defstruct [
    :segments,
    :label_detection_config,
    :shot_change_detection_config,
    :explicit_content_detection_config,
    :face_detection_config
  ]

  field :segments, 1, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.VideoSegment

  field :label_detection_config, 2,
    type: Google.Cloud.Videointelligence.V1beta2.LabelDetectionConfig

  field :shot_change_detection_config, 3,
    type: Google.Cloud.Videointelligence.V1beta2.ShotChangeDetectionConfig

  field :explicit_content_detection_config, 4,
    type: Google.Cloud.Videointelligence.V1beta2.ExplicitContentDetectionConfig

  field :face_detection_config, 5,
    type: Google.Cloud.Videointelligence.V1beta2.FaceDetectionConfig
end

defmodule Google.Cloud.Videointelligence.V1beta2.LabelDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_detection_mode: Google.Cloud.Videointelligence.V1beta2.LabelDetectionMode.t(),
          stationary_camera: boolean,
          model: String.t()
        }

  defstruct [:label_detection_mode, :stationary_camera, :model]

  field :label_detection_mode, 1,
    type: Google.Cloud.Videointelligence.V1beta2.LabelDetectionMode,
    enum: true

  field :stationary_camera, 2, type: :bool
  field :model, 3, type: :string
end

defmodule Google.Cloud.Videointelligence.V1beta2.ShotChangeDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1beta2.ExplicitContentDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Videointelligence.V1beta2.FaceDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          include_bounding_boxes: boolean
        }

  defstruct [:model, :include_bounding_boxes]

  field :model, 1, type: :string
  field :include_bounding_boxes, 2, type: :bool
end

defmodule Google.Cloud.Videointelligence.V1beta2.VideoSegment do
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

defmodule Google.Cloud.Videointelligence.V1beta2.LabelSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1beta2.VideoSegment.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:segment, :confidence]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1beta2.VideoSegment
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Videointelligence.V1beta2.LabelFrame do
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

defmodule Google.Cloud.Videointelligence.V1beta2.Entity do
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

defmodule Google.Cloud.Videointelligence.V1beta2.LabelAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Cloud.Videointelligence.V1beta2.Entity.t() | nil,
          category_entities: [Google.Cloud.Videointelligence.V1beta2.Entity.t()],
          segments: [Google.Cloud.Videointelligence.V1beta2.LabelSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1beta2.LabelFrame.t()]
        }

  defstruct [:entity, :category_entities, :segments, :frames]

  field :entity, 1, type: Google.Cloud.Videointelligence.V1beta2.Entity
  field :category_entities, 2, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.Entity
  field :segments, 3, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.LabelSegment
  field :frames, 4, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.LabelFrame
end

defmodule Google.Cloud.Videointelligence.V1beta2.ExplicitContentFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          pornography_likelihood: Google.Cloud.Videointelligence.V1beta2.Likelihood.t()
        }

  defstruct [:time_offset, :pornography_likelihood]

  field :time_offset, 1, type: Google.Protobuf.Duration

  field :pornography_likelihood, 2,
    type: Google.Cloud.Videointelligence.V1beta2.Likelihood,
    enum: true
end

defmodule Google.Cloud.Videointelligence.V1beta2.ExplicitContentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          frames: [Google.Cloud.Videointelligence.V1beta2.ExplicitContentFrame.t()]
        }

  defstruct [:frames]

  field :frames, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.ExplicitContentFrame
end

defmodule Google.Cloud.Videointelligence.V1beta2.NormalizedBoundingBox do
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

defmodule Google.Cloud.Videointelligence.V1beta2.FaceSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          segment: Google.Cloud.Videointelligence.V1beta2.VideoSegment.t() | nil
        }

  defstruct [:segment]

  field :segment, 1, type: Google.Cloud.Videointelligence.V1beta2.VideoSegment
end

defmodule Google.Cloud.Videointelligence.V1beta2.FaceFrame do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          normalized_bounding_boxes: [
            Google.Cloud.Videointelligence.V1beta2.NormalizedBoundingBox.t()
          ],
          time_offset: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:normalized_bounding_boxes, :time_offset]

  field :normalized_bounding_boxes, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.NormalizedBoundingBox

  field :time_offset, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Videointelligence.V1beta2.FaceAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          thumbnail: binary,
          segments: [Google.Cloud.Videointelligence.V1beta2.FaceSegment.t()],
          frames: [Google.Cloud.Videointelligence.V1beta2.FaceFrame.t()]
        }

  defstruct [:thumbnail, :segments, :frames]

  field :thumbnail, 1, type: :bytes
  field :segments, 2, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.FaceSegment
  field :frames, 3, repeated: true, type: Google.Cloud.Videointelligence.V1beta2.FaceFrame
end

defmodule Google.Cloud.Videointelligence.V1beta2.VideoAnnotationResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          segment_label_annotations: [Google.Cloud.Videointelligence.V1beta2.LabelAnnotation.t()],
          shot_label_annotations: [Google.Cloud.Videointelligence.V1beta2.LabelAnnotation.t()],
          frame_label_annotations: [Google.Cloud.Videointelligence.V1beta2.LabelAnnotation.t()],
          face_annotations: [Google.Cloud.Videointelligence.V1beta2.FaceAnnotation.t()],
          shot_annotations: [Google.Cloud.Videointelligence.V1beta2.VideoSegment.t()],
          explicit_annotation:
            Google.Cloud.Videointelligence.V1beta2.ExplicitContentAnnotation.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :input_uri,
    :segment_label_annotations,
    :shot_label_annotations,
    :frame_label_annotations,
    :face_annotations,
    :shot_annotations,
    :explicit_annotation,
    :error
  ]

  field :input_uri, 1, type: :string

  field :segment_label_annotations, 2,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.LabelAnnotation

  field :shot_label_annotations, 3,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.LabelAnnotation

  field :frame_label_annotations, 4,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.LabelAnnotation

  field :face_annotations, 5,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.FaceAnnotation

  field :shot_annotations, 6,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.VideoSegment

  field :explicit_annotation, 7,
    type: Google.Cloud.Videointelligence.V1beta2.ExplicitContentAnnotation

  field :error, 9, type: Google.Rpc.Status
end

defmodule Google.Cloud.Videointelligence.V1beta2.AnnotateVideoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_results: [Google.Cloud.Videointelligence.V1beta2.VideoAnnotationResults.t()]
        }

  defstruct [:annotation_results]

  field :annotation_results, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.VideoAnnotationResults
end

defmodule Google.Cloud.Videointelligence.V1beta2.VideoAnnotationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uri: String.t(),
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:input_uri, :progress_percent, :start_time, :update_time]

  field :input_uri, 1, type: :string
  field :progress_percent, 2, type: :int32
  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Videointelligence.V1beta2.AnnotateVideoProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_progress: [
            Google.Cloud.Videointelligence.V1beta2.VideoAnnotationProgress.t()
          ]
        }

  defstruct [:annotation_progress]

  field :annotation_progress, 1,
    repeated: true,
    type: Google.Cloud.Videointelligence.V1beta2.VideoAnnotationProgress
end
