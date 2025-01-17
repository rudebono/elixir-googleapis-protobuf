defmodule Google.Analytics.Admin.V1beta.IndustryCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Analytics.Admin.V1beta.ServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SERVICE_LEVEL_UNSPECIFIED, 0
  field :GOOGLE_ANALYTICS_STANDARD, 1
  field :GOOGLE_ANALYTICS_360, 2
end

defmodule Google.Analytics.Admin.V1beta.ActorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTOR_TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :SYSTEM, 2
  field :SUPPORT, 3
end

defmodule Google.Analytics.Admin.V1beta.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :CREATED, 1
  field :UPDATED, 2
  field :DELETED, 3
end

defmodule Google.Analytics.Admin.V1beta.ChangeHistoryResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CHANGE_HISTORY_RESOURCE_TYPE_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :PROPERTY, 2
  field :FIREBASE_LINK, 6
  field :GOOGLE_ADS_LINK, 7
  field :GOOGLE_SIGNALS_SETTINGS, 8
  field :CONVERSION_EVENT, 9
  field :MEASUREMENT_PROTOCOL_SECRET, 10
  field :DATA_RETENTION_SETTINGS, 13
  field :DISPLAY_VIDEO_360_ADVERTISER_LINK, 14
  field :DISPLAY_VIDEO_360_ADVERTISER_LINK_PROPOSAL, 15
  field :DATA_STREAM, 18
  field :ATTRIBUTION_SETTINGS, 20
end

defmodule Google.Analytics.Admin.V1beta.PropertyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PROPERTY_TYPE_UNSPECIFIED, 0
  field :PROPERTY_TYPE_ORDINARY, 1
  field :PROPERTY_TYPE_SUBPROPERTY, 2
  field :PROPERTY_TYPE_ROLLUP, 3
end

defmodule Google.Analytics.Admin.V1beta.DataStream.DataStreamType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DATA_STREAM_TYPE_UNSPECIFIED, 0
  field :WEB_DATA_STREAM, 1
  field :ANDROID_APP_DATA_STREAM, 2
  field :IOS_APP_DATA_STREAM, 3
end

defmodule Google.Analytics.Admin.V1beta.ConversionEvent.ConversionCountingMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CONVERSION_COUNTING_METHOD_UNSPECIFIED, 0
  field :ONCE_PER_EVENT, 1
  field :ONCE_PER_SESSION, 2
end

defmodule Google.Analytics.Admin.V1beta.KeyEvent.CountingMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COUNTING_METHOD_UNSPECIFIED, 0
  field :ONCE_PER_EVENT, 1
  field :ONCE_PER_SESSION, 2
end

defmodule Google.Analytics.Admin.V1beta.CustomDimension.DimensionScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DIMENSION_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
  field :USER, 2
  field :ITEM, 3
end

defmodule Google.Analytics.Admin.V1beta.CustomMetric.MeasurementUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Analytics.Admin.V1beta.CustomMetric.MetricScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METRIC_SCOPE_UNSPECIFIED, 0
  field :EVENT, 1
end

defmodule Google.Analytics.Admin.V1beta.CustomMetric.RestrictedMetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESTRICTED_METRIC_TYPE_UNSPECIFIED, 0
  field :COST_DATA, 1
  field :REVENUE_DATA, 2
end

defmodule Google.Analytics.Admin.V1beta.DataRetentionSettings.RetentionDuration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RETENTION_DURATION_UNSPECIFIED, 0
  field :TWO_MONTHS, 1
  field :FOURTEEN_MONTHS, 3
  field :TWENTY_SIX_MONTHS, 4
  field :THIRTY_EIGHT_MONTHS, 5
  field :FIFTY_MONTHS, 6
end

defmodule Google.Analytics.Admin.V1beta.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Analytics.Admin.V1beta.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :property_type, 14,
    type: Google.Analytics.Admin.V1beta.PropertyType,
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
    type: Google.Analytics.Admin.V1beta.IndustryCategory,
    json_name: "industryCategory",
    enum: true

  field :time_zone, 7, type: :string, json_name: "timeZone", deprecated: false
  field :currency_code, 8, type: :string, json_name: "currencyCode"

  field :service_level, 10,
    type: Google.Analytics.Admin.V1beta.ServiceLevel,
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

defmodule Google.Analytics.Admin.V1beta.DataStream.WebStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :measurement_id, 1, type: :string, json_name: "measurementId", deprecated: false
  field :firebase_app_id, 2, type: :string, json_name: "firebaseAppId", deprecated: false
  field :default_uri, 3, type: :string, json_name: "defaultUri"
end

defmodule Google.Analytics.Admin.V1beta.DataStream.AndroidAppStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :firebase_app_id, 1, type: :string, json_name: "firebaseAppId", deprecated: false
  field :package_name, 2, type: :string, json_name: "packageName", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DataStream.IosAppStreamData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :firebase_app_id, 1, type: :string, json_name: "firebaseAppId", deprecated: false
  field :bundle_id, 2, type: :string, json_name: "bundleId", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DataStream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :stream_data, 0

  field :web_stream_data, 6,
    type: Google.Analytics.Admin.V1beta.DataStream.WebStreamData,
    json_name: "webStreamData",
    oneof: 0

  field :android_app_stream_data, 7,
    type: Google.Analytics.Admin.V1beta.DataStream.AndroidAppStreamData,
    json_name: "androidAppStreamData",
    oneof: 0

  field :ios_app_stream_data, 8,
    type: Google.Analytics.Admin.V1beta.DataStream.IosAppStreamData,
    json_name: "iosAppStreamData",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Analytics.Admin.V1beta.DataStream.DataStreamType,
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

defmodule Google.Analytics.Admin.V1beta.FirebaseLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.GoogleAdsLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Analytics.Admin.V1beta.DataSharingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :sharing_with_google_support_enabled, 2,
    type: :bool,
    json_name: "sharingWithGoogleSupportEnabled"

  field :sharing_with_google_assigned_sales_enabled, 3,
    type: :bool,
    json_name: "sharingWithGoogleAssignedSalesEnabled"

  field :sharing_with_google_any_sales_enabled, 4,
    type: :bool,
    json_name: "sharingWithGoogleAnySalesEnabled"

  field :sharing_with_google_products_enabled, 5,
    type: :bool,
    json_name: "sharingWithGoogleProductsEnabled"

  field :sharing_with_others_enabled, 6, type: :bool, json_name: "sharingWithOthersEnabled"
end

defmodule Google.Analytics.Admin.V1beta.AccountSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :account, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :property_summaries, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.PropertySummary,
    json_name: "propertySummaries"
end

defmodule Google.Analytics.Admin.V1beta.PropertySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :property_type, 3,
    type: Google.Analytics.Admin.V1beta.PropertyType,
    json_name: "propertyType",
    enum: true

  field :parent, 4, type: :string
end

defmodule Google.Analytics.Admin.V1beta.MeasurementProtocolSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :secret_value, 3, type: :string, json_name: "secretValue", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.ChangeHistoryEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :change_time, 2, type: Google.Protobuf.Timestamp, json_name: "changeTime"

  field :actor_type, 3,
    type: Google.Analytics.Admin.V1beta.ActorType,
    json_name: "actorType",
    enum: true

  field :user_actor_email, 4, type: :string, json_name: "userActorEmail"
  field :changes_filtered, 5, type: :bool, json_name: "changesFiltered"
  field :changes, 6, repeated: true, type: Google.Analytics.Admin.V1beta.ChangeHistoryChange
end

defmodule Google.Analytics.Admin.V1beta.ChangeHistoryChange.ChangeHistoryResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :resource, 0

  field :account, 1, type: Google.Analytics.Admin.V1beta.Account, oneof: 0
  field :property, 2, type: Google.Analytics.Admin.V1beta.Property, oneof: 0

  field :firebase_link, 6,
    type: Google.Analytics.Admin.V1beta.FirebaseLink,
    json_name: "firebaseLink",
    oneof: 0

  field :google_ads_link, 7,
    type: Google.Analytics.Admin.V1beta.GoogleAdsLink,
    json_name: "googleAdsLink",
    oneof: 0

  field :conversion_event, 11,
    type: Google.Analytics.Admin.V1beta.ConversionEvent,
    json_name: "conversionEvent",
    oneof: 0

  field :measurement_protocol_secret, 12,
    type: Google.Analytics.Admin.V1beta.MeasurementProtocolSecret,
    json_name: "measurementProtocolSecret",
    oneof: 0

  field :data_retention_settings, 15,
    type: Google.Analytics.Admin.V1beta.DataRetentionSettings,
    json_name: "dataRetentionSettings",
    oneof: 0

  field :data_stream, 18,
    type: Google.Analytics.Admin.V1beta.DataStream,
    json_name: "dataStream",
    oneof: 0
end

defmodule Google.Analytics.Admin.V1beta.ChangeHistoryChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource, 1, type: :string
  field :action, 2, type: Google.Analytics.Admin.V1beta.ActionType, enum: true

  field :resource_before_change, 3,
    type: Google.Analytics.Admin.V1beta.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceBeforeChange"

  field :resource_after_change, 4,
    type: Google.Analytics.Admin.V1beta.ChangeHistoryChange.ChangeHistoryResource,
    json_name: "resourceAfterChange"
end

defmodule Google.Analytics.Admin.V1beta.ConversionEvent.DefaultConversionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :double
  field :currency_code, 2, proto3_optional: true, type: :string, json_name: "currencyCode"
end

defmodule Google.Analytics.Admin.V1beta.ConversionEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event_name, 2, type: :string, json_name: "eventName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :deletable, 4, type: :bool, deprecated: false
  field :custom, 5, type: :bool, deprecated: false

  field :counting_method, 6,
    type: Google.Analytics.Admin.V1beta.ConversionEvent.ConversionCountingMethod,
    json_name: "countingMethod",
    enum: true,
    deprecated: false

  field :default_conversion_value, 7,
    proto3_optional: true,
    type: Google.Analytics.Admin.V1beta.ConversionEvent.DefaultConversionValue,
    json_name: "defaultConversionValue",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.KeyEvent.DefaultValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :numeric_value, 1, type: :double, json_name: "numericValue", deprecated: false
  field :currency_code, 2, type: :string, json_name: "currencyCode", deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.KeyEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :event_name, 2, type: :string, json_name: "eventName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :deletable, 4, type: :bool, deprecated: false
  field :custom, 5, type: :bool, deprecated: false

  field :counting_method, 6,
    type: Google.Analytics.Admin.V1beta.KeyEvent.CountingMethod,
    json_name: "countingMethod",
    enum: true,
    deprecated: false

  field :default_value, 7,
    type: Google.Analytics.Admin.V1beta.KeyEvent.DefaultValue,
    json_name: "defaultValue",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CustomDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameter_name, 2, type: :string, json_name: "parameterName", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :scope, 5,
    type: Google.Analytics.Admin.V1beta.CustomDimension.DimensionScope,
    enum: true,
    deprecated: false

  field :disallow_ads_personalization, 6,
    type: :bool,
    json_name: "disallowAdsPersonalization",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.CustomMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parameter_name, 2, type: :string, json_name: "parameterName", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :measurement_unit, 5,
    type: Google.Analytics.Admin.V1beta.CustomMetric.MeasurementUnit,
    json_name: "measurementUnit",
    enum: true,
    deprecated: false

  field :scope, 6,
    type: Google.Analytics.Admin.V1beta.CustomMetric.MetricScope,
    enum: true,
    deprecated: false

  field :restricted_metric_type, 8,
    repeated: true,
    type: Google.Analytics.Admin.V1beta.CustomMetric.RestrictedMetricType,
    json_name: "restrictedMetricType",
    enum: true,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1beta.DataRetentionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :event_data_retention, 2,
    type: Google.Analytics.Admin.V1beta.DataRetentionSettings.RetentionDuration,
    json_name: "eventDataRetention",
    enum: true

  field :reset_user_data_on_new_activity, 3, type: :bool, json_name: "resetUserDataOnNewActivity"
end
