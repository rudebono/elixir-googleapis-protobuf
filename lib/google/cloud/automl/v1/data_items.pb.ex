defmodule Google.Cloud.Automl.V1.DocumentDimensions.DocumentDimensionUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED | :INCH | :CENTIMETER | :POINT

  field :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED, 0
  field :INCH, 1
  field :CENTIMETER, 2
  field :POINT, 3
end
defmodule Google.Cloud.Automl.V1.Document.Layout.TextSegmentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TEXT_SEGMENT_TYPE_UNSPECIFIED
          | :TOKEN
          | :PARAGRAPH
          | :FORM_FIELD
          | :FORM_FIELD_NAME
          | :FORM_FIELD_CONTENTS
          | :TABLE
          | :TABLE_HEADER
          | :TABLE_ROW
          | :TABLE_CELL

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
defmodule Google.Cloud.Automl.V1.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {:image_bytes, binary},
          thumbnail_uri: String.t()
        }

  defstruct data: nil,
            thumbnail_uri: ""

  oneof :data, 0

  field :image_bytes, 1, type: :bytes, json_name: "imageBytes", oneof: 0
  field :thumbnail_uri, 4, type: :string, json_name: "thumbnailUri"
end
defmodule Google.Cloud.Automl.V1.TextSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t(),
          content_uri: String.t()
        }

  defstruct content: "",
            mime_type: "",
            content_uri: ""

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :content_uri, 4, type: :string, json_name: "contentUri"
end
defmodule Google.Cloud.Automl.V1.DocumentDimensions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unit: Google.Cloud.Automl.V1.DocumentDimensions.DocumentDimensionUnit.t(),
          width: float | :infinity | :negative_infinity | :nan,
          height: float | :infinity | :negative_infinity | :nan
        }

  defstruct unit: :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED,
            width: 0.0,
            height: 0.0

  field :unit, 1,
    type: Google.Cloud.Automl.V1.DocumentDimensions.DocumentDimensionUnit,
    enum: true

  field :width, 2, type: :float
  field :height, 3, type: :float
end
defmodule Google.Cloud.Automl.V1.Document.Layout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_segment: Google.Cloud.Automl.V1.TextSegment.t() | nil,
          page_number: integer,
          bounding_poly: Google.Cloud.Automl.V1.BoundingPoly.t() | nil,
          text_segment_type: Google.Cloud.Automl.V1.Document.Layout.TextSegmentType.t()
        }

  defstruct text_segment: nil,
            page_number: 0,
            bounding_poly: nil,
            text_segment_type: :TEXT_SEGMENT_TYPE_UNSPECIFIED

  field :text_segment, 1, type: Google.Cloud.Automl.V1.TextSegment, json_name: "textSegment"
  field :page_number, 2, type: :int32, json_name: "pageNumber"
  field :bounding_poly, 3, type: Google.Cloud.Automl.V1.BoundingPoly, json_name: "boundingPoly"

  field :text_segment_type, 4,
    type: Google.Cloud.Automl.V1.Document.Layout.TextSegmentType,
    json_name: "textSegmentType",
    enum: true
end
defmodule Google.Cloud.Automl.V1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Automl.V1.DocumentInputConfig.t() | nil,
          document_text: Google.Cloud.Automl.V1.TextSnippet.t() | nil,
          layout: [Google.Cloud.Automl.V1.Document.Layout.t()],
          document_dimensions: Google.Cloud.Automl.V1.DocumentDimensions.t() | nil,
          page_count: integer
        }

  defstruct input_config: nil,
            document_text: nil,
            layout: [],
            document_dimensions: nil,
            page_count: 0

  field :input_config, 1,
    type: Google.Cloud.Automl.V1.DocumentInputConfig,
    json_name: "inputConfig"

  field :document_text, 2, type: Google.Cloud.Automl.V1.TextSnippet, json_name: "documentText"
  field :layout, 3, repeated: true, type: Google.Cloud.Automl.V1.Document.Layout

  field :document_dimensions, 4,
    type: Google.Cloud.Automl.V1.DocumentDimensions,
    json_name: "documentDimensions"

  field :page_count, 5, type: :int32, json_name: "pageCount"
end
defmodule Google.Cloud.Automl.V1.ExamplePayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload:
            {:image, Google.Cloud.Automl.V1.Image.t() | nil}
            | {:text_snippet, Google.Cloud.Automl.V1.TextSnippet.t() | nil}
            | {:document, Google.Cloud.Automl.V1.Document.t() | nil}
        }

  defstruct payload: nil

  oneof :payload, 0

  field :image, 1, type: Google.Cloud.Automl.V1.Image, oneof: 0

  field :text_snippet, 2,
    type: Google.Cloud.Automl.V1.TextSnippet,
    json_name: "textSnippet",
    oneof: 0

  field :document, 4, type: Google.Cloud.Automl.V1.Document, oneof: 0
end
