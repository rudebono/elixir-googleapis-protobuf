defmodule Google.Analytics.Admin.V1alpha.IndustryCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INDUSTRY_CATEGORY_UNSPECIFIED, 0
  field :AUTOMOTIVE, 1
  field :BUSINESS_AND_INDUSTRIAL_MARKETS, 2
  field :FINANCE, 3
  field :HEALTHCARE, 4
  field :TECHNOLOGY, 5
  field :TRAVEL, 6
  field :OTHER, 7
  field :ARTS_AND_ENTERTAINMENT, 8
  field :BEAUTY_AND_FITNESS, 9
  field :BOOKS_AND_LITERATURE, 10
  field :FOOD_AND_DRINK, 11
  field :GAMES, 12
  field :HOBBIES_AND_LEISURE, 13
  field :HOME_AND_GARDEN, 14
  field :INTERNET_AND_TELECOM, 15
  field :LAW_AND_GOVERNMENT, 16
  field :NEWS, 17
  field :ONLINE_COMMUNITIES, 18
  field :PEOPLE_AND_SOCIETY, 19
  field :PETS_AND_ANIMALS, 20
  field :REAL_ESTATE, 21
  field :REFERENCE, 22
  field :SCIENCE, 23
  field :SPORTS, 24
  field :JOBS_AND_EDUCATION, 25
  field :SHOPPING, 26
end

defmodule Google.Analytics.Admin.V1alpha.ServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SERVICE_LEVEL_UNSPECIFIED, 0
  field :GOOGLE_ANALYTICS_STANDARD, 1
  field :GOOGLE_ANALYTICS_360, 2
end

defmodule Google.Analytics.Admin.V1alpha.ActorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACTOR_TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :SYSTEM, 2
  field :SUPPORT, 3
end

defmodule Google.Analytics.Admin.V1alpha.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :CREATED, 1
  field :UPDATED, 2
  field :DELETED, 3
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CHANGE_HISTORY_RESOURCE_TYPE_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :PROPERTY, 2
  field :FIREBASE_LINK, 6
  field :GOOGLE_ADS_LINK, 7
  field :GOOGLE_SIGNALS_SETTINGS, 8
  field :CONVERSION_EVENT, 9
  field :MEASUREMENT_PROTOCOL_SECRET, 10
  field :CUSTOM_DIMENSION, 11
  field :CUSTOM_METRIC, 12
  field :DATA_RETENTION_SETTINGS, 13
  field :DISPLAY_VIDEO_360_ADVERTISER_LINK, 14
  field :DISPLAY_VIDEO_360_ADVERTISER_LINK_PROPOSAL, 15
  field :SEARCH_ADS_360_LINK, 16
  field :DATA_STREAM, 18
  field :ATTRIBUTION_SETTINGS, 20
  field :EXPANDED_DATA_SET, 21
  field :CHANNEL_GROUP, 22
  field :BIGQUERY_LINK, 23
  field :ENHANCED_MEASUREMENT_SETTINGS, 24
  field :DATA_REDACTION_SETTINGS, 25
  field :SKADNETWORK_CONVERSION_VALUE_SCHEMA, 26
  field :ADSENSE_LINK, 27
  field :AUDIENCE, 28
  field :EVENT_CREATE_RULE, 29
  field :KEY_EVENT, 30
  field :CALCULATED_METRIC, 31
  field :REPORTING_DATA_ANNOTATION, 32
  field :SUBPROPERTY_SYNC_CONFIG, 33
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GOOGLE_SIGNALS_STATE_UNSPECIFIED, 0
  field :GOOGLE_SIGNALS_ENABLED, 1
  field :GOOGLE_SIGNALS_DISABLED, 2
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsConsent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GOOGLE_SIGNALS_CONSENT_UNSPECIFIED, 0
  field :GOOGLE_SIGNALS_CONSENT_CONSENTED, 2
  field :GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED, 1
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalInitiatingProduct do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED, 0
  field :GOOGLE_ANALYTICS, 1
  field :LINKED_PRODUCT, 2
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINK_PROPOSAL_STATE_UNSPECIFIED, 0
  field :AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS, 1
  field :AWAITING_REVIEW_FROM_LINKED_PRODUCT, 2
  field :WITHDRAWN, 3
  field :DECLINED, 4
  field :EXPIRED, 5
  field :OBSOLETE, 6
end

defmodule Google.Analytics.Admin.V1alpha.PropertyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PROPERTY_TYPE_UNSPECIFIED, 0
  field :PROPERTY_TYPE_ORDINARY, 1
  field :PROPERTY_TYPE_SUBPROPERTY, 2
  field :PROPERTY_TYPE_ROLLUP, 3
end

defmodule Google.Analytics.Admin.V1alpha.CoarseValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COARSE_VALUE_UNSPECIFIED, 0
  field :COARSE_VALUE_LOW, 1
  field :COARSE_VALUE_MEDIUM, 2
  field :COARSE_VALUE_HIGH, 3
end

defmodule Google.Analytics.Admin.V1alpha.DataStream.DataStreamType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_STREAM_TYPE_UNSPECIFIED, 0
  field :WEB_DATA_STREAM, 1
  field :ANDROID_APP_DATA_STREAM, 2
  field :IOS_APP_DATA_STREAM, 3
end

defmodule Google.Analytics.Admin.V1alpha.ConversionEvent.ConversionCountingMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONVERSION_COUNTING_METHOD_UNSPECIFIED, 0
  field :ONCE_PER_EVENT, 1
  field :ONCE_PER_SESSION, 2
end

defmodule Google.Analytics.Admin.V1alpha.KeyEvent.CountingMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COUNTING_METHOD_UNSPECIFIED, 0
  field :ONCE_PER_EVENT, 1
  field :ONCE_PER_SESSION, 2
end

defmodule Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DIMENSION_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
  field :USER, 2
  field :ITEM, 3
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MEASUREMENT_UNIT_UNSPECIFIED, 0
  field :STANDARD, 1
  field :CURRENCY, 2
  field :FEET, 3
  field :METERS, 4
  field :KILOMETERS, 5
  field :MILES, 6
  field :MILLISECONDS, 7
  field :SECONDS, 8
  field :MINUTES, 9
  field :HOURS, 10
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METRIC_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric.RestrictedMetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESTRICTED_METRIC_TYPE_UNSPECIFIED, 0
  field :COST_DATA, 1
  field :REVENUE_DATA, 2
end

defmodule Google.Analytics.Admin.V1alpha.CalculatedMetric.MetricUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METRIC_UNIT_UNSPECIFIED, 0
  field :STANDARD, 1
  field :CURRENCY, 2
  field :FEET, 3
  field :MILES, 4
  field :METERS, 5
  field :KILOMETERS, 6
  field :MILLISECONDS, 7
  field :SECONDS, 8
  field :MINUTES, 9
  field :HOURS, 10
end

defmodule Google.Analytics.Admin.V1alpha.CalculatedMetric.RestrictedMetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESTRICTED_METRIC_TYPE_UNSPECIFIED, 0
  field :COST_DATA, 1
  field :REVENUE_DATA, 2
end

defmodule Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RETENTION_DURATION_UNSPECIFIED, 0
  field :TWO_MONTHS, 1
  field :FOURTEEN_MONTHS, 3
  field :TWENTY_SIX_MONTHS, 4
  field :THIRTY_EIGHT_MONTHS, 5
  field :FIFTY_MONTHS, 6
end

defmodule Google.Analytics.Admin.V1alpha.AttributionSettings.AcquisitionConversionEventLookbackWindow do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED, 0
  field :ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_7_DAYS, 1
  field :ACQUISITION_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS, 2
end

defmodule Google.Analytics.Admin.V1alpha.AttributionSettings.OtherConversionEventLookbackWindow do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_UNSPECIFIED, 0
  field :OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_30_DAYS, 1
  field :OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_60_DAYS, 2
  field :OTHER_CONVERSION_EVENT_LOOKBACK_WINDOW_90_DAYS, 3
end

defmodule Google.Analytics.Admin.V1alpha.AttributionSettings.ReportingAttributionModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REPORTING_ATTRIBUTION_MODEL_UNSPECIFIED, 0
  field :PAID_AND_ORGANIC_CHANNELS_DATA_DRIVEN, 1
  field :PAID_AND_ORGANIC_CHANNELS_LAST_CLICK, 2
  field :GOOGLE_PAID_CHANNELS_LAST_CLICK, 7
end

defmodule Google.Analytics.Admin.V1alpha.AttributionSettings.AdsWebConversionDataExportScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ADS_WEB_CONVERSION_DATA_EXPORT_SCOPE_UNSPECIFIED, 0
  field :NOT_SELECTED_YET, 1
  field :PAID_AND_ORGANIC_CHANNELS, 2
  field :GOOGLE_PAID_CHANNELS, 3
end

defmodule Google.Analytics.Admin.V1alpha.ReportingDataAnnotation.Color do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COLOR_UNSPECIFIED, 0
  field :PURPLE, 1
  field :BROWN, 2
  field :BLUE, 3
  field :GREEN, 4
  field :RED, 5
  field :CYAN, 6
  field :ORANGE, 7
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertySyncConfig.SynchronizationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SYNCHRONIZATION_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :ALL, 2
end

defmodule Google.Analytics.Admin.V1alpha.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :region_code, 5, type: :string, json_name: "regionCode"
  field :deleted, 6, type: :bool, deprecated: false
  field :gmp_organization, 7, type: :string, json_name: "gmpOrganization", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :property_type, 14,
    type: Google.Analytics.Admin.V1alpha.PropertyType,
    json_name: "propertyType",
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :industry_category, 6,
    type: Google.Analytics.Admin.V1alpha.IndustryCategory,
    json_name: "industryCategory",
    enum: true

  field :time_zone, 7, type: :string, json_name: "timeZone", deprecated: false
  field :currency_code, 8, type: :string, json_name: "currencyCode"

  field :service_level, 10,
    type: Google.Analytics.Admin.V1alpha.ServiceLevel,
    json_name: "serviceLevel",
    enum: true,
    deprecated: false

  field :delete_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :account, 13, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataStream.WebStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :measurement_id, 1, type: :string, json_name: "measurementId", deprecated: false
  field :firebase_app_id, 2, type: :string, json_name: "firebaseAppId", deprecated: false
  field :default_uri, 3, type: :string, json_name: "defaultUri"
end

defmodule Google.Analytics.Admin.V1alpha.DataStream.AndroidAppStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :firebase_app_id, 1, type: :string, json_name: "firebaseAppId", deprecated: false
  field :package_name, 2, type: :string, json_name: "packageName", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataStream.IosAppStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :firebase_app_id, 1, type: :string, json_name: "firebaseAppId", deprecated: false
  field :bundle_id, 2, type: :string, json_name: "bundleId", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :stream_data, 0

  field :web_stream_data, 6,
    type: Google.Analytics.Admin.V1alpha.DataStream.WebStreamData,
    json_name: "webStreamData",
    oneof: 0

  field :android_app_stream_data, 7,
    type: Google.Analytics.Admin.V1alpha.DataStream.AndroidAppStreamData,
    json_name: "androidAppStreamData",
    oneof: 0

  field :ios_app_stream_data, 8,
    type: Google.Analytics.Admin.V1alpha.DataStream.IosAppStreamData,
    json_name: "iosAppStreamData",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Analytics.Admin.V1alpha.DataStream.DataStreamType,
    enum: true,
    deprecated: false

  field :display_name, 3, type: :string, json_name: "displayName"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.FirebaseLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GlobalSiteTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :snippet, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GoogleAdsLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :customer_id, 3, type: :string, json_name: "customerId", deprecated: false
  field :can_manage_clients, 4, type: :bool, json_name: "canManageClients", deprecated: false

  field :ads_personalization_enabled, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :creator_email_address, 9,
    type: :string,
    json_name: "creatorEmailAddress",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataSharingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :sharing_with_google_support_enabled, 2,
    type: :bool,
    json_name: "sharingWithGoogleSupportEnabled"

  field :sharing_with_google_assigned_sales_enabled, 3,
    type: :bool,
    json_name: "sharingWithGoogleAssignedSalesEnabled"

  field :sharing_with_google_any_sales_enabled, 4,
    type: :bool,
    json_name: "sharingWithGoogleAnySalesEnabled",
    deprecated: true

  field :sharing_with_google_products_enabled, 5,
    type: :bool,
    json_name: "sharingWithGoogleProductsEnabled"

  field :sharing_with_others_enabled, 6, type: :bool, json_name: "sharingWithOthersEnabled"
end

defmodule Google.Analytics.Admin.V1alpha.AccountSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :account, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :property_summaries, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.PropertySummary,
    json_name: "propertySummaries"
end

defmodule Google.Analytics.Admin.V1alpha.PropertySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :property_type, 3,
    type: Google.Analytics.Admin.V1alpha.PropertyType,
    json_name: "propertyType",
    enum: true

  field :parent, 4, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :secret_value, 3, type: :string, json_name: "secretValue", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SKAdNetworkConversionValueSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :postback_window_one, 2,
    type: Google.Analytics.Admin.V1alpha.PostbackWindow,
    json_name: "postbackWindowOne",
    deprecated: false

  field :postback_window_two, 3,
    type: Google.Analytics.Admin.V1alpha.PostbackWindow,
    json_name: "postbackWindowTwo"

  field :postback_window_three, 4,
    type: Google.Analytics.Admin.V1alpha.PostbackWindow,
    json_name: "postbackWindowThree"

  field :apply_conversion_values, 5, type: :bool, json_name: "applyConversionValues"
end

defmodule Google.Analytics.Admin.V1alpha.PostbackWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversion_values, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ConversionValues,
    json_name: "conversionValues"

  field :postback_window_settings_enabled, 2,
    type: :bool,
    json_name: "postbackWindowSettingsEnabled"
end

defmodule Google.Analytics.Admin.V1alpha.ConversionValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :fine_value, 2, proto3_optional: true, type: :int32, json_name: "fineValue"

  field :coarse_value, 3,
    type: Google.Analytics.Admin.V1alpha.CoarseValue,
    json_name: "coarseValue",
    enum: true,
    deprecated: false

  field :event_mappings, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.EventMapping,
    json_name: "eventMappings"

  field :lock_enabled, 5, type: :bool, json_name: "lockEnabled"
end

defmodule Google.Analytics.Admin.V1alpha.EventMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_name, 1, type: :string, json_name: "eventName", deprecated: false
  field :min_event_count, 2, proto3_optional: true, type: :int64, json_name: "minEventCount"
  field :max_event_count, 3, proto3_optional: true, type: :int64, json_name: "maxEventCount"
  field :min_event_value, 4, proto3_optional: true, type: :double, json_name: "minEventValue"
  field :max_event_value, 5, proto3_optional: true, type: :double, json_name: "maxEventValue"
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :change_time, 2, type: Google.Protobuf.Timestamp, json_name: "changeTime"

  field :actor_type, 3,
    type: Google.Analytics.Admin.V1alpha.ActorType,
    json_name: "actorType",
    enum: true

  field :user_actor_email, 4, type: :string, json_name: "userActorEmail"
  field :changes_filtered, 5, type: :bool, json_name: "changesFiltered"
  field :changes, 6, repeated: true, type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :resource, 0

  field :account, 1, type: Google.Analytics.Admin.V1alpha.Account, oneof: 0
  field :property, 2, type: Google.Analytics.Admin.V1alpha.Property, oneof: 0

  field :firebase_link, 6,
    type: Google.Analytics.Admin.V1alpha.FirebaseLink,
    json_name: "firebaseLink",
    oneof: 0

  field :google_ads_link, 7,
    type: Google.Analytics.Admin.V1alpha.GoogleAdsLink,
    json_name: "googleAdsLink",
    oneof: 0

  field :google_signals_settings, 8,
    type: Google.Analytics.Admin.V1alpha.GoogleSignalsSettings,
    json_name: "googleSignalsSettings",
    oneof: 0

  field :display_video_360_advertiser_link, 9,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink,
    json_name: "displayVideo360AdvertiserLink",
    oneof: 0

  field :display_video_360_advertiser_link_proposal, 10,
    type: Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal,
    json_name: "displayVideo360AdvertiserLinkProposal",
    oneof: 0

  field :conversion_event, 11,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent,
    json_name: "conversionEvent",
    oneof: 0

  field :measurement_protocol_secret, 12,
    type: Google.Analytics.Admin.V1alpha.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    oneof: 0

  field :custom_dimension, 13,
    type: Google.Analytics.Admin.V1alpha.CustomDimension,
    json_name: "customDimension",
    oneof: 0

  field :custom_metric, 14,
    type: Google.Analytics.Admin.V1alpha.CustomMetric,
    json_name: "customMetric",
    oneof: 0

  field :data_retention_settings, 15,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings,
    json_name: "dataRetentionSettings",
    oneof: 0

  field :search_ads_360_link, 16,
    type: Google.Analytics.Admin.V1alpha.SearchAds360Link,
    json_name: "searchAds360Link",
    oneof: 0

  field :data_stream, 18,
    type: Google.Analytics.Admin.V1alpha.DataStream,
    json_name: "dataStream",
    oneof: 0

  field :attribution_settings, 20,
    type: Google.Analytics.Admin.V1alpha.AttributionSettings,
    json_name: "attributionSettings",
    oneof: 0

  field :expanded_data_set, 21,
    type: Google.Analytics.Admin.V1alpha.ExpandedDataSet,
    json_name: "expandedDataSet",
    oneof: 0

  field :channel_group, 22,
    type: Google.Analytics.Admin.V1alpha.ChannelGroup,
    json_name: "channelGroup",
    oneof: 0

  field :bigquery_link, 23,
    type: Google.Analytics.Admin.V1alpha.BigQueryLink,
    json_name: "bigqueryLink",
    oneof: 0

  field :enhanced_measurement_settings, 24,
    type: Google.Analytics.Admin.V1alpha.EnhancedMeasurementSettings,
    json_name: "enhancedMeasurementSettings",
    oneof: 0

  field :data_redaction_settings, 25,
    type: Google.Analytics.Admin.V1alpha.DataRedactionSettings,
    json_name: "dataRedactionSettings",
    oneof: 0

  field :skadnetwork_conversion_value_schema, 26,
    type: Google.Analytics.Admin.V1alpha.SKAdNetworkConversionValueSchema,
    json_name: "skadnetworkConversionValueSchema",
    oneof: 0

  field :adsense_link, 27,
    type: Google.Analytics.Admin.V1alpha.AdSenseLink,
    json_name: "adsenseLink",
    oneof: 0

  field :audience, 28, type: Google.Analytics.Admin.V1alpha.Audience, oneof: 0

  field :event_create_rule, 29,
    type: Google.Analytics.Admin.V1alpha.EventCreateRule,
    json_name: "eventCreateRule",
    oneof: 0

  field :key_event, 30,
    type: Google.Analytics.Admin.V1alpha.KeyEvent,
    json_name: "keyEvent",
    oneof: 0

  field :calculated_metric, 31,
    type: Google.Analytics.Admin.V1alpha.CalculatedMetric,
    json_name: "calculatedMetric",
    oneof: 0

  field :reporting_data_annotation, 32,
    type: Google.Analytics.Admin.V1alpha.ReportingDataAnnotation,
    json_name: "reportingDataAnnotation",
    oneof: 0

  field :subproperty_sync_config, 33,
    type: Google.Analytics.Admin.V1alpha.SubpropertySyncConfig,
    json_name: "subpropertySyncConfig",
    oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.ChangeHistoryChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource, 1, type: :string
  field :action, 2, type: Google.Analytics.Admin.V1alpha.ActionType, enum: true

  field :resource_before_change, 3,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceBeforeChange"

  field :resource_after_change, 4,
    type: Google.Analytics.Admin.V1alpha.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceAfterChange"
end

defmodule Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :advertiser_id, 2, type: :string, json_name: "advertiserId", deprecated: false

  field :advertiser_display_name, 3,
    type: :string,
    json_name: "advertiserDisplayName",
    deprecated: false

  field :ads_personalization_enabled, 4,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :campaign_data_sharing_enabled, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "campaignDataSharingEnabled",
    deprecated: false

  field :cost_data_sharing_enabled, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "costDataSharingEnabled",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DisplayVideo360AdvertiserLinkProposal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :advertiser_id, 2, type: :string, json_name: "advertiserId", deprecated: false

  field :link_proposal_status_details, 3,
    type: Google.Analytics.Admin.V1alpha.LinkProposalStatusDetails,
    json_name: "linkProposalStatusDetails",
    deprecated: false

  field :advertiser_display_name, 4,
    type: :string,
    json_name: "advertiserDisplayName",
    deprecated: false

  field :validation_email, 5, type: :string, json_name: "validationEmail", deprecated: false

  field :ads_personalization_enabled, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled",
    deprecated: false

  field :campaign_data_sharing_enabled, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "campaignDataSharingEnabled",
    deprecated: false

  field :cost_data_sharing_enabled, 8,
    type: Google.Protobuf.BoolValue,
    json_name: "costDataSharingEnabled",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SearchAds360Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :advertiser_id, 2, type: :string, json_name: "advertiserId", deprecated: false

  field :campaign_data_sharing_enabled, 3,
    type: Google.Protobuf.BoolValue,
    json_name: "campaignDataSharingEnabled",
    deprecated: false

  field :cost_data_sharing_enabled, 4,
    type: Google.Protobuf.BoolValue,
    json_name: "costDataSharingEnabled",
    deprecated: false

  field :advertiser_display_name, 5,
    type: :string,
    json_name: "advertiserDisplayName",
    deprecated: false

  field :ads_personalization_enabled, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "adsPersonalizationEnabled"

  field :site_stats_sharing_enabled, 7,
    type: Google.Protobuf.BoolValue,
    json_name: "siteStatsSharingEnabled"
end

defmodule Google.Analytics.Admin.V1alpha.LinkProposalStatusDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :link_proposal_initiating_product, 1,
    type: Google.Analytics.Admin.V1alpha.LinkProposalInitiatingProduct,
    json_name: "linkProposalInitiatingProduct",
    enum: true,
    deprecated: false

  field :requestor_email, 2, type: :string, json_name: "requestorEmail", deprecated: false

  field :link_proposal_state, 3,
    type: Google.Analytics.Admin.V1alpha.LinkProposalState,
    json_name: "linkProposalState",
    enum: true,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ConversionEvent.DefaultConversionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :double
  field :currency_code, 2, proto3_optional: true, type: :string, json_name: "currencyCode"
end

defmodule Google.Analytics.Admin.V1alpha.ConversionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event_name, 2, type: :string, json_name: "eventName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :deletable, 4, type: :bool, deprecated: false
  field :custom, 5, type: :bool, deprecated: false

  field :counting_method, 6,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent.ConversionCountingMethod,
    json_name: "countingMethod",
    enum: true,
    deprecated: false

  field :default_conversion_value, 7,
    proto3_optional: true,
    type: Google.Analytics.Admin.V1alpha.ConversionEvent.DefaultConversionValue,
    json_name: "defaultConversionValue",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.KeyEvent.DefaultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :numeric_value, 1, type: :double, json_name: "numericValue", deprecated: false
  field :currency_code, 2, type: :string, json_name: "currencyCode", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.KeyEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event_name, 2, type: :string, json_name: "eventName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :deletable, 4, type: :bool, deprecated: false
  field :custom, 5, type: :bool, deprecated: false

  field :counting_method, 6,
    type: Google.Analytics.Admin.V1alpha.KeyEvent.CountingMethod,
    json_name: "countingMethod",
    enum: true,
    deprecated: false

  field :default_value, 7,
    type: Google.Analytics.Admin.V1alpha.KeyEvent.DefaultValue,
    json_name: "defaultValue",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.GoogleSignalsSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Analytics.Admin.V1alpha.GoogleSignalsState, enum: true

  field :consent, 4,
    type: Google.Analytics.Admin.V1alpha.GoogleSignalsConsent,
    enum: true,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CustomDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameter_name, 2, type: :string, json_name: "parameterName", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :scope, 5,
    type: Google.Analytics.Admin.V1alpha.CustomDimension.DimensionScope,
    enum: true,
    deprecated: false

  field :disallow_ads_personalization, 6,
    type: :bool,
    json_name: "disallowAdsPersonalization",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CustomMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameter_name, 2, type: :string, json_name: "parameterName", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :measurement_unit, 5,
    type: Google.Analytics.Admin.V1alpha.CustomMetric.MeasurementUnit,
    json_name: "measurementUnit",
    enum: true,
    deprecated: false

  field :scope, 6,
    type: Google.Analytics.Admin.V1alpha.CustomMetric.MetricScope,
    enum: true,
    deprecated: false

  field :restricted_metric_type, 8,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.CustomMetric.RestrictedMetricType,
    json_name: "restrictedMetricType",
    enum: true,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.CalculatedMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :calculated_metric_id, 4,
    type: :string,
    json_name: "calculatedMetricId",
    deprecated: false

  field :metric_unit, 5,
    type: Google.Analytics.Admin.V1alpha.CalculatedMetric.MetricUnit,
    json_name: "metricUnit",
    enum: true,
    deprecated: false

  field :restricted_metric_type, 6,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.CalculatedMetric.RestrictedMetricType,
    json_name: "restrictedMetricType",
    enum: true,
    deprecated: false

  field :formula, 7, type: :string, deprecated: false

  field :invalid_metric_reference, 9,
    type: :bool,
    json_name: "invalidMetricReference",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataRetentionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :event_data_retention, 2,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration,
    json_name: "eventDataRetention",
    enum: true,
    deprecated: false

  field :user_data_retention, 4,
    type: Google.Analytics.Admin.V1alpha.DataRetentionSettings.RetentionDuration,
    json_name: "userDataRetention",
    enum: true,
    deprecated: false

  field :reset_user_data_on_new_activity, 3, type: :bool, json_name: "resetUserDataOnNewActivity"
end

defmodule Google.Analytics.Admin.V1alpha.AttributionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :acquisition_conversion_event_lookback_window, 2,
    type:
      Google.Analytics.Admin.V1alpha.AttributionSettings.AcquisitionConversionEventLookbackWindow,
    json_name: "acquisitionConversionEventLookbackWindow",
    enum: true,
    deprecated: false

  field :other_conversion_event_lookback_window, 3,
    type: Google.Analytics.Admin.V1alpha.AttributionSettings.OtherConversionEventLookbackWindow,
    json_name: "otherConversionEventLookbackWindow",
    enum: true,
    deprecated: false

  field :reporting_attribution_model, 4,
    type: Google.Analytics.Admin.V1alpha.AttributionSettings.ReportingAttributionModel,
    json_name: "reportingAttributionModel",
    enum: true,
    deprecated: false

  field :ads_web_conversion_data_export_scope, 5,
    type: Google.Analytics.Admin.V1alpha.AttributionSettings.AdsWebConversionDataExportScope,
    json_name: "adsWebConversionDataExportScope",
    enum: true,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.AccessBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :access_target, 0

  field :user, 2, type: :string, oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :roles, 3, repeated: true, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.BigQueryLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :daily_export_enabled, 4, type: :bool, json_name: "dailyExportEnabled"
  field :streaming_export_enabled, 5, type: :bool, json_name: "streamingExportEnabled"
  field :fresh_daily_export_enabled, 9, type: :bool, json_name: "freshDailyExportEnabled"
  field :include_advertising_id, 6, type: :bool, json_name: "includeAdvertisingId"
  field :export_streams, 7, repeated: true, type: :string, json_name: "exportStreams"
  field :excluded_events, 8, repeated: true, type: :string, json_name: "excludedEvents"
  field :dataset_location, 10, type: :string, json_name: "datasetLocation", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.EnhancedMeasurementSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :stream_enabled, 2, type: :bool, json_name: "streamEnabled"
  field :scrolls_enabled, 3, type: :bool, json_name: "scrollsEnabled"
  field :outbound_clicks_enabled, 4, type: :bool, json_name: "outboundClicksEnabled"
  field :site_search_enabled, 5, type: :bool, json_name: "siteSearchEnabled"
  field :video_engagement_enabled, 6, type: :bool, json_name: "videoEngagementEnabled"
  field :file_downloads_enabled, 7, type: :bool, json_name: "fileDownloadsEnabled"
  field :page_changes_enabled, 8, type: :bool, json_name: "pageChangesEnabled"
  field :form_interactions_enabled, 9, type: :bool, json_name: "formInteractionsEnabled"

  field :search_query_parameter, 10,
    type: :string,
    json_name: "searchQueryParameter",
    deprecated: false

  field :uri_query_parameter, 11, type: :string, json_name: "uriQueryParameter"
end

defmodule Google.Analytics.Admin.V1alpha.ConnectedSiteTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :tag_id, 2, type: :string, json_name: "tagId", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.DataRedactionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email_redaction_enabled, 2, type: :bool, json_name: "emailRedactionEnabled"

  field :query_parameter_redaction_enabled, 3,
    type: :bool,
    json_name: "queryParameterRedactionEnabled"

  field :query_parameter_keys, 4, repeated: true, type: :string, json_name: "queryParameterKeys"
end

defmodule Google.Analytics.Admin.V1alpha.AdSenseLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ad_client_code, 2, type: :string, json_name: "adClientCode", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.RollupPropertySourceLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :source_property, 2, type: :string, json_name: "sourceProperty", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ReportingDataAnnotation.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ReportingDataAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target, 0

  field :annotation_date, 4, type: Google.Type.Date, json_name: "annotationDate", oneof: 0

  field :annotation_date_range, 5,
    type: Google.Analytics.Admin.V1alpha.ReportingDataAnnotation.DateRange,
    json_name: "annotationDateRange",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :color, 6,
    type: Google.Analytics.Admin.V1alpha.ReportingDataAnnotation.Color,
    enum: true,
    deprecated: false

  field :system_generated, 7, type: :bool, json_name: "systemGenerated", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertySyncConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :apply_to_property, 2, type: :string, json_name: "applyToProperty", deprecated: false

  field :custom_dimension_and_metric_sync_mode, 3,
    type: Google.Analytics.Admin.V1alpha.SubpropertySyncConfig.SynchronizationMode,
    json_name: "customDimensionAndMetricSyncMode",
    enum: true,
    deprecated: false
end
