defmodule Google.Ads.Googleads.V7.Enums.IncomeRangeTypeEnum.IncomeRangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INCOME_RANGE_0_50
          | :INCOME_RANGE_50_60
          | :INCOME_RANGE_60_70
          | :INCOME_RANGE_70_80
          | :INCOME_RANGE_80_90
          | :INCOME_RANGE_90_UP
          | :INCOME_RANGE_UNDETERMINED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INCOME_RANGE_0_50, 510_001
  field :INCOME_RANGE_50_60, 510_002
  field :INCOME_RANGE_60_70, 510_003
  field :INCOME_RANGE_70_80, 510_004
  field :INCOME_RANGE_80_90, 510_005
  field :INCOME_RANGE_90_UP, 510_006
  field :INCOME_RANGE_UNDETERMINED, 510_000
end
defmodule Google.Ads.Googleads.V7.Enums.IncomeRangeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
