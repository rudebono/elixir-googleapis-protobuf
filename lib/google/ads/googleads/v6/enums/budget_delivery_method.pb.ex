defmodule Google.Ads.Googleads.V6.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :STANDARD | :ACCELERATED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :STANDARD, 2

  field :ACCELERATED, 3
end

defmodule Google.Ads.Googleads.V6.Enums.BudgetDeliveryMethodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
