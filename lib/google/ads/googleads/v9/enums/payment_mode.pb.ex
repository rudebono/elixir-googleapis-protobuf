defmodule Google.Ads.Googleads.V9.Enums.PaymentModeEnum.PaymentMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CLICKS
          | :CONVERSION_VALUE
          | :CONVERSIONS
          | :GUEST_STAY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CLICKS, 4
  field :CONVERSION_VALUE, 5
  field :CONVERSIONS, 6
  field :GUEST_STAY, 7
end
defmodule Google.Ads.Googleads.V9.Enums.PaymentModeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
