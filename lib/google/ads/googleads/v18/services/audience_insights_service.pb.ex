defmodule Google.Ads.Googleads.V18.Services.GenerateInsightsFinderReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V18.Services.BasicInsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :specific_audience, 3,
    type: Google.Ads.Googleads.V18.Services.BasicInsightsAudience,
    json_name: "specificAudience",
    deprecated: false

  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateInsightsFinderReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :saved_report_url, 1, type: :string, json_name: "savedReportUrl"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateAudienceCompositionInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V18.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 6,
    type: Google.Ads.Googleads.V18.Services.InsightsAudience,
    json_name: "baselineAudience"

  field :data_month, 3, type: :string, json_name: "dataMonth"

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateAudienceCompositionInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sections, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceCompositionSection
end

defmodule Google.Ads.Googleads.V18.Services.GenerateSuggestedTargetingInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :audience_input, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 5,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :audience_definition, 6,
    type: Google.Ads.Googleads.V18.Services.InsightsAudienceDefinition,
    json_name: "audienceDefinition",
    oneof: 0

  field :audience_description, 7,
    type: Google.Ads.Googleads.V18.Services.InsightsAudienceDescription,
    json_name: "audienceDescription",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.GenerateSuggestedTargetingInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V18.Services.TargetingSuggestionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata

  field :age_ranges, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :gender, 3, type: Google.Ads.Googleads.V18.Common.GenderInfo

  field :parental_status, 8,
    type: Google.Ads.Googleads.V18.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :user_interests, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata,
    json_name: "userInterests"

  field :coverage, 5, type: :double
  field :index, 6, type: :double
  field :potential_youtube_reach, 7, type: :int64, json_name: "potentialYoutubeReach"
end

defmodule Google.Ads.Googleads.V18.Services.ListAudienceInsightsAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :query_text, 3, type: :string, json_name: "queryText", deprecated: false
  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"

  field :location_country_filters, 5,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "locationCountryFilters"

  field :youtube_reach_location, 6,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "youtubeReachLocation"
end

defmodule Google.Ads.Googleads.V18.Services.ListAudienceInsightsAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata
end

defmodule Google.Ads.Googleads.V18.Services.ListInsightsEligibleDatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V18.Services.ListInsightsEligibleDatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_months, 1, repeated: true, type: :string, json_name: "dataMonths"

  field :last_thirty_days, 2,
    type: Google.Ads.Googleads.V18.Common.DateRange,
    json_name: "lastThirtyDays"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateAudienceOverlapInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :country_location, 2,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :primary_attribute, 3,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttribute,
    json_name: "primaryAttribute",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateAudienceOverlapInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_attribute_metadata, 1,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata,
    json_name: "primaryAttributeMetadata"

  field :dimension_results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.DimensionOverlapResult,
    json_name: "dimensionResults"
end

defmodule Google.Ads.Googleads.V18.Services.DimensionOverlapResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :items, 2, repeated: true, type: Google.Ads.Googleads.V18.Services.AudienceOverlapItem
end

defmodule Google.Ads.Googleads.V18.Services.AudienceOverlapItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute_metadata, 1,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :potential_youtube_reach_intersection, 2,
    type: :int64,
    json_name: "potentialYoutubeReachIntersection"
end

defmodule Google.Ads.Googleads.V18.Services.GenerateTargetingSuggestionMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :audiences, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.BasicInsightsAudience,
    deprecated: false

  field :customer_insights_group, 3,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateTargetingSuggestionMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :attribute, 0

  field :age_range, 1,
    type: Google.Ads.Googleads.V18.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0

  field :gender, 2, type: Google.Ads.Googleads.V18.Common.GenderInfo, oneof: 0
  field :location, 3, type: Google.Ads.Googleads.V18.Common.LocationInfo, oneof: 0

  field :user_interest, 4,
    type: Google.Ads.Googleads.V18.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0

  field :entity, 5, type: Google.Ads.Googleads.V18.Services.AudienceInsightsEntity, oneof: 0
  field :category, 6, type: Google.Ads.Googleads.V18.Services.AudienceInsightsCategory, oneof: 0

  field :dynamic_lineup, 7,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineup",
    oneof: 0

  field :parental_status, 8,
    type: Google.Ads.Googleads.V18.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0

  field :income_range, 9,
    type: Google.Ads.Googleads.V18.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0

  field :youtube_channel, 10,
    type: Google.Ads.Googleads.V18.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsTopic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :topic, 0

  field :entity, 1, type: Google.Ads.Googleads.V18.Services.AudienceInsightsEntity, oneof: 0
  field :category, 2, type: Google.Ads.Googleads.V18.Services.AudienceInsightsCategory, oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :knowledge_graph_machine_id, 1,
    type: :string,
    json_name: "knowledgeGraphMachineId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category_id, 1, type: :string, json_name: "categoryId", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsDynamicLineup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_lineup_id, 1, type: :string, json_name: "dynamicLineupId", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.BasicInsightsAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_location, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V18.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :user_interests, 5,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.UserInterestInfo,
    json_name: "userInterests"

  field :topics, 6, repeated: true, type: Google.Ads.Googleads.V18.Services.AudienceInsightsTopic
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dimension_metadata, 0

  field :dimension, 1,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :attribute, 2, type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttribute
  field :display_name, 3, type: :string, json_name: "displayName"
  field :display_info, 5, type: :string, json_name: "displayInfo"
  field :potential_youtube_reach, 9, type: :int64, json_name: "potentialYoutubeReach"

  field :youtube_channel_metadata, 6,
    type: Google.Ads.Googleads.V18.Services.YouTubeChannelAttributeMetadata,
    json_name: "youtubeChannelMetadata",
    oneof: 0

  field :dynamic_attribute_metadata, 7,
    type: Google.Ads.Googleads.V18.Services.DynamicLineupAttributeMetadata,
    json_name: "dynamicAttributeMetadata",
    oneof: 0

  field :location_attribute_metadata, 8,
    type: Google.Ads.Googleads.V18.Services.LocationAttributeMetadata,
    json_name: "locationAttributeMetadata",
    oneof: 0

  field :user_interest_attribute_metadata, 10,
    type: Google.Ads.Googleads.V18.Services.UserInterestAttributeMetadata,
    json_name: "userInterestAttributeMetadata",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.YouTubeChannelAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscriber_count, 1, type: :int64, json_name: "subscriberCount"
end

defmodule Google.Ads.Googleads.V18.Services.DynamicLineupAttributeMetadata.SampleChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :youtube_channel, 1,
    type: Google.Ads.Googleads.V18.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel"

  field :display_name, 2, type: :string, json_name: "displayName"

  field :youtube_channel_metadata, 3,
    type: Google.Ads.Googleads.V18.Services.YouTubeChannelAttributeMetadata,
    json_name: "youtubeChannelMetadata"
end

defmodule Google.Ads.Googleads.V18.Services.DynamicLineupAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inventory_country, 1,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "inventoryCountry"

  field :median_monthly_inventory, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "medianMonthlyInventory"

  field :channel_count_lower_bound, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "channelCountLowerBound"

  field :channel_count_upper_bound, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "channelCountUpperBound"

  field :sample_channels, 5,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.DynamicLineupAttributeMetadata.SampleChannel,
    json_name: "sampleChannels"
end

defmodule Google.Ads.Googleads.V18.Services.LocationAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_location, 1,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "countryLocation"
end

defmodule Google.Ads.Googleads.V18.Services.UserInterestAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_interest_description, 1, type: :string, json_name: "userInterestDescription"
end

defmodule Google.Ads.Googleads.V18.Services.InsightsAudienceDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audience, 1, type: Google.Ads.Googleads.V18.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V18.Services.InsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :data_month, 3, type: :string, json_name: "dataMonth", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.InsightsAudienceDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :audience_description, 2,
    type: :string,
    json_name: "audienceDescription",
    deprecated: false

  field :marketing_objective, 3,
    type:
      Google.Ads.Googleads.V18.Enums.AudienceInsightsMarketingObjectiveEnum.AudienceInsightsMarketingObjective,
    json_name: "marketingObjective",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.InsightsAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V18.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :parental_status, 5,
    type: Google.Ads.Googleads.V18.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :income_ranges, 6,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.IncomeRangeInfo,
    json_name: "incomeRanges"

  field :dynamic_lineups, 7,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineups"

  field :topic_audience_combinations, 8,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.InsightsAudienceAttributeGroup,
    json_name: "topicAudienceCombinations"
end

defmodule Google.Ads.Googleads.V18.Services.InsightsAudienceAttributeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttribute,
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.AudienceCompositionSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V18.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :top_attributes, 3,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceCompositionAttribute,
    json_name: "topAttributes"

  field :clustered_attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceCompositionAttributeCluster,
    json_name: "clusteredAttributes"
end

defmodule Google.Ads.Googleads.V18.Services.AudienceCompositionAttributeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_display_name, 1, type: :string, json_name: "clusterDisplayName"

  field :cluster_metrics, 3,
    type: Google.Ads.Googleads.V18.Services.AudienceCompositionMetrics,
    json_name: "clusterMetrics"

  field :attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceCompositionAttribute
end

defmodule Google.Ads.Googleads.V18.Services.AudienceCompositionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :baseline_audience_share, 1, type: :double, json_name: "baselineAudienceShare"
  field :audience_share, 2, type: :double, json_name: "audienceShare"
  field :index, 3, type: :double
  field :score, 4, type: :double
end

defmodule Google.Ads.Googleads.V18.Services.AudienceCompositionAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute_metadata, 1,
    type: Google.Ads.Googleads.V18.Services.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :metrics, 2, type: Google.Ads.Googleads.V18.Services.AudienceCompositionMetrics
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.AudienceInsightsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateInsightsFinderReport,
      Google.Ads.Googleads.V18.Services.GenerateInsightsFinderReportRequest,
      Google.Ads.Googleads.V18.Services.GenerateInsightsFinderReportResponse

  rpc :ListAudienceInsightsAttributes,
      Google.Ads.Googleads.V18.Services.ListAudienceInsightsAttributesRequest,
      Google.Ads.Googleads.V18.Services.ListAudienceInsightsAttributesResponse

  rpc :ListInsightsEligibleDates,
      Google.Ads.Googleads.V18.Services.ListInsightsEligibleDatesRequest,
      Google.Ads.Googleads.V18.Services.ListInsightsEligibleDatesResponse

  rpc :GenerateAudienceCompositionInsights,
      Google.Ads.Googleads.V18.Services.GenerateAudienceCompositionInsightsRequest,
      Google.Ads.Googleads.V18.Services.GenerateAudienceCompositionInsightsResponse

  rpc :GenerateSuggestedTargetingInsights,
      Google.Ads.Googleads.V18.Services.GenerateSuggestedTargetingInsightsRequest,
      Google.Ads.Googleads.V18.Services.GenerateSuggestedTargetingInsightsResponse

  rpc :GenerateAudienceOverlapInsights,
      Google.Ads.Googleads.V18.Services.GenerateAudienceOverlapInsightsRequest,
      Google.Ads.Googleads.V18.Services.GenerateAudienceOverlapInsightsResponse

  rpc :GenerateTargetingSuggestionMetrics,
      Google.Ads.Googleads.V18.Services.GenerateTargetingSuggestionMetricsRequest,
      Google.Ads.Googleads.V18.Services.GenerateTargetingSuggestionMetricsResponse
end

defmodule Google.Ads.Googleads.V18.Services.AudienceInsightsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.AudienceInsightsService.Service
end
