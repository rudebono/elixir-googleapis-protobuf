defmodule Google.Ads.Googleads.V19.Services.GenerateInsightsFinderReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V19.Services.BasicInsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :specific_audience, 3,
    type: Google.Ads.Googleads.V19.Services.BasicInsightsAudience,
    json_name: "specificAudience",
    deprecated: false

  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateInsightsFinderReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :saved_report_url, 1, type: :string, json_name: "savedReportUrl"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateAudienceCompositionInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V19.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 6,
    type: Google.Ads.Googleads.V19.Services.InsightsAudience,
    json_name: "baselineAudience"

  field :data_month, 3, type: :string, json_name: "dataMonth"

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateAudienceCompositionInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sections, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AudienceCompositionSection
end

defmodule Google.Ads.Googleads.V19.Services.GenerateSuggestedTargetingInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :audience_input, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 5,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :audience_definition, 6,
    type: Google.Ads.Googleads.V19.Services.InsightsAudienceDefinition,
    json_name: "audienceDefinition",
    oneof: 0

  field :audience_description, 7,
    type: Google.Ads.Googleads.V19.Services.InsightsAudienceDescription,
    json_name: "audienceDescription",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Services.GenerateSuggestedTargetingInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V19.Services.TargetingSuggestionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata

  field :age_ranges, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :gender, 3, type: Google.Ads.Googleads.V19.Common.GenderInfo

  field :parental_status, 8,
    type: Google.Ads.Googleads.V19.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :user_interests, 10,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "userInterests"

  field :coverage, 5, type: :double
  field :index, 6, type: :double
  field :potential_youtube_reach, 7, type: :int64, json_name: "potentialYoutubeReach"
end

defmodule Google.Ads.Googleads.V19.Services.ListAudienceInsightsAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :query_text, 3, type: :string, json_name: "queryText", deprecated: false
  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"

  field :location_country_filters, 5,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "locationCountryFilters"

  field :youtube_reach_location, 6,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "youtubeReachLocation"
end

defmodule Google.Ads.Googleads.V19.Services.ListAudienceInsightsAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata
end

defmodule Google.Ads.Googleads.V19.Services.ListInsightsEligibleDatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ads.Googleads.V19.Services.ListInsightsEligibleDatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_months, 1, repeated: true, type: :string, json_name: "dataMonths"

  field :last_thirty_days, 2,
    type: Google.Ads.Googleads.V19.Common.DateRange,
    json_name: "lastThirtyDays"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateAudienceOverlapInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :country_location, 2,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :primary_attribute, 6,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    json_name: "primaryAttribute",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateAudienceOverlapInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :primary_attribute_metadata, 3,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "primaryAttributeMetadata"

  field :dimension_results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.DimensionOverlapResult,
    json_name: "dimensionResults"
end

defmodule Google.Ads.Googleads.V19.Services.DimensionOverlapResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :items, 2, repeated: true, type: Google.Ads.Googleads.V19.Services.AudienceOverlapItem
end

defmodule Google.Ads.Googleads.V19.Services.AudienceOverlapItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attribute_metadata, 3,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :potential_youtube_reach_intersection, 2,
    type: :int64,
    json_name: "potentialYoutubeReachIntersection"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateTargetingSuggestionMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :audiences, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.BasicInsightsAudience,
    deprecated: false

  field :customer_insights_group, 3,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.GenerateTargetingSuggestionMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V19.Services.BasicInsightsAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country_location, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V19.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :user_interests, 5,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.UserInterestInfo,
    json_name: "userInterests"

  field :topics, 7, repeated: true, type: Google.Ads.Googleads.V19.Common.AudienceInsightsTopic
end

defmodule Google.Ads.Googleads.V19.Services.InsightsAudienceDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audience, 1, type: Google.Ads.Googleads.V19.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V19.Services.InsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :data_month, 3, type: :string, json_name: "dataMonth", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.InsightsAudienceDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :audience_description, 2,
    type: :string,
    json_name: "audienceDescription",
    deprecated: false

  field :marketing_objective, 3,
    type:
      Google.Ads.Googleads.V19.Enums.AudienceInsightsMarketingObjectiveEnum.AudienceInsightsMarketingObjective,
    json_name: "marketingObjective",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.InsightsAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V19.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :parental_status, 5,
    type: Google.Ads.Googleads.V19.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :income_ranges, 6,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.IncomeRangeInfo,
    json_name: "incomeRanges"

  field :dynamic_lineups, 9,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineups"

  field :topic_audience_combinations, 8,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.InsightsAudienceAttributeGroup,
    json_name: "topicAudienceCombinations"
end

defmodule Google.Ads.Googleads.V19.Services.InsightsAudienceAttributeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.AudienceCompositionSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :top_attributes, 3,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AudienceCompositionAttribute,
    json_name: "topAttributes"

  field :clustered_attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AudienceCompositionAttributeCluster,
    json_name: "clusteredAttributes"
end

defmodule Google.Ads.Googleads.V19.Services.AudienceCompositionAttributeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster_display_name, 1, type: :string, json_name: "clusterDisplayName"

  field :cluster_metrics, 3,
    type: Google.Ads.Googleads.V19.Services.AudienceCompositionMetrics,
    json_name: "clusterMetrics"

  field :attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AudienceCompositionAttribute
end

defmodule Google.Ads.Googleads.V19.Services.AudienceCompositionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :baseline_audience_share, 1, type: :double, json_name: "baselineAudienceShare"
  field :audience_share, 2, type: :double, json_name: "audienceShare"
  field :index, 3, type: :double
  field :score, 4, type: :double
end

defmodule Google.Ads.Googleads.V19.Services.AudienceCompositionAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attribute_metadata, 3,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :metrics, 2, type: Google.Ads.Googleads.V19.Services.AudienceCompositionMetrics
end

defmodule Google.Ads.Googleads.V19.Services.AudienceInsightsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.AudienceInsightsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateInsightsFinderReport,
      Google.Ads.Googleads.V19.Services.GenerateInsightsFinderReportRequest,
      Google.Ads.Googleads.V19.Services.GenerateInsightsFinderReportResponse

  rpc :ListAudienceInsightsAttributes,
      Google.Ads.Googleads.V19.Services.ListAudienceInsightsAttributesRequest,
      Google.Ads.Googleads.V19.Services.ListAudienceInsightsAttributesResponse

  rpc :ListInsightsEligibleDates,
      Google.Ads.Googleads.V19.Services.ListInsightsEligibleDatesRequest,
      Google.Ads.Googleads.V19.Services.ListInsightsEligibleDatesResponse

  rpc :GenerateAudienceCompositionInsights,
      Google.Ads.Googleads.V19.Services.GenerateAudienceCompositionInsightsRequest,
      Google.Ads.Googleads.V19.Services.GenerateAudienceCompositionInsightsResponse

  rpc :GenerateSuggestedTargetingInsights,
      Google.Ads.Googleads.V19.Services.GenerateSuggestedTargetingInsightsRequest,
      Google.Ads.Googleads.V19.Services.GenerateSuggestedTargetingInsightsResponse

  rpc :GenerateAudienceOverlapInsights,
      Google.Ads.Googleads.V19.Services.GenerateAudienceOverlapInsightsRequest,
      Google.Ads.Googleads.V19.Services.GenerateAudienceOverlapInsightsResponse

  rpc :GenerateTargetingSuggestionMetrics,
      Google.Ads.Googleads.V19.Services.GenerateTargetingSuggestionMetricsRequest,
      Google.Ads.Googleads.V19.Services.GenerateTargetingSuggestionMetricsResponse
end

defmodule Google.Ads.Googleads.V19.Services.AudienceInsightsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.AudienceInsightsService.Service
end
