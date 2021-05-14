defmodule Google.Ads.Googleads.V6.Enums.LinkedAccountTypeEnum.LinkedAccountType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :THIRD_PARTY_APP_ANALYTICS
          | :DATA_PARTNER
          | :GOOGLE_ADS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :THIRD_PARTY_APP_ANALYTICS, 2

  field :DATA_PARTNER, 3

  field :GOOGLE_ADS, 4
end

defmodule Google.Ads.Googleads.V6.Enums.LinkedAccountTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
