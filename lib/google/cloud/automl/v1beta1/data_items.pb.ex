defmodule Google.Cloud.Automl.V1beta1.DocumentDimensions.DocumentDimensionUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED, 0
  field :INCH, 1
  field :CENTIMETER, 2
  field :POINT, 3
end

defmodule Google.Cloud.Automl.V1beta1.Document.Layout.TextSegmentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEXT_SEGMENT_TYPE_UNSPECIFIED, 0
  field :TOKEN, 1
  field :PARAGRAPH, 2
  field :FORM_FIELD, 3
  field :FORM_FIELD_NAME, 4
  field :FORM_FIELD_CONTENTS, 5
  field :TABLE, 6
  field :TABLE_HEADER, 7
  field :TABLE_ROW, 8
  field :TABLE_CELL, 9
end

defmodule Google.Cloud.Automl.V1beta1.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :image_bytes, 1, type: :bytes, json_name: "imageBytes", oneof: 0

  field :input_config, 6,
    type: Google.Cloud.Automl.V1beta1.InputConfig,
    json_name: "inputConfig",
    oneof: 0

  field :thumbnail_uri, 4, type: :string, json_name: "thumbnailUri"
end

defmodule Google.Cloud.Automl.V1beta1.TextSnippet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :content_uri, 4, type: :string, json_name: "contentUri"
end

defmodule Google.Cloud.Automl.V1beta1.DocumentDimensions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit, 1,
    type: Google.Cloud.Automl.V1beta1.DocumentDimensions.DocumentDimensionUnit,
    enum: true

  field :width, 2, type: :float
  field :height, 3, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.Document.Layout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text_segment, 1, type: Google.Cloud.Automl.V1beta1.TextSegment, json_name: "textSegment"
  field :page_number, 2, type: :int32, json_name: "pageNumber"

  field :bounding_poly, 3,
    type: Google.Cloud.Automl.V1beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :text_segment_type, 4,
    type: Google.Cloud.Automl.V1beta1.Document.Layout.TextSegmentType,
    json_name: "textSegmentType",
    enum: true
end

defmodule Google.Cloud.Automl.V1beta1.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_config, 1,
    type: Google.Cloud.Automl.V1beta1.DocumentInputConfig,
    json_name: "inputConfig"

  field :document_text, 2,
    type: Google.Cloud.Automl.V1beta1.TextSnippet,
    json_name: "documentText"

  field :layout, 3, repeated: true, type: Google.Cloud.Automl.V1beta1.Document.Layout

  field :document_dimensions, 4,
    type: Google.Cloud.Automl.V1beta1.DocumentDimensions,
    json_name: "documentDimensions"

  field :page_count, 5, type: :int32, json_name: "pageCount"
end

defmodule Google.Cloud.Automl.V1beta1.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_spec_ids, 2, repeated: true, type: :string, json_name: "columnSpecIds"
  field :values, 3, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Automl.V1beta1.ExamplePayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :payload, 0

  field :image, 1, type: Google.Cloud.Automl.V1beta1.Image, oneof: 0

  field :text_snippet, 2,
    type: Google.Cloud.Automl.V1beta1.TextSnippet,
    json_name: "textSnippet",
    oneof: 0

  field :document, 4, type: Google.Cloud.Automl.V1beta1.Document, oneof: 0
  field :row, 3, type: Google.Cloud.Automl.V1beta1.Row, oneof: 0
end
