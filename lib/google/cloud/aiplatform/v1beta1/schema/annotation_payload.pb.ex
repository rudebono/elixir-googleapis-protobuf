defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct annotation_spec_id: "",
            display_name: ""

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageBoundingBoxAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_id: String.t(),
          display_name: String.t(),
          x_min: float | :infinity | :negative_infinity | :nan,
          x_max: float | :infinity | :negative_infinity | :nan,
          y_min: float | :infinity | :negative_infinity | :nan,
          y_max: float | :infinity | :negative_infinity | :nan
        }

  defstruct annotation_spec_id: "",
            display_name: "",
            x_min: 0.0,
            x_max: 0.0,
            y_min: 0.0,
            y_max: 0.0

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :x_min, 3, type: :double, json_name: "xMin"
  field :x_max, 4, type: :double, json_name: "xMax"
  field :y_min, 5, type: :double, json_name: "yMin"
  field :y_max, 6, type: :double, json_name: "yMax"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.MaskAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mask_gcs_uri: String.t(),
          annotation_spec_colors: [Google.Cloud.Aiplatform.V1beta1.Schema.AnnotationSpecColor.t()]
        }

  defstruct mask_gcs_uri: "",
            annotation_spec_colors: []

  field :mask_gcs_uri, 1, type: :string, json_name: "maskGcsUri"

  field :annotation_spec_colors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.AnnotationSpecColor,
    json_name: "annotationSpecColors"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolygonAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertexes: [Google.Cloud.Aiplatform.V1beta1.Schema.Vertex.t()],
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct vertexes: [],
            annotation_spec_id: "",
            display_name: ""

  field :vertexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Schema.Vertex
  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolylineAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vertexes: [Google.Cloud.Aiplatform.V1beta1.Schema.Vertex.t()],
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct vertexes: [],
            annotation_spec_id: "",
            display_name: ""

  field :vertexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Schema.Vertex
  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation:
            {:mask_annotation,
             Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.MaskAnnotation.t()
             | nil}
            | {:polygon_annotation,
               Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolygonAnnotation.t()
               | nil}
            | {:polyline_annotation,
               Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolylineAnnotation.t()
               | nil}
        }

  defstruct annotation: nil

  oneof :annotation, 0

  field :mask_annotation, 3,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.MaskAnnotation,
    json_name: "maskAnnotation",
    oneof: 0

  field :polygon_annotation, 4,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolygonAnnotation,
    json_name: "polygonAnnotation",
    oneof: 0

  field :polyline_annotation, 5,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolylineAnnotation,
    json_name: "polylineAnnotation",
    oneof: 0
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct annotation_spec_id: "",
            display_name: ""

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextExtractionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_segment: Google.Cloud.Aiplatform.V1beta1.Schema.TextSegment.t() | nil,
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct text_segment: nil,
            annotation_spec_id: "",
            display_name: ""

  field :text_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TextSegment,
    json_name: "textSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_offset: non_neg_integer,
          end_offset: non_neg_integer,
          content: String.t()
        }

  defstruct start_offset: 0,
            end_offset: 0,
            content: ""

  field :start_offset, 1, type: :uint64, json_name: "startOffset"
  field :end_offset, 2, type: :uint64, json_name: "endOffset"
  field :content, 3, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextSentimentAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment: integer,
          sentiment_max: integer,
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct sentiment: 0,
            sentiment_max: 0,
            annotation_spec_id: "",
            display_name: ""

  field :sentiment, 1, type: :int32
  field :sentiment_max, 2, type: :int32, json_name: "sentimentMax"
  field :annotation_spec_id, 3, type: :string, json_name: "annotationSpecId"
  field :display_name, 4, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoClassificationAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_segment: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment.t() | nil,
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct time_segment: nil,
            annotation_spec_id: "",
            display_name: ""

  field :time_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment,
    json_name: "timeSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment do
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
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoObjectTrackingAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_offset: Google.Protobuf.Duration.t() | nil,
          x_min: float | :infinity | :negative_infinity | :nan,
          x_max: float | :infinity | :negative_infinity | :nan,
          y_min: float | :infinity | :negative_infinity | :nan,
          y_max: float | :infinity | :negative_infinity | :nan,
          instance_id: integer,
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct time_offset: nil,
            x_min: 0.0,
            x_max: 0.0,
            y_min: 0.0,
            y_max: 0.0,
            instance_id: 0,
            annotation_spec_id: "",
            display_name: ""

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :x_min, 2, type: :double, json_name: "xMin"
  field :x_max, 3, type: :double, json_name: "xMax"
  field :y_min, 4, type: :double, json_name: "yMin"
  field :y_max, 5, type: :double, json_name: "yMax"
  field :instance_id, 6, type: :int64, json_name: "instanceId"
  field :annotation_spec_id, 7, type: :string, json_name: "annotationSpecId"
  field :display_name, 8, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoActionRecognitionAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_segment: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment.t() | nil,
          annotation_spec_id: String.t(),
          display_name: String.t()
        }

  defstruct time_segment: nil,
            annotation_spec_id: "",
            display_name: ""

  field :time_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment,
    json_name: "timeSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end
