defmodule Google.Ads.Googleads.V22.Services.GenerateInsightsFinderReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :baseline_audience, 6,
    type: Google.Ads.Googleads.V22.Services.InsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :specific_audience, 7,
    type: Google.Ads.Googleads.V22.Services.InsightsAudience,
    json_name: "specificAudience",
    deprecated: false

  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"

  field :insights_application_info, 5,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateInsightsFinderReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :saved_report_url, 1, type: :string, json_name: "savedReportUrl"
end

defmodule Google.Ads.Googleads.V22.Services.GenerateAudienceCompositionInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V22.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 6,
    type: Google.Ads.Googleads.V22.Services.InsightsAudience,
    json_name: "baselineAudience"

  field :data_month, 3, type: :string, json_name: "dataMonth"

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"

  field :insights_application_info, 7,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateAudienceCompositionInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sections, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.AudienceCompositionSection
end

defmodule Google.Ads.Googleads.V22.Services.GenerateSuggestedTargetingInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :audience_input, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 5,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :insights_application_info, 8,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false

  field :audience_definition, 6,
    type: Google.Ads.Googleads.V22.Services.InsightsAudienceDefinition,
    json_name: "audienceDefinition",
    oneof: 0

  field :audience_description, 7,
    type: Google.Ads.Googleads.V22.Services.InsightsAudienceDescription,
    json_name: "audienceDescription",
    oneof: 0
end

defmodule Google.Ads.Googleads.V22.Services.GenerateSuggestedTargetingInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V22.Services.TargetingSuggestionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :locations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadata

  field :age_ranges, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :gender, 3, type: Google.Ads.Googleads.V22.Common.GenderInfo

  field :parental_status, 8,
    type: Google.Ads.Googleads.V22.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :user_interests, 11,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadataGroup,
    json_name: "userInterests"

  field :coverage, 5, type: :double
  field :index, 6, type: :double
  field :potential_youtube_reach, 7, type: :int64, json_name: "potentialYoutubeReach"
end

defmodule Google.Ads.Googleads.V22.Services.ListAudienceInsightsAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :query_text, 3, type: :string, json_name: "queryText", deprecated: false
  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"

  field :insights_application_info, 7,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false

  field :location_country_filters, 5,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "locationCountryFilters"

  field :youtube_reach_location, 6,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "youtubeReachLocation"
end

defmodule Google.Ads.Googleads.V22.Services.ListAudienceInsightsAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadata
end

defmodule Google.Ads.Googleads.V22.Services.ListInsightsEligibleDatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :insights_application_info, 1,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.ListInsightsEligibleDatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_months, 1, repeated: true, type: :string, json_name: "dataMonths"

  field :last_thirty_days, 2,
    type: Google.Ads.Googleads.V22.Common.DateRange,
    json_name: "lastThirtyDays"
end

defmodule Google.Ads.Googleads.V22.Services.GenerateAudienceOverlapInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :country_location, 2,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :primary_attribute, 6,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttribute,
    json_name: "primaryAttribute",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :customer_insights_group, 5, type: :string, json_name: "customerInsightsGroup"

  field :insights_application_info, 7,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateAudienceOverlapInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_attribute_metadata, 3,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadata,
    json_name: "primaryAttributeMetadata"

  field :dimension_results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.DimensionOverlapResult,
    json_name: "dimensionResults"
end

defmodule Google.Ads.Googleads.V22.Services.DimensionOverlapResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V22.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :items, 2, repeated: true, type: Google.Ads.Googleads.V22.Services.AudienceOverlapItem
end

defmodule Google.Ads.Googleads.V22.Services.AudienceOverlapItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute_metadata, 3,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :potential_youtube_reach_intersection, 2,
    type: :int64,
    json_name: "potentialYoutubeReachIntersection"
end

defmodule Google.Ads.Googleads.V22.Services.GenerateTargetingSuggestionMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :audiences, 5,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.InsightsAudience,
    deprecated: false

  field :customer_insights_group, 3,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :insights_application_info, 4,
    type: Google.Ads.Googleads.V22.Common.AdditionalApplicationInfo,
    json_name: "insightsApplicationInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateTargetingSuggestionMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.TargetingSuggestionMetrics
end

defmodule Google.Ads.Googleads.V22.Services.InsightsAudienceDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audience, 1, type: Google.Ads.Googleads.V22.Services.InsightsAudience, deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V22.Services.InsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :data_month, 3, type: :string, json_name: "dataMonth", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.InsightsAudienceDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :audience_description, 2,
    type: :string,
    json_name: "audienceDescription",
    deprecated: false

  field :marketing_objective, 3,
    type:
      Google.Ads.Googleads.V22.Enums.AudienceInsightsMarketingObjectiveEnum.AudienceInsightsMarketingObjective,
    json_name: "marketingObjective",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.InsightsAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V22.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :parental_status, 5,
    type: Google.Ads.Googleads.V22.Common.ParentalStatusInfo,
    json_name: "parentalStatus"

  field :income_ranges, 6,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.IncomeRangeInfo,
    json_name: "incomeRanges"

  field :lineups, 10, repeated: true, type: Google.Ads.Googleads.V22.Common.AudienceInsightsLineup
  field :user_list, 11, type: Google.Ads.Googleads.V22.Common.UserListInfo, json_name: "userList"

  field :topic_audience_combinations, 8,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.InsightsAudienceAttributeGroup,
    json_name: "topicAudienceCombinations"
end

defmodule Google.Ads.Googleads.V22.Services.InsightsAudienceAttributeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttribute,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.AudienceCompositionSection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V22.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :top_attributes, 3,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.AudienceCompositionAttribute,
    json_name: "topAttributes"

  field :clustered_attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.AudienceCompositionAttributeCluster,
    json_name: "clusteredAttributes"
end

defmodule Google.Ads.Googleads.V22.Services.AudienceCompositionAttributeCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_display_name, 1, type: :string, json_name: "clusterDisplayName"

  field :cluster_metrics, 3,
    type: Google.Ads.Googleads.V22.Services.AudienceCompositionMetrics,
    json_name: "clusterMetrics"

  field :attributes, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.AudienceCompositionAttribute
end

defmodule Google.Ads.Googleads.V22.Services.AudienceCompositionMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :baseline_audience_share, 1, type: :double, json_name: "baselineAudienceShare"
  field :audience_share, 2, type: :double, json_name: "audienceShare"
  field :index, 3, type: :double
  field :score, 4, type: :double
end

defmodule Google.Ads.Googleads.V22.Services.AudienceCompositionAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribute_metadata, 3,
    type: Google.Ads.Googleads.V22.Common.AudienceInsightsAttributeMetadata,
    json_name: "attributeMetadata"

  field :metrics, 2, type: Google.Ads.Googleads.V22.Services.AudienceCompositionMetrics
end

defmodule Google.Ads.Googleads.V22.Services.AudienceInsightsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.AudienceInsightsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateInsightsFinderReport,
      Google.Ads.Googleads.V22.Services.GenerateInsightsFinderReportRequest,
      Google.Ads.Googleads.V22.Services.GenerateInsightsFinderReportResponse

  rpc :ListAudienceInsightsAttributes,
      Google.Ads.Googleads.V22.Services.ListAudienceInsightsAttributesRequest,
      Google.Ads.Googleads.V22.Services.ListAudienceInsightsAttributesResponse

  rpc :ListInsightsEligibleDates,
      Google.Ads.Googleads.V22.Services.ListInsightsEligibleDatesRequest,
      Google.Ads.Googleads.V22.Services.ListInsightsEligibleDatesResponse

  rpc :GenerateAudienceCompositionInsights,
      Google.Ads.Googleads.V22.Services.GenerateAudienceCompositionInsightsRequest,
      Google.Ads.Googleads.V22.Services.GenerateAudienceCompositionInsightsResponse

  rpc :GenerateSuggestedTargetingInsights,
      Google.Ads.Googleads.V22.Services.GenerateSuggestedTargetingInsightsRequest,
      Google.Ads.Googleads.V22.Services.GenerateSuggestedTargetingInsightsResponse

  rpc :GenerateAudienceOverlapInsights,
      Google.Ads.Googleads.V22.Services.GenerateAudienceOverlapInsightsRequest,
      Google.Ads.Googleads.V22.Services.GenerateAudienceOverlapInsightsResponse

  rpc :GenerateTargetingSuggestionMetrics,
      Google.Ads.Googleads.V22.Services.GenerateTargetingSuggestionMetricsRequest,
      Google.Ads.Googleads.V22.Services.GenerateTargetingSuggestionMetricsResponse
end

defmodule Google.Ads.Googleads.V22.Services.AudienceInsightsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.AudienceInsightsService.Service
end
