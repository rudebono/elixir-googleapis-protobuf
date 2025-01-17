defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360Request do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"
  field :return_total_results_count, 7, type: :bool, json_name: "returnTotalResultsCount"

  field :summary_row_setting, 8,
    type: Google.Ads.Searchads360.V0.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360Response do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Searchads360.V0.Services.SearchAds360Row
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 6,
    type: Google.Ads.Searchads360.V0.Services.SearchAds360Row,
    json_name: "summaryRow"

  field :custom_column_headers, 7,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.CustomColumnHeader,
    json_name: "customColumnHeaders"

  field :conversion_custom_metric_headers, 9,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.ConversionCustomMetricHeader,
    json_name: "conversionCustomMetricHeaders"

  field :conversion_custom_dimension_headers, 10,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.ConversionCustomDimensionHeader,
    json_name: "conversionCustomDimensionHeaders"

  field :raw_event_conversion_metric_headers, 11,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.RawEventConversionMetricHeader,
    json_name: "rawEventConversionMetricHeaders"

  field :raw_event_conversion_dimension_headers, 12,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.RawEventConversionDimensionHeader,
    json_name: "rawEventConversionDimensionHeaders"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :batch_size, 4, type: :int32, json_name: "batchSize"

  field :summary_row_setting, 3,
    type: Google.Ads.Searchads360.V0.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Searchads360.V0.Services.SearchAds360Row
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 3,
    type: Google.Ads.Searchads360.V0.Services.SearchAds360Row,
    json_name: "summaryRow"

  field :custom_column_headers, 5,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.CustomColumnHeader,
    json_name: "customColumnHeaders"

  field :conversion_custom_metric_headers, 7,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.ConversionCustomMetricHeader,
    json_name: "conversionCustomMetricHeaders"

  field :conversion_custom_dimension_headers, 8,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.ConversionCustomDimensionHeader,
    json_name: "conversionCustomDimensionHeaders"

  field :raw_event_conversion_metric_headers, 9,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.RawEventConversionMetricHeader,
    json_name: "rawEventConversionMetricHeaders"

  field :raw_event_conversion_dimension_headers, 10,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.RawEventConversionDimensionHeader,
    json_name: "rawEventConversionDimensionHeaders"

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ad_group, 3, type: Google.Ads.Searchads360.V0.Resources.AdGroup, json_name: "adGroup"

  field :ad_group_ad, 16,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAd,
    json_name: "adGroupAd"

  field :ad_group_ad_effective_label, 234,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAdEffectiveLabel,
    json_name: "adGroupAdEffectiveLabel"

  field :ad_group_ad_label, 120,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAdLabel,
    json_name: "adGroupAdLabel"

  field :ad_group_asset, 154,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAsset,
    json_name: "adGroupAsset"

  field :ad_group_asset_set, 196,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAssetSet,
    json_name: "adGroupAssetSet"

  field :ad_group_audience_view, 57,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupAudienceView,
    json_name: "adGroupAudienceView"

  field :ad_group_bid_modifier, 24,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"

  field :ad_group_criterion, 17,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  field :ad_group_criterion_effective_label, 235,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterionEffectiveLabel,
    json_name: "adGroupCriterionEffectiveLabel"

  field :ad_group_criterion_label, 121,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterionLabel,
    json_name: "adGroupCriterionLabel"

  field :ad_group_effective_label, 231,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupEffectiveLabel,
    json_name: "adGroupEffectiveLabel"

  field :ad_group_label, 115,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupLabel,
    json_name: "adGroupLabel"

  field :age_range_view, 48,
    type: Google.Ads.Searchads360.V0.Resources.AgeRangeView,
    json_name: "ageRangeView"

  field :asset, 105, type: Google.Ads.Searchads360.V0.Resources.Asset

  field :asset_group_asset, 173,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroupAsset,
    json_name: "assetGroupAsset"

  field :asset_group_signal, 191,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroupSignal,
    json_name: "assetGroupSignal"

  field :asset_group_listing_group_filter, 182,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroupListingGroupFilter,
    json_name: "assetGroupListingGroupFilter"

  field :asset_group_top_combination_view, 199,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroupTopCombinationView,
    json_name: "assetGroupTopCombinationView"

  field :asset_group, 172,
    type: Google.Ads.Searchads360.V0.Resources.AssetGroup,
    json_name: "assetGroup"

  field :asset_set_asset, 180,
    type: Google.Ads.Searchads360.V0.Resources.AssetSetAsset,
    json_name: "assetSetAsset"

  field :asset_set, 179,
    type: Google.Ads.Searchads360.V0.Resources.AssetSet,
    json_name: "assetSet"

  field :bidding_strategy, 18,
    type: Google.Ads.Searchads360.V0.Resources.BiddingStrategy,
    json_name: "biddingStrategy"

  field :campaign_budget, 19,
    type: Google.Ads.Searchads360.V0.Resources.CampaignBudget,
    json_name: "campaignBudget"

  field :campaign, 2, type: Google.Ads.Searchads360.V0.Resources.Campaign

  field :campaign_asset, 142,
    type: Google.Ads.Searchads360.V0.Resources.CampaignAsset,
    json_name: "campaignAsset"

  field :campaign_asset_set, 181,
    type: Google.Ads.Searchads360.V0.Resources.CampaignAssetSet,
    json_name: "campaignAssetSet"

  field :campaign_audience_view, 69,
    type: Google.Ads.Searchads360.V0.Resources.CampaignAudienceView,
    json_name: "campaignAudienceView"

  field :campaign_criterion, 20,
    type: Google.Ads.Searchads360.V0.Resources.CampaignCriterion,
    json_name: "campaignCriterion"

  field :campaign_effective_label, 229,
    type: Google.Ads.Searchads360.V0.Resources.CampaignEffectiveLabel,
    json_name: "campaignEffectiveLabel"

  field :campaign_label, 108,
    type: Google.Ads.Searchads360.V0.Resources.CampaignLabel,
    json_name: "campaignLabel"

  field :cart_data_sales_view, 221,
    type: Google.Ads.Searchads360.V0.Resources.CartDataSalesView,
    json_name: "cartDataSalesView"

  field :audience, 190, type: Google.Ads.Searchads360.V0.Resources.Audience

  field :conversion_action, 103,
    type: Google.Ads.Searchads360.V0.Resources.ConversionAction,
    json_name: "conversionAction"

  field :conversion_custom_variable, 153,
    type: Google.Ads.Searchads360.V0.Resources.ConversionCustomVariable,
    json_name: "conversionCustomVariable"

  field :customer, 1, type: Google.Ads.Searchads360.V0.Resources.Customer

  field :customer_asset, 155,
    type: Google.Ads.Searchads360.V0.Resources.CustomerAsset,
    json_name: "customerAsset"

  field :customer_asset_set, 195,
    type: Google.Ads.Searchads360.V0.Resources.CustomerAssetSet,
    json_name: "customerAssetSet"

  field :accessible_bidding_strategy, 169,
    type: Google.Ads.Searchads360.V0.Resources.AccessibleBiddingStrategy,
    json_name: "accessibleBiddingStrategy"

  field :customer_manager_link, 61,
    type: Google.Ads.Searchads360.V0.Resources.CustomerManagerLink,
    json_name: "customerManagerLink"

  field :customer_client, 70,
    type: Google.Ads.Searchads360.V0.Resources.CustomerClient,
    json_name: "customerClient"

  field :dynamic_search_ads_search_term_view, 106,
    type: Google.Ads.Searchads360.V0.Resources.DynamicSearchAdsSearchTermView,
    json_name: "dynamicSearchAdsSearchTermView"

  field :gender_view, 40,
    type: Google.Ads.Searchads360.V0.Resources.GenderView,
    json_name: "genderView"

  field :geo_target_constant, 23,
    type: Google.Ads.Searchads360.V0.Resources.GeoTargetConstant,
    json_name: "geoTargetConstant"

  field :keyword_view, 21,
    type: Google.Ads.Searchads360.V0.Resources.KeywordView,
    json_name: "keywordView"

  field :label, 52, type: Google.Ads.Searchads360.V0.Resources.Label

  field :language_constant, 55,
    type: Google.Ads.Searchads360.V0.Resources.LanguageConstant,
    json_name: "languageConstant"

  field :location_view, 123,
    type: Google.Ads.Searchads360.V0.Resources.LocationView,
    json_name: "locationView"

  field :product_bidding_category_constant, 109,
    type: Google.Ads.Searchads360.V0.Resources.ProductBiddingCategoryConstant,
    json_name: "productBiddingCategoryConstant"

  field :product_group_view, 54,
    type: Google.Ads.Searchads360.V0.Resources.ProductGroupView,
    json_name: "productGroupView"

  field :shopping_performance_view, 117,
    type: Google.Ads.Searchads360.V0.Resources.ShoppingPerformanceView,
    json_name: "shoppingPerformanceView"

  field :user_list, 38, type: Google.Ads.Searchads360.V0.Resources.UserList, json_name: "userList"

  field :user_location_view, 135,
    type: Google.Ads.Searchads360.V0.Resources.UserLocationView,
    json_name: "userLocationView"

  field :webpage_view, 162,
    type: Google.Ads.Searchads360.V0.Resources.WebpageView,
    json_name: "webpageView"

  field :visit, 203, type: Google.Ads.Searchads360.V0.Resources.Visit
  field :conversion, 206, type: Google.Ads.Searchads360.V0.Resources.Conversion
  field :metrics, 4, type: Google.Ads.Searchads360.V0.Common.Metrics
  field :segments, 102, type: Google.Ads.Searchads360.V0.Common.Segments

  field :custom_columns, 156,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.Value,
    json_name: "customColumns"
end

defmodule Google.Ads.Searchads360.V0.Services.CustomColumnHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
  field :references_metrics, 3, type: :bool, json_name: "referencesMetrics"
end

defmodule Google.Ads.Searchads360.V0.Services.ConversionCustomMetricHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
end

defmodule Google.Ads.Searchads360.V0.Services.ConversionCustomDimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
end

defmodule Google.Ads.Searchads360.V0.Services.RawEventConversionMetricHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
end

defmodule Google.Ads.Searchads360.V0.Services.RawEventConversionDimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Service.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.searchads360.v0.services.SearchAds360Service",
    protoc_gen_elixir_version: "0.14.0"

  rpc :Search,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360Request,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360Response

  rpc :SearchStream,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamRequest,
      stream(Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamResponse)
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Service.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Searchads360.V0.Services.SearchAds360Service.Service
end
