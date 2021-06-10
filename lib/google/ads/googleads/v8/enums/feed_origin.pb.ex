defmodule Google.Ads.Googleads.V8.Enums.FeedOriginEnum.FeedOrigin do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :USER | :GOOGLE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :USER, 2

  field :GOOGLE, 3
end

defmodule Google.Ads.Googleads.V8.Enums.FeedOriginEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
