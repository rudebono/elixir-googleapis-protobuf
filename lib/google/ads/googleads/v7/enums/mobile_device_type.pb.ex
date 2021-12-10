defmodule Google.Ads.Googleads.V7.Enums.MobileDeviceTypeEnum.MobileDeviceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MOBILE | :TABLET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MOBILE, 2
  field :TABLET, 3
end
defmodule Google.Ads.Googleads.V7.Enums.MobileDeviceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
