defmodule Google.Ads.Googleads.V9.Enums.OfflineUserDataJobMatchRateRangeEnum.OfflineUserDataJobMatchRateRange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :MATCH_RANGE_LESS_THAN_20
          | :MATCH_RANGE_20_TO_30
          | :MATCH_RANGE_31_TO_40
          | :MATCH_RANGE_41_TO_50
          | :MATCH_RANGE_51_TO_60
          | :MATCH_RANGE_61_TO_70
          | :MATCH_RANGE_71_TO_80
          | :MATCH_RANGE_81_TO_90
          | :MATCH_RANGE_91_TO_100

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MATCH_RANGE_LESS_THAN_20, 2
  field :MATCH_RANGE_20_TO_30, 3
  field :MATCH_RANGE_31_TO_40, 4
  field :MATCH_RANGE_41_TO_50, 5
  field :MATCH_RANGE_51_TO_60, 6
  field :MATCH_RANGE_61_TO_70, 7
  field :MATCH_RANGE_71_TO_80, 8
  field :MATCH_RANGE_81_TO_90, 9
  field :MATCH_RANGE_91_TO_100, 10
end

defmodule Google.Ads.Googleads.V9.Enums.OfflineUserDataJobMatchRateRangeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
