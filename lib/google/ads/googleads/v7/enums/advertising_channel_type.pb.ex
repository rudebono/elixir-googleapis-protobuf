defmodule Google.Ads.Googleads.V7.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SEARCH
          | :DISPLAY
          | :SHOPPING
          | :HOTEL
          | :VIDEO
          | :MULTI_CHANNEL
          | :LOCAL
          | :SMART

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :SEARCH, 2

  field :DISPLAY, 3

  field :SHOPPING, 4

  field :HOTEL, 5

  field :VIDEO, 6

  field :MULTI_CHANNEL, 7

  field :LOCAL, 8

  field :SMART, 9
end

defmodule Google.Ads.Googleads.V7.Enums.AdvertisingChannelTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
