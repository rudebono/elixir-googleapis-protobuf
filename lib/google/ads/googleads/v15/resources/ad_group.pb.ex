defmodule Google.Ads.Googleads.V15.Resources.AdGroup.AudienceSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_audience_grouped, 1, type: :bool, json_name: "useAudienceGrouped", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Resources.AdGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 34, proto3_optional: true, type: :int64, deprecated: false
  field :name, 35, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V15.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    type: Google.Ads.Googleads.V15.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true,
    deprecated: false

  field :ad_rotation_mode, 22,
    type: Google.Ads.Googleads.V15.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    json_name: "adRotationMode",
    enum: true

  field :base_ad_group, 36,
    proto3_optional: true,
    type: :string,
    json_name: "baseAdGroup",
    deprecated: false

  field :tracking_url_template, 37,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 6,
    repeated: true,
    type: Google.Ads.Googleads.V15.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :campaign, 38, proto3_optional: true, type: :string, deprecated: false
  field :cpc_bid_micros, 39, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"

  field :effective_cpc_bid_micros, 57,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCpcBidMicros",
    deprecated: false

  field :cpm_bid_micros, 40, proto3_optional: true, type: :int64, json_name: "cpmBidMicros"
  field :target_cpa_micros, 41, proto3_optional: true, type: :int64, json_name: "targetCpaMicros"
  field :cpv_bid_micros, 42, proto3_optional: true, type: :int64, json_name: "cpvBidMicros"
  field :target_cpm_micros, 43, proto3_optional: true, type: :int64, json_name: "targetCpmMicros"
  field :target_roas, 44, proto3_optional: true, type: :double, json_name: "targetRoas"

  field :percent_cpc_bid_micros, 45,
    proto3_optional: true,
    type: :int64,
    json_name: "percentCpcBidMicros"

  field :optimized_targeting_enabled, 59, type: :bool, json_name: "optimizedTargetingEnabled"

  field :display_custom_bid_dimension, 23,
    type: Google.Ads.Googleads.V15.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "displayCustomBidDimension",
    enum: true

  field :final_url_suffix, 46, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :targeting_setting, 25,
    type: Google.Ads.Googleads.V15.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :audience_setting, 56,
    type: Google.Ads.Googleads.V15.Resources.AdGroup.AudienceSetting,
    json_name: "audienceSetting",
    deprecated: false

  field :effective_target_cpa_micros, 47,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveTargetCpaMicros",
    deprecated: false

  field :effective_target_cpa_source, 29,
    type: Google.Ads.Googleads.V15.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetCpaSource",
    enum: true,
    deprecated: false

  field :effective_target_roas, 48,
    proto3_optional: true,
    type: :double,
    json_name: "effectiveTargetRoas",
    deprecated: false

  field :effective_target_roas_source, 32,
    type: Google.Ads.Googleads.V15.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetRoasSource",
    enum: true,
    deprecated: false

  field :labels, 49, repeated: true, type: :string, deprecated: false

  field :excluded_parent_asset_field_types, 54,
    repeated: true,
    type: Google.Ads.Googleads.V15.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true

  field :excluded_parent_asset_set_types, 58,
    repeated: true,
    type: Google.Ads.Googleads.V15.Enums.AssetSetTypeEnum.AssetSetType,
    json_name: "excludedParentAssetSetTypes",
    enum: true
end