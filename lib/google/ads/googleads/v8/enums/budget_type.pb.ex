defmodule Google.Ads.Googleads.V8.Enums.BudgetTypeEnum.BudgetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :STANDARD
          | :HOTEL_ADS_COMMISSION
          | :FIXED_CPA
          | :SMART_CAMPAIGN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STANDARD, 2
  field :HOTEL_ADS_COMMISSION, 3
  field :FIXED_CPA, 4
  field :SMART_CAMPAIGN, 5
end
defmodule Google.Ads.Googleads.V8.Enums.BudgetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
