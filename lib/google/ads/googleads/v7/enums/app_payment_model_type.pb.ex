defmodule Google.Ads.Googleads.V7.Enums.AppPaymentModelTypeEnum.AppPaymentModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PAID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PAID, 30
end
defmodule Google.Ads.Googleads.V7.Enums.AppPaymentModelTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
