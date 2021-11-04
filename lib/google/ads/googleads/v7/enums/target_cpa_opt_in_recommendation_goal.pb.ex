defmodule Google.Ads.Googleads.V7.Enums.TargetCpaOptInRecommendationGoalEnum.TargetCpaOptInRecommendationGoal do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SAME_COST
          | :SAME_CONVERSIONS
          | :SAME_CPA
          | :CLOSEST_CPA

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SAME_COST, 2
  field :SAME_CONVERSIONS, 3
  field :SAME_CPA, 4
  field :CLOSEST_CPA, 5
end

defmodule Google.Ads.Googleads.V7.Enums.TargetCpaOptInRecommendationGoalEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
