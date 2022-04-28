defmodule Google.Ads.Googleads.V10.Enums.LinkedAccountTypeEnum.LinkedAccountType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :THIRD_PARTY_APP_ANALYTICS
          | :DATA_PARTNER
          | :GOOGLE_ADS
          | :HOTEL_CENTER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :THIRD_PARTY_APP_ANALYTICS, 2
  field :DATA_PARTNER, 3
  field :GOOGLE_ADS, 4
  field :HOTEL_CENTER, 5
end
defmodule Google.Ads.Googleads.V10.Enums.LinkedAccountTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
