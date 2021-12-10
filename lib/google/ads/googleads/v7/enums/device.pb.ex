defmodule Google.Ads.Googleads.V7.Enums.DeviceEnum.Device do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :MOBILE
          | :TABLET
          | :DESKTOP
          | :CONNECTED_TV
          | :OTHER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MOBILE, 2
  field :TABLET, 3
  field :DESKTOP, 4
  field :CONNECTED_TV, 6
  field :OTHER, 5
end
defmodule Google.Ads.Googleads.V7.Enums.DeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
