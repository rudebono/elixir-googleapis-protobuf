defmodule Google.Ads.Googleads.V7.Enums.KeywordPlanForecastIntervalEnum.KeywordPlanForecastInterval do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NEXT_WEEK | :NEXT_MONTH | :NEXT_QUARTER

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NEXT_WEEK, 3

  field :NEXT_MONTH, 4

  field :NEXT_QUARTER, 5
end

defmodule Google.Ads.Googleads.V7.Enums.KeywordPlanForecastIntervalEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
