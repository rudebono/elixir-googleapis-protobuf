defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageClassificationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageBoundingBoxAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
  field :x_min, 3, type: :double, json_name: "xMin"
  field :x_max, 4, type: :double, json_name: "xMax"
  field :y_min, 5, type: :double, json_name: "yMin"
  field :y_max, 6, type: :double, json_name: "yMax"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.MaskAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mask_gcs_uri, 1, type: :string, json_name: "maskGcsUri"

  field :annotation_spec_colors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.AnnotationSpecColor,
    json_name: "annotationSpecColors"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolygonAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vertexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Schema.Vertex
  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation.PolylineAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vertexes, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Schema.Vertex
  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageSegmentationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_spec_id, 1, type: :string, json_name: "annotationSpecId"
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextExtractionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TextSegment,
    json_name: "textSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_offset, 1, type: :uint64, json_name: "startOffset"
  field :end_offset, 2, type: :uint64, json_name: "endOffset"
  field :content, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextSentimentAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sentiment, 1, type: :int32
  field :sentiment_max, 2, type: :int32, json_name: "sentimentMax"
  field :annotation_spec_id, 3, type: :string, json_name: "annotationSpecId"
  field :display_name, 4, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoClassificationAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment,
    json_name: "timeSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time_offset, 1, type: Google.Protobuf.Duration, json_name: "startTimeOffset"
  field :end_time_offset, 2, type: Google.Protobuf.Duration, json_name: "endTimeOffset"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoObjectTrackingAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :time_segment, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.TimeSegment,
    json_name: "timeSegment"

  field :annotation_spec_id, 2, type: :string, json_name: "annotationSpecId"
  field :display_name, 3, type: :string, json_name: "displayName"
end