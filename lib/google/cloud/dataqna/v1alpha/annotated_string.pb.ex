defmodule Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkupType,
    enum: true

  field :start_char_index, 2, type: :int32, json_name: "startCharIndex"
  field :length, 3, type: :int32
end

defmodule Google.Cloud.Dataqna.V1alpha.AnnotatedString do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text_formatted, 1, type: :string, json_name: "textFormatted"
  field :html_formatted, 2, type: :string, json_name: "htmlFormatted"

  field :markups, 3,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString.SemanticMarkup
end
