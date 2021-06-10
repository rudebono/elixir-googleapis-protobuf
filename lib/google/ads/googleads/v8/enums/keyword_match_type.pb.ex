defmodule Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum.KeywordMatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :EXACT | :PHRASE | :BROAD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :EXACT, 2

  field :PHRASE, 3

  field :BROAD, 4
end

defmodule Google.Ads.Googleads.V8.Enums.KeywordMatchTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
