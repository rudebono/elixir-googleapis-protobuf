defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Layout.Orientation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIENTATION_UNSPECIFIED | :PAGE_UP | :PAGE_RIGHT | :PAGE_DOWN | :PAGE_LEFT

  field :ORIENTATION_UNSPECIFIED, 0

  field :PAGE_UP, 1

  field :PAGE_RIGHT, 2

  field :PAGE_DOWN, 3

  field :PAGE_LEFT, 4
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SPACE | :WIDE_SPACE | :HYPHEN

  field :TYPE_UNSPECIFIED, 0

  field :SPACE, 1

  field :WIDE_SPACE, 2

  field :HYPHEN, 3
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.LayoutType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LAYOUT_TYPE_UNSPECIFIED
          | :BLOCK
          | :PARAGRAPH
          | :LINE
          | :TOKEN
          | :VISUAL_ELEMENT
          | :TABLE
          | :FORM_FIELD

  field :LAYOUT_TYPE_UNSPECIFIED, 0

  field :BLOCK, 1

  field :PARAGRAPH, 2

  field :LINE, 3

  field :TOKEN, 4

  field :VISUAL_ELEMENT, 5

  field :TABLE, 6

  field :FORM_FIELD, 7
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Provenance.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_TYPE_UNSPECIFIED
          | :ADD
          | :REMOVE
          | :REPLACE
          | :EVAL_REQUESTED
          | :EVAL_APPROVED
          | :EVAL_SKIPPED

  field :OPERATION_TYPE_UNSPECIFIED, 0

  field :ADD, 1

  field :REMOVE, 2

  field :REPLACE, 3

  field :EVAL_REQUESTED, 4

  field :EVAL_APPROVED, 5

  field :EVAL_SKIPPED, 6
end

defmodule Google.Cloud.Documentai.V1beta3.Document.ShardInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shard_index: integer,
          shard_count: integer,
          text_offset: integer
        }

  defstruct [:shard_index, :shard_count, :text_offset]

  field :shard_index, 1, type: :int64
  field :shard_count, 2, type: :int64
  field :text_offset, 3, type: :int64
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Style.FontSize do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          size: float | :infinity | :negative_infinity | :nan,
          unit: String.t()
        }

  defstruct [:size, :unit]

  field :size, 1, type: :float
  field :unit, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Style do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.t() | nil,
          color: Google.Type.Color.t() | nil,
          background_color: Google.Type.Color.t() | nil,
          font_weight: String.t(),
          text_style: String.t(),
          text_decoration: String.t(),
          font_size: Google.Cloud.Documentai.V1beta3.Document.Style.FontSize.t() | nil
        }

  defstruct [
    :text_anchor,
    :color,
    :background_color,
    :font_weight,
    :text_style,
    :text_decoration,
    :font_size
  ]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor
  field :color, 2, type: Google.Type.Color
  field :background_color, 3, type: Google.Type.Color
  field :font_weight, 4, type: :string
  field :text_style, 5, type: :string
  field :text_decoration, 6, type: :string
  field :font_size, 7, type: Google.Cloud.Documentai.V1beta3.Document.Style.FontSize
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Dimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          width: float | :infinity | :negative_infinity | :nan,
          height: float | :infinity | :negative_infinity | :nan,
          unit: String.t()
        }

  defstruct [:width, :height, :unit]

  field :width, 1, type: :float
  field :height, 2, type: :float
  field :unit, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          mime_type: String.t(),
          width: integer,
          height: integer
        }

  defstruct [:content, :mime_type, :width, :height]

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string
  field :width, 3, type: :int32
  field :height, 4, type: :int32
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Matrix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: integer,
          cols: integer,
          type: integer,
          data: binary
        }

  defstruct [:rows, :cols, :type, :data]

  field :rows, 1, type: :int32
  field :cols, 2, type: :int32
  field :type, 3, type: :int32
  field :data, 4, type: :bytes
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Layout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          bounding_poly: Google.Cloud.Documentai.V1beta3.BoundingPoly.t() | nil,
          orientation: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.Orientation.t()
        }

  defstruct [:text_anchor, :confidence, :bounding_poly, :orientation]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor
  field :confidence, 2, type: :float
  field :bounding_poly, 3, type: Google.Cloud.Documentai.V1beta3.BoundingPoly

  field :orientation, 4,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.Orientation,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Block do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [:layout, :detected_languages, :provenance]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :provenance, 3, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Paragraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [:layout, :detected_languages, :provenance]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :provenance, 3, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Line do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [:layout, :detected_languages, :provenance]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :provenance, 3, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.Type.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.Type,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          detected_break:
            Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [:layout, :detected_break, :detected_languages, :provenance]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_break, 2,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :provenance, 4, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.VisualElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          type: String.t(),
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :type, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :type, 2, type: :string

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableCell.t()]
        }

  defstruct [:cells]

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableCell
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          row_span: integer,
          col_span: integer,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :row_span, :col_span, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :row_span, 2, type: :int32
  field :col_span, 3, type: :int32

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          header_rows: [Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow.t()],
          body_rows: [Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow.t()],
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :header_rows, :body_rows, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :header_rows, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow

  field :body_rows, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.FormField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_name: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          field_value: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          name_detected_languages: [
            Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()
          ],
          value_detected_languages: [
            Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()
          ],
          value_type: String.t(),
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [
    :field_name,
    :field_value,
    :name_detected_languages,
    :value_detected_languages,
    :value_type,
    :provenance
  ]

  field :field_name, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :field_value, 2, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :name_detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :value_detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :value_type, 5, type: :string
  field :provenance, 8, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:language_code, :confidence]

  field :language_code, 1, type: :string
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_number: integer,
          image: Google.Cloud.Documentai.V1beta3.Document.Page.Image.t() | nil,
          transforms: [Google.Cloud.Documentai.V1beta3.Document.Page.Matrix.t()],
          dimension: Google.Cloud.Documentai.V1beta3.Document.Page.Dimension.t() | nil,
          layout: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage.t()],
          blocks: [Google.Cloud.Documentai.V1beta3.Document.Page.Block.t()],
          paragraphs: [Google.Cloud.Documentai.V1beta3.Document.Page.Paragraph.t()],
          lines: [Google.Cloud.Documentai.V1beta3.Document.Page.Line.t()],
          tokens: [Google.Cloud.Documentai.V1beta3.Document.Page.Token.t()],
          visual_elements: [Google.Cloud.Documentai.V1beta3.Document.Page.VisualElement.t()],
          tables: [Google.Cloud.Documentai.V1beta3.Document.Page.Table.t()],
          form_fields: [Google.Cloud.Documentai.V1beta3.Document.Page.FormField.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil
        }

  defstruct [
    :page_number,
    :image,
    :transforms,
    :dimension,
    :layout,
    :detected_languages,
    :blocks,
    :paragraphs,
    :lines,
    :tokens,
    :visual_elements,
    :tables,
    :form_fields,
    :provenance
  ]

  field :page_number, 1, type: :int32
  field :image, 13, type: Google.Cloud.Documentai.V1beta3.Document.Page.Image

  field :transforms, 14,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Matrix

  field :dimension, 2, type: Google.Cloud.Documentai.V1beta3.Document.Page.Dimension
  field :layout, 3, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage

  field :blocks, 5, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Block

  field :paragraphs, 6,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Paragraph

  field :lines, 7, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Line
  field :tokens, 8, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Token

  field :visual_elements, 9,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.VisualElement

  field :tables, 10, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Table

  field :form_fields, 11,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.FormField

  field :provenance, 16, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Entity.NormalizedValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          structured_value: {atom, any},
          text: String.t()
        }

  defstruct [:structured_value, :text]

  oneof :structured_value, 0
  field :money_value, 2, type: Google.Type.Money, oneof: 0
  field :date_value, 3, type: Google.Type.Date, oneof: 0
  field :datetime_value, 4, type: Google.Type.DateTime, oneof: 0
  field :address_value, 5, type: Google.Type.PostalAddress, oneof: 0
  field :boolean_value, 6, type: :bool, oneof: 0
  field :text, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.t() | nil,
          type: String.t(),
          mention_text: String.t(),
          mention_id: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          page_anchor: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.t() | nil,
          id: String.t(),
          normalized_value:
            Google.Cloud.Documentai.V1beta3.Document.Entity.NormalizedValue.t() | nil,
          properties: [Google.Cloud.Documentai.V1beta3.Document.Entity.t()],
          provenance: Google.Cloud.Documentai.V1beta3.Document.Provenance.t() | nil,
          redacted: boolean
        }

  defstruct [
    :text_anchor,
    :type,
    :mention_text,
    :mention_id,
    :confidence,
    :page_anchor,
    :id,
    :normalized_value,
    :properties,
    :provenance,
    :redacted
  ]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor
  field :type, 2, type: :string
  field :mention_text, 3, type: :string
  field :mention_id, 4, type: :string
  field :confidence, 5, type: :float
  field :page_anchor, 6, type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor
  field :id, 7, type: :string

  field :normalized_value, 9,
    type: Google.Cloud.Documentai.V1beta3.Document.Entity.NormalizedValue

  field :properties, 10, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Entity
  field :provenance, 11, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
  field :redacted, 12, type: :bool
end

defmodule Google.Cloud.Documentai.V1beta3.Document.EntityRelation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subject_id: String.t(),
          object_id: String.t(),
          relation: String.t()
        }

  defstruct [:subject_id, :object_id, :relation]

  field :subject_id, 1, type: :string
  field :object_id, 2, type: :string
  field :relation, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextAnchor.TextSegment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_index: integer,
          end_index: integer
        }

  defstruct [:start_index, :end_index]

  field :start_index, 1, type: :int64
  field :end_index, 2, type: :int64
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextAnchor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_segments: [Google.Cloud.Documentai.V1beta3.Document.TextAnchor.TextSegment.t()],
          content: String.t()
        }

  defstruct [:text_segments, :content]

  field :text_segments, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.TextSegment

  field :content, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page: integer,
          layout_type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.LayoutType.t(),
          layout_id: String.t(),
          bounding_poly: Google.Cloud.Documentai.V1beta3.BoundingPoly.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:page, :layout_type, :layout_id, :bounding_poly, :confidence]

  field :page, 1, type: :int64

  field :layout_type, 2,
    type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.LayoutType,
    enum: true

  field :layout_id, 3, type: :string, deprecated: true
  field :bounding_poly, 4, type: Google.Cloud.Documentai.V1beta3.BoundingPoly
  field :confidence, 5, type: :float
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_refs: [Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.t()]
        }

  defstruct [:page_refs]

  field :page_refs, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Provenance.Parent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: integer,
          index: integer,
          id: integer
        }

  defstruct [:revision, :index, :id]

  field :revision, 1, type: :int32
  field :index, 3, type: :int32
  field :id, 2, type: :int32, deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Provenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: integer,
          id: integer,
          parents: [Google.Cloud.Documentai.V1beta3.Document.Provenance.Parent.t()],
          type: Google.Cloud.Documentai.V1beta3.Document.Provenance.OperationType.t()
        }

  defstruct [:revision, :id, :parents, :type]

  field :revision, 1, type: :int32
  field :id, 2, type: :int32, deprecated: true

  field :parents, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance.Parent

  field :type, 4,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance.OperationType,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Revision.HumanReview do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: String.t(),
          state_message: String.t()
        }

  defstruct [:state, :state_message]

  field :state, 1, type: :string
  field :state_message, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Revision do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          id: String.t(),
          parent: [integer],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          human_review: Google.Cloud.Documentai.V1beta3.Document.Revision.HumanReview.t() | nil
        }

  defstruct [:source, :id, :parent, :create_time, :human_review]

  oneof :source, 0
  field :agent, 4, type: :string, oneof: 0
  field :processor, 5, type: :string, oneof: 0
  field :id, 1, type: :string
  field :parent, 2, repeated: true, type: :int32
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :human_review, 6, type: Google.Cloud.Documentai.V1beta3.Document.Revision.HumanReview
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.t() | nil,
          changed_text: String.t(),
          provenance: [Google.Cloud.Documentai.V1beta3.Document.Provenance.t()]
        }

  defstruct [:text_anchor, :changed_text, :provenance]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor
  field :changed_text, 2, type: :string
  field :provenance, 3, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          mime_type: String.t(),
          text: String.t(),
          text_styles: [Google.Cloud.Documentai.V1beta3.Document.Style.t()],
          pages: [Google.Cloud.Documentai.V1beta3.Document.Page.t()],
          entities: [Google.Cloud.Documentai.V1beta3.Document.Entity.t()],
          entity_relations: [Google.Cloud.Documentai.V1beta3.Document.EntityRelation.t()],
          text_changes: [Google.Cloud.Documentai.V1beta3.Document.TextChange.t()],
          shard_info: Google.Cloud.Documentai.V1beta3.Document.ShardInfo.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          revisions: [Google.Cloud.Documentai.V1beta3.Document.Revision.t()]
        }

  defstruct [
    :source,
    :mime_type,
    :text,
    :text_styles,
    :pages,
    :entities,
    :entity_relations,
    :text_changes,
    :shard_info,
    :error,
    :revisions
  ]

  oneof :source, 0
  field :uri, 1, type: :string, oneof: 0
  field :content, 2, type: :bytes, oneof: 0
  field :mime_type, 3, type: :string
  field :text, 4, type: :string
  field :text_styles, 5, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Style
  field :pages, 6, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page
  field :entities, 7, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Entity

  field :entity_relations, 8,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.EntityRelation

  field :text_changes, 14,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.TextChange

  field :shard_info, 9, type: Google.Cloud.Documentai.V1beta3.Document.ShardInfo
  field :error, 10, type: Google.Rpc.Status
  field :revisions, 13, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Revision
end
