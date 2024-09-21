defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.BreakType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SPACE, 1
  field :SURE_SPACE, 2
  field :EOL_SURE_SPACE, 3
  field :HYPHEN, 4
  field :LINE_BREAK, 5
end

defmodule Google.Cloud.Vision.V1p1beta1.Block.BlockType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNKNOWN, 0
  field :TEXT, 1
  field :TABLE, 2
  field :PICTURE, 3
  field :RULER, 4
  field :BARCODE, 5
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedLanguage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :confidence, 2, type: :float
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak.BreakType,
    enum: true

  field :is_prefix, 2, type: :bool, json_name: "isPrefix"
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :detected_languages, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedLanguage,
    json_name: "detectedLanguages"

  field :detected_break, 2,
    type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.DetectedBreak,
    json_name: "detectedBreak"
end

defmodule Google.Cloud.Vision.V1p1beta1.TextAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pages, 1, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Page
  field :text, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p1beta1.Page do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty
  field :width, 2, type: :int32
  field :height, 3, type: :int32
  field :blocks, 4, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Block
  field :confidence, 5, type: :float
end

defmodule Google.Cloud.Vision.V1p1beta1.Block do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :paragraphs, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Paragraph

  field :block_type, 4,
    type: Google.Cloud.Vision.V1p1beta1.Block.BlockType,
    json_name: "blockType",
    enum: true

  field :confidence, 5, type: :float
end

defmodule Google.Cloud.Vision.V1p1beta1.Paragraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :words, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Word
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Vision.V1p1beta1.Word do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :symbols, 3, repeated: true, type: Google.Cloud.Vision.V1p1beta1.Symbol
  field :confidence, 4, type: :float
end

defmodule Google.Cloud.Vision.V1p1beta1.Symbol do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :property, 1, type: Google.Cloud.Vision.V1p1beta1.TextAnnotation.TextProperty

  field :bounding_box, 2,
    type: Google.Cloud.Vision.V1p1beta1.BoundingPoly,
    json_name: "boundingBox"

  field :text, 3, type: :string
  field :confidence, 4, type: :float
end