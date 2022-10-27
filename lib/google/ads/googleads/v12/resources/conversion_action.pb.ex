defmodule Google.Ads.Googleads.V12.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attribution_model, 1,
    type: Google.Ads.Googleads.V12.Enums.AttributionModelEnum.AttributionModel,
    json_name: "attributionModel",
    enum: true

  field :data_driven_model_status, 2,
    type: Google.Ads.Googleads.V12.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    json_name: "dataDrivenModelStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.ConversionAction.ValueSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default_value, 4, proto3_optional: true, type: :double, json_name: "defaultValue"

  field :default_currency_code, 5,
    proto3_optional: true,
    type: :string,
    json_name: "defaultCurrencyCode"

  field :always_use_default_value, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "alwaysUseDefaultValue"
end

defmodule Google.Ads.Googleads.V12.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "eventName",
    deprecated: false

  field :provider_name, 3, type: :string, json_name: "providerName", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.ConversionAction.FirebaseSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "eventName",
    deprecated: false

  field :project_id, 4,
    proto3_optional: true,
    type: :string,
    json_name: "projectId",
    deprecated: false

  field :property_id, 5, type: :int64, json_name: "propertyId", deprecated: false
  field :property_name, 6, type: :string, json_name: "propertyName", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Resources.ConversionAction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 21, proto3_optional: true, type: :int64, deprecated: false
  field :name, 22, proto3_optional: true, type: :string

  field :status, 4,
    type: Google.Ads.Googleads.V12.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Googleads.V12.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true,
    deprecated: false

  field :origin, 30,
    type: Google.Ads.Googleads.V12.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true,
    deprecated: false

  field :primary_for_goal, 31, proto3_optional: true, type: :bool, json_name: "primaryForGoal"

  field :category, 6,
    type: Google.Ads.Googleads.V12.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 23,
    proto3_optional: true,
    type: :string,
    json_name: "ownerCustomer",
    deprecated: false

  field :include_in_conversions_metric, 24,
    proto3_optional: true,
    type: :bool,
    json_name: "includeInConversionsMetric"

  field :click_through_lookback_window_days, 25,
    proto3_optional: true,
    type: :int64,
    json_name: "clickThroughLookbackWindowDays"

  field :view_through_lookback_window_days, 26,
    proto3_optional: true,
    type: :int64,
    json_name: "viewThroughLookbackWindowDays"

  field :value_settings, 11,
    type: Google.Ads.Googleads.V12.Resources.ConversionAction.ValueSettings,
    json_name: "valueSettings"

  field :counting_type, 12,
    type:
      Google.Ads.Googleads.V12.Enums.ConversionActionCountingTypeEnum.ConversionActionCountingType,
    json_name: "countingType",
    enum: true

  field :attribution_model_settings, 13,
    type: Google.Ads.Googleads.V12.Resources.ConversionAction.AttributionModelSettings,
    json_name: "attributionModelSettings"

  field :tag_snippets, 14,
    repeated: true,
    type: Google.Ads.Googleads.V12.Common.TagSnippet,
    json_name: "tagSnippets",
    deprecated: false

  field :phone_call_duration_seconds, 27,
    proto3_optional: true,
    type: :int64,
    json_name: "phoneCallDurationSeconds"

  field :app_id, 28, proto3_optional: true, type: :string, json_name: "appId"

  field :mobile_app_vendor, 17,
    type: Google.Ads.Googleads.V12.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "mobileAppVendor",
    enum: true,
    deprecated: false

  field :firebase_settings, 18,
    type: Google.Ads.Googleads.V12.Resources.ConversionAction.FirebaseSettings,
    json_name: "firebaseSettings",
    deprecated: false

  field :third_party_app_analytics_settings, 19,
    type: Google.Ads.Googleads.V12.Resources.ConversionAction.ThirdPartyAppAnalyticsSettings,
    json_name: "thirdPartyAppAnalyticsSettings",
    deprecated: false
end