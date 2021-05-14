defmodule Google.Ads.Googleads.V4.Enums.BudgetPeriodEnum.BudgetPeriod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :DAILY

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DAILY, 2
end

defmodule Google.Ads.Googleads.V4.Enums.BudgetPeriodEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
