defmodule Google.Ads.Googleads.V6.Enums.BudgetTypeEnum.BudgetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :STANDARD | :HOTEL_ADS_COMMISSION | :FIXED_CPA

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :STANDARD, 2

  field :HOTEL_ADS_COMMISSION, 3

  field :FIXED_CPA, 4
end

defmodule Google.Ads.Googleads.V6.Enums.BudgetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
