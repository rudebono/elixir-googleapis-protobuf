defmodule Google.Ads.Googleads.V7.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :EXACT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXACT, 2
end
defmodule Google.Ads.Googleads.V7.Enums.FeedItemSetStringFilterTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
