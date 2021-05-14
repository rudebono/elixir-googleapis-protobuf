defmodule Google.Ads.Googleads.V5.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          avg_monthly_searches: Google.Protobuf.Int64Value.t() | nil,
          monthly_search_volumes: [Google.Ads.Googleads.V5.Common.MonthlySearchVolume.t()],
          competition:
            Google.Ads.Googleads.V5.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel.t(),
          competition_index: Google.Protobuf.Int64Value.t() | nil,
          low_top_of_page_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          high_top_of_page_bid_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :avg_monthly_searches,
    :monthly_search_volumes,
    :competition,
    :competition_index,
    :low_top_of_page_bid_micros,
    :high_top_of_page_bid_micros
  ]

  field :avg_monthly_searches, 1, type: Google.Protobuf.Int64Value

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V5.Common.MonthlySearchVolume

  field :competition, 2,
    type:
      Google.Ads.Googleads.V5.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 3, type: Google.Protobuf.Int64Value
  field :low_top_of_page_bid_micros, 4, type: Google.Protobuf.Int64Value
  field :high_top_of_page_bid_micros, 5, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V5.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          year: Google.Protobuf.Int64Value.t() | nil,
          month: Google.Ads.Googleads.V5.Enums.MonthOfYearEnum.MonthOfYear.t(),
          monthly_searches: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:year, :month, :monthly_searches]

  field :year, 1, type: Google.Protobuf.Int64Value
  field :month, 2, type: Google.Ads.Googleads.V5.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 3, type: Google.Protobuf.Int64Value
end
