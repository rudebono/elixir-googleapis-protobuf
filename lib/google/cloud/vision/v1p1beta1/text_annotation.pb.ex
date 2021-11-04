defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.BreakType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :SPACE | :SURE_SPACE | :EOL_SURE_SPACE | :HYPHEN | :LINE_BREAK

  field :UNKNOWN, 0
  field :SPACE, 1
  field :SURE_SPACE, 2
  field :EOL_SURE_SPACE, 3
  field :HYPHEN, 4
  field :LINE_BREAK, 5
end

defmodule Google.Cloud.Vision.V1p1beta1.Block.BlockType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :TEXT | :TABLE | :PICTURE | :RULER | :BARCODE

  field :UNKNOWN, 0
  field :TEXT, 1
  field :TABLE, 2
  field :PICTURE, 3
  field :RULER, 4
  field :BARCODE, 5
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedLanguage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:language_code, :confidence]

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :confidence, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.BreakType.t(),
          is_prefix: boolean
        }

  defstruct [:type, :is_prefix]

  field :type, 1,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.BreakType,
    enum: true

  field :is_prefix, 2, type: :bool, json_name: "isPrefix"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detected_languages: [Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedLanguage.t()],
          detected_break: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.t() | nil
        }

  defstruct [:detected_languages, :detected_break]

  field :detected_languages, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedLanguage,
    json_name: "detectedLanguages"

  field :detected_break, 2,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak,
    json_name: "detectedBreak"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pages: [Google.Cloud.Vision.V1p1beta1.Page.t()],
          text: String.t()
        }

  defstruct [:pages, :text]

  field :pages, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Page
  field :text, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.Page do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty.t() | nil,
          width: integer,
          height: integer,
          blocks: [Google.Cloud.Vision.V1p1beta1.Block.t()],
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:property, :width, :height, :blocks, :confidence]

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty
  field :width, 2, type: :int32
  field :height, 3, type: :int32
  field :blocks, 4, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Block
  field :confidence, 5, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.Block do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty.t() | nil,
          bounding_box: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          paragraphs: [Google.Cloud.Vision.V1p1beta1.Paragraph.t()],
          block_type: Google.Cloud.Vision.V1p1beta1.Block.BlockType.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:property, :bounding_box, :paragraphs, :block_type, :confidence]

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :paragraphs, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Paragraph

  field :block_type, 4,
    type: Google.Cloud.Vision.V1p1beta1.Block.BlockType,
    enum: true,
    json_name: "blockType"

  field :confidence, 5, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.Paragraph do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty.t() | nil,
          bounding_box: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          words: [Google.Cloud.Vision.V1p1beta1.Word.t()],
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:property, :bounding_box, :words, :confidence]

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :words, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Word
  field :confidence, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.Word do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty.t() | nil,
          bounding_box: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          symbols: [Google.Cloud.Vision.V1p1beta1.Symbol.t()],
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:property, :bounding_box, :symbols, :confidence]

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :symbols, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Symbol
  field :confidence, 4, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p1beta1.Symbol do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty.t() | nil,
          bounding_box: Google.Cloud.Vision.V1p1beta1.BoundingPoly.t() | nil,
          text: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:property, :bounding_box, :text, :confidence]

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :text, 3, type: :string
  field :confidence, 4, type: :float

  def transform_module(), do: nil
end
