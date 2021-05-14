defmodule Google.Cloud.Automl.V1beta1.DocumentDimensions.DocumentDimensionUnit do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED | :INCH | :CENTIMETER | :POINT

  field :DOCUMENT_DIMENSION_UNIT_UNSPECIFIED, 0

  field :INCH, 1

  field :CENTIMETER, 2

  field :POINT, 3
end

defmodule Google.Cloud.Automl.V1beta1.Document.Layout.TextSegmentType do
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

defmodule Google.Cloud.Automl.V1beta1.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: {atom, any},
          thumbnail_uri: String.t()
        }

  defstruct [:data, :thumbnail_uri]

  oneof :data, 0
  field :image_bytes, 1, type: :bytes, oneof: 0
  field :input_config, 6, type: Google.Cloud.Automl.V1beta1.InputConfig, oneof: 0
  field :thumbnail_uri, 4, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.TextSnippet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t(),
          content_uri: String.t()
        }

  defstruct [:content, :mime_type, :content_uri]

  field :content, 1, type: :string
  field :mime_type, 2, type: :string
  field :content_uri, 4, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.DocumentDimensions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unit: Google.Cloud.Automl.V1beta1.DocumentDimensions.DocumentDimensionUnit.t(),
          width: float | :infinity | :negative_infinity | :nan,
          height: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:unit, :width, :height]

  field :unit, 1,
    type: Google.Cloud.Automl.V1beta1.DocumentDimensions.DocumentDimensionUnit,
    enum: true

  field :width, 2, type: :float
  field :height, 3, type: :float
end

defmodule Google.Cloud.Automl.V1beta1.Document.Layout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_segment: Google.Cloud.Automl.V1beta1.TextSegment.t() | nil,
          page_number: integer,
          bounding_poly: Google.Cloud.Automl.V1beta1.BoundingPoly.t() | nil,
          text_segment_type: Google.Cloud.Automl.V1beta1.Document.Layout.TextSegmentType.t()
        }

  defstruct [:text_segment, :page_number, :bounding_poly, :text_segment_type]

  field :text_segment, 1, type: Google.Cloud.Automl.V1beta1.TextSegment
  field :page_number, 2, type: :int32
  field :bounding_poly, 3, type: Google.Cloud.Automl.V1beta1.BoundingPoly

  field :text_segment_type, 4,
    type: Google.Cloud.Automl.V1beta1.Document.Layout.TextSegmentType,
    enum: true
end

defmodule Google.Cloud.Automl.V1beta1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Automl.V1beta1.DocumentInputConfig.t() | nil,
          document_text: Google.Cloud.Automl.V1beta1.TextSnippet.t() | nil,
          layout: [Google.Cloud.Automl.V1beta1.Document.Layout.t()],
          document_dimensions: Google.Cloud.Automl.V1beta1.DocumentDimensions.t() | nil,
          page_count: integer
        }

  defstruct [:input_config, :document_text, :layout, :document_dimensions, :page_count]

  field :input_config, 1, type: Google.Cloud.Automl.V1beta1.DocumentInputConfig
  field :document_text, 2, type: Google.Cloud.Automl.V1beta1.TextSnippet
  field :layout, 3, repeated: true, type: Google.Cloud.Automl.V1beta1.Document.Layout
  field :document_dimensions, 4, type: Google.Cloud.Automl.V1beta1.DocumentDimensions
  field :page_count, 5, type: :int32
end

defmodule Google.Cloud.Automl.V1beta1.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_spec_ids: [String.t()],
          values: [Google.Protobuf.Value.t()]
        }

  defstruct [:column_spec_ids, :values]

  field :column_spec_ids, 2, repeated: true, type: :string
  field :values, 3, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Automl.V1beta1.ExamplePayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: {atom, any}
        }

  defstruct [:payload]

  oneof :payload, 0
  field :image, 1, type: Google.Cloud.Automl.V1beta1.Image, oneof: 0
  field :text_snippet, 2, type: Google.Cloud.Automl.V1beta1.TextSnippet, oneof: 0
  field :document, 4, type: Google.Cloud.Automl.V1beta1.Document, oneof: 0
  field :row, 3, type: Google.Cloud.Automl.V1beta1.Row, oneof: 0
end
