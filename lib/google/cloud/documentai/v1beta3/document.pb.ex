defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Layout.Orientation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ORIENTATION_UNSPECIFIED, 0
  field :PAGE_UP, 1
  field :PAGE_RIGHT, 2
  field :PAGE_DOWN, 3
  field :PAGE_LEFT, 4
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SPACE, 1
  field :WIDE_SPACE, 2
  field :HYPHEN, 3
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.LayoutType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
  field :UPDATE, 7
  field :REPLACE, 3
  field :EVAL_REQUESTED, 4
  field :EVAL_APPROVED, 5
  field :EVAL_SKIPPED, 6
end

defmodule Google.Cloud.Documentai.V1beta3.Document.ShardInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :shard_index, 1, type: :int64, json_name: "shardIndex"
  field :shard_count, 2, type: :int64, json_name: "shardCount"
  field :text_offset, 3, type: :int64, json_name: "textOffset"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Style.FontSize do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size, 1, type: :float
  field :unit, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Style do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_anchor, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor,
    json_name: "textAnchor"

  field :color, 2, type: Google.Type.Color
  field :background_color, 3, type: Google.Type.Color, json_name: "backgroundColor"
  field :font_weight, 4, type: :string, json_name: "fontWeight"
  field :text_style, 5, type: :string, json_name: "textStyle"
  field :text_decoration, 6, type: :string, json_name: "textDecoration"

  field :font_size, 7,
    type: Google.Cloud.Documentai.V1beta3.Document.Style.FontSize,
    json_name: "fontSize"

  field :font_family, 8, type: :string, json_name: "fontFamily"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Dimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :width, 1, type: :float
  field :height, 2, type: :float
  field :unit, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :width, 3, type: :int32
  field :height, 4, type: :int32
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Matrix do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rows, 1, type: :int32
  field :cols, 2, type: :int32
  field :type, 3, type: :int32
  field :data, 4, type: :bytes
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Layout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_anchor, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor,
    json_name: "textAnchor"

  field :confidence, 2, type: :float

  field :bounding_poly, 3,
    type: Google.Cloud.Documentai.V1beta3.BoundingPoly,
    json_name: "boundingPoly"

  field :orientation, 4,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout.Orientation,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Block do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :provenance, 3,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Paragraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :provenance, 3,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Line do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :provenance, 3,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak.Type,
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token.StyleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :font_size, 1, type: :int32, json_name: "fontSize"
  field :pixel_font_size, 2, type: :double, json_name: "pixelFontSize"
  field :letter_spacing, 3, type: :double, json_name: "letterSpacing"
  field :font_type, 4, type: :string, json_name: "fontType"
  field :bold, 5, type: :bool
  field :italic, 6, type: :bool
  field :underlined, 7, type: :bool
  field :strikeout, 8, type: :bool
  field :subscript, 9, type: :bool
  field :superscript, 10, type: :bool
  field :smallcaps, 11, type: :bool
  field :font_weight, 12, type: :int32, json_name: "fontWeight"
  field :handwritten, 13, type: :bool
  field :text_color, 14, type: Google.Type.Color, json_name: "textColor"
  field :background_color, 15, type: Google.Type.Color, json_name: "backgroundColor"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Token do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_break, 2,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.DetectedBreak,
    json_name: "detectedBreak"

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :provenance, 4,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true

  field :style_info, 5,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Token.StyleInfo,
    json_name: "styleInfo"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Symbol do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.VisualElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :type, 2, type: :string

  field :detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cells, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableCell
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableCell do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :row_span, 2, type: :int32, json_name: "rowSpan"
  field :col_span, 3, type: :int32, json_name: "colSpan"

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :header_rows, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow,
    json_name: "headerRows"

  field :body_rows, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Table.TableRow,
    json_name: "bodyRows"

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :provenance, 5,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.FormField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_name, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout,
    json_name: "fieldName"

  field :field_value, 2,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout,
    json_name: "fieldValue"

  field :name_detected_languages, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "nameDetectedLanguages"

  field :value_detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "valueDetectedLanguages"

  field :value_type, 5, type: :string, json_name: "valueType"
  field :corrected_key_text, 6, type: :string, json_name: "correctedKeyText"
  field :corrected_value_text, 7, type: :string, json_name: "correctedValueText"
  field :provenance, 8, type: Google.Cloud.Documentai.V1beta3.Document.Provenance
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.DetectedBarcode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :layout, 1, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout
  field :barcode, 2, type: Google.Cloud.Documentai.V1beta3.Barcode
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.ImageQualityScores.DetectedDefect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page.ImageQualityScores do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quality_score, 1, type: :float, json_name: "qualityScore"

  field :detected_defects, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.ImageQualityScores.DetectedDefect,
    json_name: "detectedDefects"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Page do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_number, 1, type: :int32, json_name: "pageNumber"
  field :image, 13, type: Google.Cloud.Documentai.V1beta3.Document.Page.Image

  field :transforms, 14,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Matrix

  field :dimension, 2, type: Google.Cloud.Documentai.V1beta3.Document.Page.Dimension
  field :layout, 3, type: Google.Cloud.Documentai.V1beta3.Document.Page.Layout

  field :detected_languages, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedLanguage,
    json_name: "detectedLanguages"

  field :blocks, 5, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Block

  field :paragraphs, 6,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.Paragraph

  field :lines, 7, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Line
  field :tokens, 8, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Token

  field :visual_elements, 9,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.VisualElement,
    json_name: "visualElements"

  field :tables, 10, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Table

  field :form_fields, 11,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.FormField,
    json_name: "formFields"

  field :symbols, 12, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page.Symbol

  field :detected_barcodes, 15,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.DetectedBarcode,
    json_name: "detectedBarcodes"

  field :image_quality_scores, 17,
    type: Google.Cloud.Documentai.V1beta3.Document.Page.ImageQualityScores,
    json_name: "imageQualityScores"

  field :provenance, 16,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Entity.NormalizedValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :structured_value, 0

  field :money_value, 2, type: Google.Type.Money, json_name: "moneyValue", oneof: 0
  field :date_value, 3, type: Google.Type.Date, json_name: "dateValue", oneof: 0
  field :datetime_value, 4, type: Google.Type.DateTime, json_name: "datetimeValue", oneof: 0
  field :address_value, 5, type: Google.Type.PostalAddress, json_name: "addressValue", oneof: 0
  field :boolean_value, 6, type: :bool, json_name: "booleanValue", oneof: 0
  field :integer_value, 7, type: :int32, json_name: "integerValue", oneof: 0
  field :float_value, 8, type: :float, json_name: "floatValue", oneof: 0
  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_anchor, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor,
    json_name: "textAnchor",
    deprecated: false

  field :type, 2, type: :string, deprecated: false
  field :mention_text, 3, type: :string, json_name: "mentionText", deprecated: false
  field :mention_id, 4, type: :string, json_name: "mentionId", deprecated: false
  field :confidence, 5, type: :float, deprecated: false

  field :page_anchor, 6,
    type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor,
    json_name: "pageAnchor",
    deprecated: false

  field :id, 7, type: :string, deprecated: false

  field :normalized_value, 9,
    type: Google.Cloud.Documentai.V1beta3.Document.Entity.NormalizedValue,
    json_name: "normalizedValue",
    deprecated: false

  field :properties, 10,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Entity,
    deprecated: false

  field :provenance, 11,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: false

  field :redacted, 12, type: :bool, deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Document.EntityRelation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subject_id, 1, type: :string, json_name: "subjectId"
  field :object_id, 2, type: :string, json_name: "objectId"
  field :relation, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextAnchor.TextSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_index, 1, type: :int64, json_name: "startIndex"
  field :end_index, 2, type: :int64, json_name: "endIndex"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextAnchor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_segments, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor.TextSegment,
    json_name: "textSegments"

  field :content, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page, 1, type: :int64, deprecated: false

  field :layout_type, 2,
    type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef.LayoutType,
    json_name: "layoutType",
    enum: true,
    deprecated: false

  field :layout_id, 3, type: :string, json_name: "layoutId", deprecated: true

  field :bounding_poly, 4,
    type: Google.Cloud.Documentai.V1beta3.BoundingPoly,
    json_name: "boundingPoly",
    deprecated: false

  field :confidence, 5, type: :float, deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Document.PageAnchor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_refs, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.PageAnchor.PageRef,
    json_name: "pageRefs"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Provenance.Parent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revision, 1, type: :int32
  field :index, 3, type: :int32
  field :id, 2, type: :int32, deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Provenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revision, 1, type: :int32, deprecated: true
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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1, type: :string
  field :state_message, 2, type: :string, json_name: "stateMessage"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.Revision do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :agent, 4, type: :string, oneof: 0
  field :processor, 5, type: :string, oneof: 0
  field :id, 1, type: :string
  field :parent, 2, repeated: true, type: :int32, deprecated: true
  field :parent_ids, 7, repeated: true, type: :string, json_name: "parentIds"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :human_review, 6,
    type: Google.Cloud.Documentai.V1beta3.Document.Revision.HumanReview,
    json_name: "humanReview"
end

defmodule Google.Cloud.Documentai.V1beta3.Document.TextChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_anchor, 1,
    type: Google.Cloud.Documentai.V1beta3.Document.TextAnchor,
    json_name: "textAnchor"

  field :changed_text, 2, type: :string, json_name: "changedText"

  field :provenance, 3,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Provenance,
    deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :uri, 1, type: :string, oneof: 0, deprecated: false
  field :content, 2, type: :bytes, oneof: 0, deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType"
  field :text, 4, type: :string, deprecated: false

  field :text_styles, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.Style,
    json_name: "textStyles",
    deprecated: true

  field :pages, 6, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Page
  field :entities, 7, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Entity

  field :entity_relations, 8,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.EntityRelation,
    json_name: "entityRelations"

  field :text_changes, 14,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Document.TextChange,
    json_name: "textChanges"

  field :shard_info, 9,
    type: Google.Cloud.Documentai.V1beta3.Document.ShardInfo,
    json_name: "shardInfo"

  field :error, 10, type: Google.Rpc.Status
  field :revisions, 13, repeated: true, type: Google.Cloud.Documentai.V1beta3.Document.Revision
end