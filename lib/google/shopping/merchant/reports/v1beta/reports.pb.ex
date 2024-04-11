defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.AggregatedReportingContextStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AGGREGATED_REPORTING_CONTEXT_STATUS_UNSPECIFIED, 0
  field :NOT_ELIGIBLE_OR_DISAPPROVED, 1
  field :PENDING, 2
  field :ELIGIBLE_LIMITED, 3
  field :ELIGIBLE, 4
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ClickPotential do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLICK_POTENTIAL_UNSPECIFIED, 0
  field :LOW, 1
  field :MEDIUM, 2
  field :HIGH, 3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueResolution do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ITEM_ISSUE_RESOLUTION_UNSPECIFIED, 0
  field :MERCHANT_ACTION, 1
  field :PENDING_PROCESSING, 2
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity.AggregatedIssueSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AGGREGATED_ISSUE_SEVERITY_UNSPECIFIED, 0
  field :DISAPPROVED, 1
  field :DEMOTED, 2
  field :PENDING, 3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.BestSellersProductClusterView.InventoryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INVENTORY_STATUS_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :OUT_OF_STOCK, 2
  field :NOT_IN_INVENTORY, 3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.MarketingMethod.MarketingMethodEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MARKETING_METHOD_ENUM_UNSPECIFIED, 0
  field :ORGANIC, 1
  field :ADS, 2
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ReportGranularity.ReportGranularityEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REPORT_GRANULARITY_ENUM_UNSPECIFIED, 0
  field :WEEKLY, 1
  field :MONTHLY, 2
end

defmodule Google.Shopping.Merchant.Reports.V1beta.RelativeDemand.RelativeDemandEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RELATIVE_DEMAND_ENUM_UNSPECIFIED, 0
  field :VERY_LOW, 10
  field :LOW, 20
  field :MEDIUM, 30
  field :HIGH, 40
  field :VERY_HIGH, 50
end

defmodule Google.Shopping.Merchant.Reports.V1beta.RelativeDemandChangeType.RelativeDemandChangeTypeEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RELATIVE_DEMAND_CHANGE_TYPE_ENUM_UNSPECIFIED, 0
  field :SINKER, 1
  field :FLAT, 2
  field :RISER, 3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.TrafficSource.TrafficSourceEnum do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRAFFIC_SOURCE_ENUM_UNSPECIFIED, 0
  field :ORGANIC, 1
  field :ADS, 2
  field :ALL, 3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Reports.V1beta.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Shopping.Merchant.Reports.V1beta.ReportRow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ReportRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :product_performance_view, 1,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductPerformanceView,
    json_name: "productPerformanceView"

  field :product_view, 2,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView,
    json_name: "productView"

  field :price_competitiveness_product_view, 3,
    type: Google.Shopping.Merchant.Reports.V1beta.PriceCompetitivenessProductView,
    json_name: "priceCompetitivenessProductView"

  field :price_insights_product_view, 4,
    type: Google.Shopping.Merchant.Reports.V1beta.PriceInsightsProductView,
    json_name: "priceInsightsProductView"

  field :best_sellers_product_cluster_view, 5,
    type: Google.Shopping.Merchant.Reports.V1beta.BestSellersProductClusterView,
    json_name: "bestSellersProductClusterView"

  field :best_sellers_brand_view, 6,
    type: Google.Shopping.Merchant.Reports.V1beta.BestSellersBrandView,
    json_name: "bestSellersBrandView"

  field :competitive_visibility_competitor_view, 8,
    type: Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityCompetitorView,
    json_name: "competitiveVisibilityCompetitorView"

  field :competitive_visibility_top_merchant_view, 9,
    type: Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityTopMerchantView,
    json_name: "competitiveVisibilityTopMerchantView"

  field :competitive_visibility_benchmark_view, 10,
    type: Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityBenchmarkView,
    json_name: "competitiveVisibilityBenchmarkView"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductPerformanceView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :marketing_method, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.MarketingMethod.MarketingMethodEnum,
    json_name: "marketingMethod",
    enum: true

  field :date, 2, type: Google.Type.Date
  field :week, 3, type: Google.Type.Date

  field :customer_country_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "customerCountryCode"

  field :offer_id, 5, proto3_optional: true, type: :string, json_name: "offerId"
  field :title, 6, proto3_optional: true, type: :string
  field :brand, 7, proto3_optional: true, type: :string
  field :category_l1, 8, proto3_optional: true, type: :string, json_name: "categoryL1"
  field :category_l2, 9, proto3_optional: true, type: :string, json_name: "categoryL2"
  field :category_l3, 10, proto3_optional: true, type: :string, json_name: "categoryL3"
  field :category_l4, 11, proto3_optional: true, type: :string, json_name: "categoryL4"
  field :category_l5, 12, proto3_optional: true, type: :string, json_name: "categoryL5"
  field :product_type_l1, 13, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 14, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 15, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 16, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 17, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :custom_label0, 18, proto3_optional: true, type: :string, json_name: "customLabel0"
  field :custom_label1, 19, proto3_optional: true, type: :string, json_name: "customLabel1"
  field :custom_label2, 20, proto3_optional: true, type: :string, json_name: "customLabel2"
  field :custom_label3, 21, proto3_optional: true, type: :string, json_name: "customLabel3"
  field :custom_label4, 22, proto3_optional: true, type: :string, json_name: "customLabel4"
  field :clicks, 23, proto3_optional: true, type: :int64
  field :impressions, 24, proto3_optional: true, type: :int64

  field :click_through_rate, 25,
    proto3_optional: true,
    type: :double,
    json_name: "clickThroughRate"

  field :conversions, 26, proto3_optional: true, type: :double
  field :conversion_value, 27, type: Google.Shopping.Type.Price, json_name: "conversionValue"
  field :conversion_rate, 28, proto3_optional: true, type: :double, json_name: "conversionRate"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1, proto3_optional: true, type: :string

  field :canonical_attribute, 2,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalAttribute"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity.IssueSeverityPerReportingContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reporting_context, 1,
    proto3_optional: true,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true

  field :disapproved_countries, 2,
    repeated: true,
    type: :string,
    json_name: "disapprovedCountries"

  field :demoted_countries, 3, repeated: true, type: :string, json_name: "demotedCountries"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :severity_per_reporting_context, 1,
    repeated: true,
    type:
      Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity.IssueSeverityPerReportingContext,
    json_name: "severityPerReportingContext"

  field :aggregated_severity, 2,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity.AggregatedIssueSeverity,
    json_name: "aggregatedSeverity",
    enum: true
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueType

  field :severity, 2,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueSeverity

  field :resolution, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue.ItemIssueResolution,
    enum: true
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ProductView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, proto3_optional: true, type: :string

  field :channel, 28,
    proto3_optional: true,
    type: Google.Shopping.Type.Channel.ChannelEnum,
    enum: true

  field :language_code, 2, proto3_optional: true, type: :string, json_name: "languageCode"
  field :feed_label, 3, proto3_optional: true, type: :string, json_name: "feedLabel"
  field :offer_id, 4, proto3_optional: true, type: :string, json_name: "offerId"
  field :title, 5, proto3_optional: true, type: :string
  field :brand, 6, proto3_optional: true, type: :string
  field :category_l1, 7, proto3_optional: true, type: :string, json_name: "categoryL1"
  field :category_l2, 8, proto3_optional: true, type: :string, json_name: "categoryL2"
  field :category_l3, 9, proto3_optional: true, type: :string, json_name: "categoryL3"
  field :category_l4, 10, proto3_optional: true, type: :string, json_name: "categoryL4"
  field :category_l5, 11, proto3_optional: true, type: :string, json_name: "categoryL5"
  field :product_type_l1, 12, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 13, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 14, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 15, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 16, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :price, 17, type: Google.Shopping.Type.Price
  field :condition, 18, proto3_optional: true, type: :string
  field :availability, 19, proto3_optional: true, type: :string
  field :shipping_label, 20, proto3_optional: true, type: :string, json_name: "shippingLabel"
  field :gtin, 21, repeated: true, type: :string
  field :item_group_id, 22, proto3_optional: true, type: :string, json_name: "itemGroupId"
  field :thumbnail_link, 23, proto3_optional: true, type: :string, json_name: "thumbnailLink"
  field :creation_time, 24, type: Google.Protobuf.Timestamp, json_name: "creationTime"
  field :expiration_date, 25, type: Google.Type.Date, json_name: "expirationDate"

  field :aggregated_reporting_context_status, 26,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.AggregatedReportingContextStatus,
    json_name: "aggregatedReportingContextStatus",
    enum: true

  field :item_issues, 27,
    repeated: true,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.ItemIssue,
    json_name: "itemIssues"

  field :click_potential, 29,
    type: Google.Shopping.Merchant.Reports.V1beta.ProductView.ClickPotential,
    json_name: "clickPotential",
    enum: true

  field :click_potential_rank, 30,
    proto3_optional: true,
    type: :int64,
    json_name: "clickPotentialRank"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.PriceCompetitivenessProductView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :report_country_code, 1,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :id, 2, proto3_optional: true, type: :string
  field :offer_id, 3, proto3_optional: true, type: :string, json_name: "offerId"
  field :title, 4, proto3_optional: true, type: :string
  field :brand, 5, proto3_optional: true, type: :string
  field :category_l1, 6, proto3_optional: true, type: :string, json_name: "categoryL1"
  field :category_l2, 7, proto3_optional: true, type: :string, json_name: "categoryL2"
  field :category_l3, 8, proto3_optional: true, type: :string, json_name: "categoryL3"
  field :category_l4, 9, proto3_optional: true, type: :string, json_name: "categoryL4"
  field :category_l5, 10, proto3_optional: true, type: :string, json_name: "categoryL5"
  field :product_type_l1, 11, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 12, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 13, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 14, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 15, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :price, 16, type: Google.Shopping.Type.Price
  field :benchmark_price, 17, type: Google.Shopping.Type.Price, json_name: "benchmarkPrice"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.PriceInsightsProductView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, proto3_optional: true, type: :string
  field :offer_id, 2, proto3_optional: true, type: :string, json_name: "offerId"
  field :title, 3, proto3_optional: true, type: :string
  field :brand, 4, proto3_optional: true, type: :string
  field :category_l1, 5, proto3_optional: true, type: :string, json_name: "categoryL1"
  field :category_l2, 6, proto3_optional: true, type: :string, json_name: "categoryL2"
  field :category_l3, 7, proto3_optional: true, type: :string, json_name: "categoryL3"
  field :category_l4, 8, proto3_optional: true, type: :string, json_name: "categoryL4"
  field :category_l5, 9, proto3_optional: true, type: :string, json_name: "categoryL5"
  field :product_type_l1, 10, proto3_optional: true, type: :string, json_name: "productTypeL1"
  field :product_type_l2, 11, proto3_optional: true, type: :string, json_name: "productTypeL2"
  field :product_type_l3, 12, proto3_optional: true, type: :string, json_name: "productTypeL3"
  field :product_type_l4, 13, proto3_optional: true, type: :string, json_name: "productTypeL4"
  field :product_type_l5, 14, proto3_optional: true, type: :string, json_name: "productTypeL5"
  field :price, 15, type: Google.Shopping.Type.Price
  field :suggested_price, 16, type: Google.Shopping.Type.Price, json_name: "suggestedPrice"

  field :predicted_impressions_change_fraction, 17,
    proto3_optional: true,
    type: :double,
    json_name: "predictedImpressionsChangeFraction"

  field :predicted_clicks_change_fraction, 18,
    proto3_optional: true,
    type: :double,
    json_name: "predictedClicksChangeFraction"

  field :predicted_conversions_change_fraction, 19,
    proto3_optional: true,
    type: :double,
    json_name: "predictedConversionsChangeFraction"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.BestSellersProductClusterView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :report_date, 1, type: Google.Type.Date, json_name: "reportDate"

  field :report_granularity, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.ReportGranularity.ReportGranularityEnum,
    json_name: "reportGranularity",
    enum: true

  field :report_country_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :report_category_id, 4, proto3_optional: true, type: :int64, json_name: "reportCategoryId"
  field :title, 6, proto3_optional: true, type: :string
  field :brand, 7, proto3_optional: true, type: :string
  field :category_l1, 8, proto3_optional: true, type: :string, json_name: "categoryL1"
  field :category_l2, 9, proto3_optional: true, type: :string, json_name: "categoryL2"
  field :category_l3, 10, proto3_optional: true, type: :string, json_name: "categoryL3"
  field :category_l4, 11, proto3_optional: true, type: :string, json_name: "categoryL4"
  field :category_l5, 12, proto3_optional: true, type: :string, json_name: "categoryL5"
  field :variant_gtins, 13, repeated: true, type: :string, json_name: "variantGtins"

  field :inventory_status, 14,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.BestSellersProductClusterView.InventoryStatus,
    json_name: "inventoryStatus",
    enum: true

  field :brand_inventory_status, 15,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.BestSellersProductClusterView.InventoryStatus,
    json_name: "brandInventoryStatus",
    enum: true

  field :rank, 16, proto3_optional: true, type: :int64
  field :previous_rank, 17, proto3_optional: true, type: :int64, json_name: "previousRank"

  field :relative_demand, 18,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.RelativeDemand.RelativeDemandEnum,
    json_name: "relativeDemand",
    enum: true

  field :previous_relative_demand, 19,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.RelativeDemand.RelativeDemandEnum,
    json_name: "previousRelativeDemand",
    enum: true

  field :relative_demand_change, 20,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Reports.V1beta.RelativeDemandChangeType.RelativeDemandChangeTypeEnum,
    json_name: "relativeDemandChange",
    enum: true
end

defmodule Google.Shopping.Merchant.Reports.V1beta.BestSellersBrandView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :report_date, 1, type: Google.Type.Date, json_name: "reportDate"

  field :report_granularity, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.ReportGranularity.ReportGranularityEnum,
    json_name: "reportGranularity",
    enum: true

  field :report_country_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :report_category_id, 4, proto3_optional: true, type: :int64, json_name: "reportCategoryId"
  field :brand, 6, proto3_optional: true, type: :string
  field :rank, 7, proto3_optional: true, type: :int64
  field :previous_rank, 8, proto3_optional: true, type: :int64, json_name: "previousRank"

  field :relative_demand, 9,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.RelativeDemand.RelativeDemandEnum,
    json_name: "relativeDemand",
    enum: true

  field :previous_relative_demand, 10,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.RelativeDemand.RelativeDemandEnum,
    json_name: "previousRelativeDemand",
    enum: true

  field :relative_demand_change, 11,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Reports.V1beta.RelativeDemandChangeType.RelativeDemandChangeTypeEnum,
    json_name: "relativeDemandChange",
    enum: true
end

defmodule Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityCompetitorView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
  field :domain, 2, proto3_optional: true, type: :string
  field :is_your_domain, 3, proto3_optional: true, type: :bool, json_name: "isYourDomain"

  field :report_country_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :report_category_id, 5, proto3_optional: true, type: :int64, json_name: "reportCategoryId"

  field :traffic_source, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.TrafficSource.TrafficSourceEnum,
    json_name: "trafficSource",
    enum: true

  field :rank, 7, proto3_optional: true, type: :int64
  field :ads_organic_ratio, 8, proto3_optional: true, type: :double, json_name: "adsOrganicRatio"
  field :page_overlap_rate, 9, proto3_optional: true, type: :double, json_name: "pageOverlapRate"

  field :higher_position_rate, 10,
    proto3_optional: true,
    type: :double,
    json_name: "higherPositionRate"

  field :relative_visibility, 11,
    proto3_optional: true,
    type: :double,
    json_name: "relativeVisibility"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityTopMerchantView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
  field :domain, 2, proto3_optional: true, type: :string
  field :is_your_domain, 3, proto3_optional: true, type: :bool, json_name: "isYourDomain"

  field :report_country_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :report_category_id, 5, proto3_optional: true, type: :int64, json_name: "reportCategoryId"

  field :traffic_source, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.TrafficSource.TrafficSourceEnum,
    json_name: "trafficSource",
    enum: true

  field :rank, 7, proto3_optional: true, type: :int64
  field :ads_organic_ratio, 8, proto3_optional: true, type: :double, json_name: "adsOrganicRatio"
  field :page_overlap_rate, 9, proto3_optional: true, type: :double, json_name: "pageOverlapRate"

  field :higher_position_rate, 10,
    proto3_optional: true,
    type: :double,
    json_name: "higherPositionRate"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.CompetitiveVisibilityBenchmarkView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date

  field :report_country_code, 2,
    proto3_optional: true,
    type: :string,
    json_name: "reportCountryCode"

  field :report_category_id, 3, proto3_optional: true, type: :int64, json_name: "reportCategoryId"

  field :traffic_source, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Reports.V1beta.TrafficSource.TrafficSourceEnum,
    json_name: "trafficSource",
    enum: true

  field :your_domain_visibility_trend, 5,
    proto3_optional: true,
    type: :double,
    json_name: "yourDomainVisibilityTrend"

  field :category_benchmark_visibility_trend, 6,
    proto3_optional: true,
    type: :double,
    json_name: "categoryBenchmarkVisibilityTrend"
end

defmodule Google.Shopping.Merchant.Reports.V1beta.MarketingMethod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ReportGranularity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.RelativeDemand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.RelativeDemandChangeType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.TrafficSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ReportService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.reports.v1beta.ReportService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :Search,
      Google.Shopping.Merchant.Reports.V1beta.SearchRequest,
      Google.Shopping.Merchant.Reports.V1beta.SearchResponse
end

defmodule Google.Shopping.Merchant.Reports.V1beta.ReportService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Reports.V1beta.ReportService.Service
end