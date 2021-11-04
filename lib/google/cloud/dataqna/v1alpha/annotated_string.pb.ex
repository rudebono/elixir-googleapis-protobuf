defmodule Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkupType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MARKUP_TYPE_UNSPECIFIED
          | :METRIC
          | :DIMENSION
          | :FILTER
          | :UNUSED
          | :BLOCKED
          | :ROW

  field :MARKUP_TYPE_UNSPECIFIED, 0
  field :METRIC, 1
  field :DIMENSION, 2
  field :FILTER, 3
  field :UNUSED, 4
  field :BLOCKED, 5
  field :ROW, 6
end

defmodule Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkupType.t(),
          start_char_index: integer,
          length: integer
        }

  defstruct [:type, :start_char_index, :length]

  field :type, 1,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkupType,
    enum: true

  field :start_char_index, 2, type: :int32, json_name: "startCharIndex"
  field :length, 3, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.AnnotatedString do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text_formatted: String.t(),
          html_formatted: String.t(),
          markups: [Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkup.t()]
        }

  defstruct [:text_formatted, :html_formatted, :markups]

  field :text_formatted, 1, type: :string, json_name: "textFormatted"
  field :html_formatted, 2, type: :string, json_name: "htmlFormatted"

  field :markups, 3,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkup

  def transform_module(), do: nil
end
