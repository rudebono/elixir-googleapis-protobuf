defmodule Google.Ads.Googleads.V7.Enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MOBILE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MOBILE, 2
end
defmodule Google.Ads.Googleads.V7.Enums.FeedItemTargetDeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
