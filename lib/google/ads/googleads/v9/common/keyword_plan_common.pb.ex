defmodule Google.Ads.Googleads.V9.Common.KeywordPlanHistoricalMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :avg_monthly_searches, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "avgMonthlySearches"

  field :monthly_search_volumes, 6,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.MonthlySearchVolume,
    json_name: "monthlySearchVolumes"

  field :competition, 2,
    type:
      Google.Ads.Googleads.V9.Enums.KeywordPlanCompetitionLevelEnum.KeywordPlanCompetitionLevel,
    enum: true

  field :competition_index, 8, proto3_optional: true, type: :int64, json_name: "competitionIndex"

  field :low_top_of_page_bid_micros, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "lowTopOfPageBidMicros"

  field :high_top_of_page_bid_micros, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "highTopOfPageBidMicros"
end

defmodule Google.Ads.Googleads.V9.Common.HistoricalMetricsOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :year_month_range, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V9.Common.YearMonthRange,
    json_name: "yearMonthRange"
end

defmodule Google.Ads.Googleads.V9.Common.MonthlySearchVolume do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :year, 4, proto3_optional: true, type: :int64
  field :month, 2, type: Google.Ads.Googleads.V9.Enums.MonthOfYearEnum.MonthOfYear, enum: true
  field :monthly_searches, 5, proto3_optional: true, type: :int64, json_name: "monthlySearches"
end

defmodule Google.Ads.Googleads.V9.Common.KeywordPlanAggregateMetrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregate_metric_types, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V9.Enums.KeywordPlanAggregateMetricTypeEnum.KeywordPlanAggregateMetricType,
    json_name: "aggregateMetricTypes",
    enum: true
end

defmodule Google.Ads.Googleads.V9.Common.KeywordPlanAggregateMetricResults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :device_searches, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.KeywordPlanDeviceSearches,
    json_name: "deviceSearches"
end

defmodule Google.Ads.Googleads.V9.Common.KeywordPlanDeviceSearches do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :device, 1, type: Google.Ads.Googleads.V9.Enums.DeviceEnum.Device, enum: true
  field :search_count, 2, proto3_optional: true, type: :int64, json_name: "searchCount"
end

defmodule Google.Ads.Googleads.V9.Common.KeywordAnnotations do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :concepts, 1, repeated: true, type: Google.Ads.Googleads.V9.Common.KeywordConcept
end

defmodule Google.Ads.Googleads.V9.Common.KeywordConcept do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :concept_group, 2,
    type: Google.Ads.Googleads.V9.Common.ConceptGroup,
    json_name: "conceptGroup"
end

defmodule Google.Ads.Googleads.V9.Common.ConceptGroup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :type, 2,
    type:
      Google.Ads.Googleads.V9.Enums.KeywordPlanConceptGroupTypeEnum.KeywordPlanConceptGroupType,
    enum: true
end