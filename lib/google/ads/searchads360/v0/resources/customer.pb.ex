defmodule Google.Ads.Searchads360.V0.Resources.Customer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :manager, 27, proto3_optional: true, type: :bool, deprecated: false

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Searchads360.V0.Resources.ConversionTrackingSetting,
    json_name: "conversionTrackingSetting",
    deprecated: false

  field :account_type, 31,
    type: Google.Ads.Searchads360.V0.Enums.AccountTypeEnum.AccountType,
    json_name: "accountType",
    enum: true,
    deprecated: false

  field :double_click_campaign_manager_setting, 32,
    type: Google.Ads.Searchads360.V0.Resources.DoubleClickCampaignManagerSetting,
    json_name: "doubleClickCampaignManagerSetting",
    deprecated: false

  field :account_status, 33,
    type: Google.Ads.Searchads360.V0.Enums.AccountStatusEnum.AccountStatus,
    json_name: "accountStatus",
    enum: true,
    deprecated: false

  field :last_modified_time, 34, type: :string, json_name: "lastModifiedTime", deprecated: false
  field :engine_id, 35, type: :string, json_name: "engineId", deprecated: false

  field :status, 36,
    type: Google.Ads.Searchads360.V0.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false

  field :creation_time, 42, type: :string, json_name: "creationTime", deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.ConversionTrackingSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversion_tracking_id, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "conversionTrackingId",
    deprecated: false

  field :google_ads_cross_account_conversion_tracking_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "googleAdsCrossAccountConversionTrackingId",
    deprecated: false

  field :cross_account_conversion_tracking_id, 37,
    proto3_optional: true,
    type: :int64,
    json_name: "crossAccountConversionTrackingId",
    deprecated: false

  field :accepted_customer_data_terms, 5,
    type: :bool,
    json_name: "acceptedCustomerDataTerms",
    deprecated: false

  field :conversion_tracking_status, 6,
    type: Google.Ads.Searchads360.V0.Enums.ConversionTrackingStatusEnum.ConversionTrackingStatus,
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

defmodule Google.Ads.Searchads360.V0.Resources.DoubleClickCampaignManagerSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :advertiser_id, 1, type: :int64, json_name: "advertiserId", deprecated: false
  field :network_id, 2, type: :int64, json_name: "networkId", deprecated: false
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false
end
