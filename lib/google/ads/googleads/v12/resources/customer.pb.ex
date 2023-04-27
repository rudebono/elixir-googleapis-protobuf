defmodule Google.Ads.Googleads.V12.Resources.Customer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 19, proto3_optional: true, type: :int64, deprecated: false
  field :descriptive_name, 20, proto3_optional: true, type: :string, json_name: "descriptiveName"

  field :currency_code, 21,
    proto3_optional: true,
    type: :string,
    json_name: "currencyCode",
    deprecated: false

  field :time_zone, 22,
    proto3_optional: true,
    type: :string,
    json_name: "timeZone",
    deprecated: false

  field :tracking_url_template, 23,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :final_url_suffix, 24, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :auto_tagging_enabled, 25,
    proto3_optional: true,
    type: :bool,
    json_name: "autoTaggingEnabled"

  field :has_partners_badge, 26,
    proto3_optional: true,
    type: :bool,
    json_name: "hasPartnersBadge",
    deprecated: false

  field :manager, 27, proto3_optional: true, type: :bool, deprecated: false

  field :test_account, 28,
    proto3_optional: true,
    type: :bool,
    json_name: "testAccount",
    deprecated: false

  field :call_reporting_setting, 10,
    type: Google.Ads.Googleads.V12.Resources.CallReportingSetting,
    json_name: "callReportingSetting"

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V12.Resources.ConversionTrackingSetting,
    json_name: "conversionTrackingSetting",
    deprecated: false

  field :remarketing_setting, 15,
    type: Google.Ads.Googleads.V12.Resources.RemarketingSetting,
    json_name: "remarketingSetting",
    deprecated: false

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V12.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    json_name: "payPerConversionEligibilityFailureReasons",
    enum: true,
    deprecated: false

  field :optimization_score, 29,
    proto3_optional: true,
    type: :double,
    json_name: "optimizationScore",
    deprecated: false

  field :optimization_score_weight, 30,
    type: :double,
    json_name: "optimizationScoreWeight",
    deprecated: false

  field :status, 36,
    type: Google.Ads.Googleads.V12.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.CallReportingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :call_reporting_enabled, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "callReportingEnabled"

  field :call_conversion_reporting_enabled, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "callConversionReportingEnabled"

  field :call_conversion_action, 12,
    proto3_optional: true,
    type: :string,
    json_name: "callConversionAction",
    deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.ConversionTrackingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :conversion_tracking_id, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "conversionTrackingId",
    deprecated: false

  field :cross_account_conversion_tracking_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "crossAccountConversionTrackingId",
    deprecated: false

  field :accepted_customer_data_terms, 5,
    type: :bool,
    json_name: "acceptedCustomerDataTerms",
    deprecated: false

  field :conversion_tracking_status, 6,
    type: Google.Ads.Googleads.V12.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus,
    json_name: "conversionTrackingStatus",
    enum: true,
    deprecated: false

  field :enhanced_conversions_for_leads_enabled, 7,
    type: :bool,
    json_name: "enhancedConversionsForLeadsEnabled",
    deprecated: false

  field :google_ads_conversion_customer, 8,
    type: :string,
    json_name: "googleAdsConversionCustomer",
    deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.RemarketingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :google_global_site_tag, 2,
    proto3_optional: true,
    type: :string,
    json_name: "googleGlobalSiteTag",
    deprecated: false
end