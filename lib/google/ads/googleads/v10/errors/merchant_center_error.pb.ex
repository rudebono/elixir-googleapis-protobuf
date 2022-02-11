defmodule Google.Ads.Googleads.V10.Errors.MerchantCenterErrorEnum.MerchantCenterError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :MERCHANT_ID_CANNOT_BE_ACCESSED
          | :CUSTOMER_NOT_ALLOWED_FOR_SHOPPING_PERFORMANCE_MAX

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MERCHANT_ID_CANNOT_BE_ACCESSED, 2
  field :CUSTOMER_NOT_ALLOWED_FOR_SHOPPING_PERFORMANCE_MAX, 3
end
defmodule Google.Ads.Googleads.V10.Errors.MerchantCenterErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
