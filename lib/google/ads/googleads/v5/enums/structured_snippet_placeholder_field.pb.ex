defmodule Google.Ads.Googleads.V5.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :HEADER | :SNIPPETS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :HEADER, 2

  field :SNIPPETS, 3
end

defmodule Google.Ads.Googleads.V5.Enums.StructuredSnippetPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
