defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Layout.Orientation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIENTATION_UNSPECIFIED | :PAGE_UP | :PAGE_RIGHT | :PAGE_DOWN | :PAGE_LEFT

  field :ORIENTATION_UNSPECIFIED, 0

  field :PAGE_UP, 1

  field :PAGE_RIGHT, 2

  field :PAGE_DOWN, 3

  field :PAGE_LEFT, 4
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SPACE | :WIDE_SPACE | :HYPHEN

  field :TYPE_UNSPECIFIED, 0

  field :SPACE, 1

  field :WIDE_SPACE, 2

  field :HYPHEN, 3
end

defmodule Google.Cloud.Documentai.V1beta1.Document.ShardInfo do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.Style.FontSize do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.Style do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta1.Document.TextAnchor.t() | nil,
          color: Google.Type.Color.t() | nil,
          background_color: Google.Type.Color.t() | nil,
          font_weight: String.t(),
          text_style: String.t(),
          text_decoration: String.t(),
          font_size: Google.Cloud.Documentai.V1beta1.Document.Style.FontSize.t() | nil
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

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta1.Document.TextAnchor
  field :color, 2, type: Google.Type.Color
  field :background_color, 3, type: Google.Type.Color
  field :font_weight, 4, type: :string
  field :text_style, 5, type: :string
  field :text_decoration, 6, type: :string
  field :font_size, 7, type: Google.Cloud.Documentai.V1beta1.Document.Style.FontSize
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Dimension do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Layout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta1.Document.TextAnchor.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan,
          bounding_poly: Google.Cloud.Documentai.V1beta1.BoundingPoly.t() | nil,
          orientation: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.Orientation.t()
        }

  defstruct [:text_anchor, :confidence, :bounding_poly, :orientation]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta1.Document.TextAnchor
  field :confidence, 2, type: :float
  field :bounding_poly, 3, type: Google.Cloud.Documentai.V1beta1.BoundingPoly

  field :orientation, 4,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.Orientation,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Block do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Paragraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Line do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak.Type.t()
        }

  defstruct [:type]

  field :type, 1,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak.Type,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Token do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          detected_break:
            Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :detected_break, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :detected_break, 2,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Token.DetectedBreak

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.VisualElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          type: String.t(),
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :type, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout
  field :type, 2, type: :string

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cells: [Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableCell.t()]
        }

  defstruct [:cells]

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableCell
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableCell do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          row_span: integer,
          col_span: integer,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :row_span, :col_span, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout
  field :row_span, 2, type: :int32
  field :col_span, 3, type: :int32

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          header_rows: [Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableRow.t()],
          body_rows: [Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableRow.t()],
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()]
        }

  defstruct [:layout, :header_rows, :body_rows, :detected_languages]

  field :layout, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :header_rows, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableRow

  field :body_rows, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Table.TableRow

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.FormField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_name: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          field_value: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          name_detected_languages: [
            Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()
          ],
          value_detected_languages: [
            Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()
          ]
        }

  defstruct [:field_name, :field_value, :name_detected_languages, :value_detected_languages]

  field :field_name, 1, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout
  field :field_value, 2, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :name_detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage

  field :value_detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.Page do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_number: integer,
          dimension: Google.Cloud.Documentai.V1beta1.Document.Page.Dimension.t() | nil,
          layout: Google.Cloud.Documentai.V1beta1.Document.Page.Layout.t() | nil,
          detected_languages: [Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage.t()],
          blocks: [Google.Cloud.Documentai.V1beta1.Document.Page.Block.t()],
          paragraphs: [Google.Cloud.Documentai.V1beta1.Document.Page.Paragraph.t()],
          lines: [Google.Cloud.Documentai.V1beta1.Document.Page.Line.t()],
          tokens: [Google.Cloud.Documentai.V1beta1.Document.Page.Token.t()],
          visual_elements: [Google.Cloud.Documentai.V1beta1.Document.Page.VisualElement.t()],
          tables: [Google.Cloud.Documentai.V1beta1.Document.Page.Table.t()],
          form_fields: [Google.Cloud.Documentai.V1beta1.Document.Page.FormField.t()]
        }

  defstruct [
    :page_number,
    :dimension,
    :layout,
    :detected_languages,
    :blocks,
    :paragraphs,
    :lines,
    :tokens,
    :visual_elements,
    :tables,
    :form_fields
  ]

  field :page_number, 1, type: :int32
  field :dimension, 2, type: Google.Cloud.Documentai.V1beta1.Document.Page.Dimension
  field :layout, 3, type: Google.Cloud.Documentai.V1beta1.Document.Page.Layout

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.DetectedLanguage

  field :blocks, 5, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Page.Block

  field :paragraphs, 6,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.Paragraph

  field :lines, 7, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Page.Line
  field :tokens, 8, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Page.Token

  field :visual_elements, 9,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.VisualElement

  field :tables, 10, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Page.Table

  field :form_fields, 11,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.Page.FormField
end

defmodule Google.Cloud.Documentai.V1beta1.Document.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_anchor: Google.Cloud.Documentai.V1beta1.Document.TextAnchor.t() | nil,
          type: String.t(),
          mention_text: String.t(),
          mention_id: String.t()
        }

  defstruct [:text_anchor, :type, :mention_text, :mention_id]

  field :text_anchor, 1, type: Google.Cloud.Documentai.V1beta1.Document.TextAnchor
  field :type, 2, type: :string
  field :mention_text, 3, type: :string
  field :mention_id, 4, type: :string
end

defmodule Google.Cloud.Documentai.V1beta1.Document.EntityRelation do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.TextAnchor.TextSegment do
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

defmodule Google.Cloud.Documentai.V1beta1.Document.TextAnchor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_segments: [Google.Cloud.Documentai.V1beta1.Document.TextAnchor.TextSegment.t()]
        }

  defstruct [:text_segments]

  field :text_segments, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.TextAnchor.TextSegment
end

defmodule Google.Cloud.Documentai.V1beta1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          mime_type: String.t(),
          text: String.t(),
          text_styles: [Google.Cloud.Documentai.V1beta1.Document.Style.t()],
          pages: [Google.Cloud.Documentai.V1beta1.Document.Page.t()],
          entities: [Google.Cloud.Documentai.V1beta1.Document.Entity.t()],
          entity_relations: [Google.Cloud.Documentai.V1beta1.Document.EntityRelation.t()],
          shard_info: Google.Cloud.Documentai.V1beta1.Document.ShardInfo.t() | nil,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [
    :source,
    :mime_type,
    :text,
    :text_styles,
    :pages,
    :entities,
    :entity_relations,
    :shard_info,
    :error
  ]

  oneof :source, 0
  field :uri, 1, type: :string, oneof: 0
  field :content, 2, type: :bytes, oneof: 0
  field :mime_type, 3, type: :string
  field :text, 4, type: :string
  field :text_styles, 5, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Style
  field :pages, 6, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Page
  field :entities, 7, repeated: true, type: Google.Cloud.Documentai.V1beta1.Document.Entity

  field :entity_relations, 8,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.Document.EntityRelation

  field :shard_info, 9, type: Google.Cloud.Documentai.V1beta1.Document.ShardInfo
  field :error, 10, type: Google.Rpc.Status
end
