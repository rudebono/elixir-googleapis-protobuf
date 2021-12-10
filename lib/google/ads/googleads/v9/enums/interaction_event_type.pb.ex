defmodule Google.Ads.Googleads.V9.Enums.InteractionEventTypeEnum.InteractionEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CLICK | :ENGAGEMENT | :VIDEO_VIEW | :NONE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CLICK, 2
  field :ENGAGEMENT, 3
  field :VIDEO_VIEW, 4
  field :NONE, 5
end
defmodule Google.Ads.Googleads.V9.Enums.InteractionEventTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
