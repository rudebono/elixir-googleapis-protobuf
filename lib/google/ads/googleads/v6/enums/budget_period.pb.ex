defmodule Google.Ads.Googleads.V6.Enums.BudgetPeriodEnum.BudgetPeriod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DAILY | :CUSTOM_PERIOD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DAILY, 2

  field :CUSTOM_PERIOD, 5
end

defmodule Google.Ads.Googleads.V6.Enums.BudgetPeriodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
