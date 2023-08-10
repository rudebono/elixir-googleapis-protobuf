defmodule Google.Ads.Googleads.V14.Resources.Customer do
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
    type: Google.Ads.Googleads.V14.Resources.CallReportingSetting,
    json_name: "callReportingSetting"

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V14.Resources.ConversionTrackingSetting,
    json_name: "conversionTrackingSetting",
    deprecated: false

  field :remarketing_setting, 15,
    type: Google.Ads.Googleads.V14.Resources.RemarketingSetting,
    json_name: "remarketingSetting",
    deprecated: false

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V14.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
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
    type: Google.Ads.Googleads.V14.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false

  field :location_asset_auto_migration_done, 38,
    proto3_optional: true,
    type: :bool,
    json_name: "locationAssetAutoMigrationDone",
    deprecated: false

  field :image_asset_auto_migration_done, 39,
    proto3_optional: true,
    type: :bool,
    json_name: "imageAssetAutoMigrationDone",
    deprecated: false

  field :location_asset_auto_migration_done_date_time, 40,
    proto3_optional: true,
    type: :string,
    json_name: "locationAssetAutoMigrationDoneDateTime",
    deprecated: false

  field :image_asset_auto_migration_done_date_time, 41,
    proto3_optional: true,
    type: :string,
    json_name: "imageAssetAutoMigrationDoneDateTime",
    deprecated: false

  field :offline_conversion_client_summaries, 43,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.OfflineConversionClientSummary,
    json_name: "offlineConversionClientSummaries",
    deprecated: false

  field :customer_agreement_setting, 44,
    type: Google.Ads.Googleads.V14.Resources.CustomerAgreementSetting,
    json_name: "customerAgreementSetting",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.CallReportingSetting do
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

defmodule Google.Ads.Googleads.V14.Resources.ConversionTrackingSetting do
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
    type: Google.Ads.Googleads.V14.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus,
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

defmodule Google.Ads.Googleads.V14.Resources.RemarketingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :google_global_site_tag, 2,
    proto3_optional: true,
    type: :string,
    json_name: "googleGlobalSiteTag",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.OfflineConversionClientSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :client, 1,
    type: Google.Ads.Googleads.V14.Enums.OfflineEventUploadClientEnum.OfflineEventUploadClient,
    enum: true,
    deprecated: false

  field :status, 2,
    type:
      Google.Ads.Googleads.V14.Enums.OfflineConversionDiagnosticStatusEnum.OfflineConversionDiagnosticStatus,
    enum: true,
    deprecated: false

  field :total_event_count, 3, type: :int64, json_name: "totalEventCount", deprecated: false

  field :successful_event_count, 4,
    type: :int64,
    json_name: "successfulEventCount",
    deprecated: false

  field :success_rate, 5, type: :double, json_name: "successRate", deprecated: false

  field :last_upload_date_time, 6,
    type: :string,
    json_name: "lastUploadDateTime",
    deprecated: false

  field :daily_summaries, 7,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.OfflineConversionUploadSummary,
    json_name: "dailySummaries",
    deprecated: false

  field :job_summaries, 8,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.OfflineConversionUploadSummary,
    json_name: "jobSummaries",
    deprecated: false

  field :alerts, 9,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.OfflineConversionUploadAlert,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.OfflineConversionUploadSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :dimension_key, 0

  field :successful_count, 3, type: :int64, json_name: "successfulCount", deprecated: false
  field :failed_count, 4, type: :int64, json_name: "failedCount", deprecated: false
  field :job_id, 1, type: :int64, json_name: "jobId", oneof: 0, deprecated: false
  field :upload_date, 2, type: :string, json_name: "uploadDate", oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.OfflineConversionUploadAlert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error, 1,
    type: Google.Ads.Googleads.V14.Resources.OfflineConversionUploadError,
    deprecated: false

  field :error_percentage, 2, type: :double, json_name: "errorPercentage", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.OfflineConversionUploadError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :error_code, 0

  field :collection_size_error, 1,
    type: Google.Ads.Googleads.V14.Errors.CollectionSizeErrorEnum.CollectionSizeError,
    json_name: "collectionSizeError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :conversion_adjustment_upload_error, 2,
    type:
      Google.Ads.Googleads.V14.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError,
    json_name: "conversionAdjustmentUploadError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :conversion_upload_error, 3,
    type: Google.Ads.Googleads.V14.Errors.ConversionUploadErrorEnum.ConversionUploadError,
    json_name: "conversionUploadError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :date_error, 4,
    type: Google.Ads.Googleads.V14.Errors.DateErrorEnum.DateError,
    json_name: "dateError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :distinct_error, 5,
    type: Google.Ads.Googleads.V14.Errors.DistinctErrorEnum.DistinctError,
    json_name: "distinctError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :field_error, 6,
    type: Google.Ads.Googleads.V14.Errors.FieldErrorEnum.FieldError,
    json_name: "fieldError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :mutate_error, 7,
    type: Google.Ads.Googleads.V14.Errors.MutateErrorEnum.MutateError,
    json_name: "mutateError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :not_allowlisted_error, 8,
    type: Google.Ads.Googleads.V14.Errors.NotAllowlistedErrorEnum.NotAllowlistedError,
    json_name: "notAllowlistedError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :string_format_error, 9,
    type: Google.Ads.Googleads.V14.Errors.StringFormatErrorEnum.StringFormatError,
    json_name: "stringFormatError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :string_length_error, 10,
    type: Google.Ads.Googleads.V14.Errors.StringLengthErrorEnum.StringLengthError,
    json_name: "stringLengthError",
    enum: true,
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.CustomerAgreementSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :accepted_lead_form_terms, 1,
    type: :bool,
    json_name: "acceptedLeadFormTerms",
    deprecated: false
end