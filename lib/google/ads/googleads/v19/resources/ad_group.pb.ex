defmodule Google.Ads.Googleads.V19.Resources.AdGroup.AudienceSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :use_audience_grouped, 1, type: :bool, json_name: "useAudienceGrouped", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings.DemandGenChannelControls.DemandGenSelectedChannels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :youtube_in_stream, 1, type: :bool, json_name: "youtubeInStream"
  field :youtube_in_feed, 2, type: :bool, json_name: "youtubeInFeed"
  field :youtube_shorts, 3, type: :bool, json_name: "youtubeShorts"
  field :discover, 4, type: :bool
  field :gmail, 5, type: :bool
  field :display, 6, type: :bool
end

defmodule Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings.DemandGenChannelControls do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :channel_configuration, 0

  field :channel_config, 1,
    type: Google.Ads.Googleads.V19.Enums.DemandGenChannelConfigEnum.DemandGenChannelConfig,
    json_name: "channelConfig",
    enum: true,
    deprecated: false

  field :channel_strategy, 2,
    type: Google.Ads.Googleads.V19.Enums.DemandGenChannelStrategyEnum.DemandGenChannelStrategy,
    json_name: "channelStrategy",
    enum: true,
    oneof: 0

  field :selected_channels, 3,
    type:
      Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings.DemandGenChannelControls.DemandGenSelectedChannels,
    json_name: "selectedChannels",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel_controls, 1,
    type:
      Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings.DemandGenChannelControls,
    json_name: "channelControls"
end

defmodule Google.Ads.Googleads.V19.Resources.AdGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 34, proto3_optional: true, type: :int64, deprecated: false
  field :name, 35, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V19.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    type: Google.Ads.Googleads.V19.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true,
    deprecated: false

  field :ad_rotation_mode, 22,
    type: Google.Ads.Googleads.V19.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
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
    type: Google.Ads.Googleads.V19.Common.CustomParameter,
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

  field :fixed_cpm_micros, 64, proto3_optional: true, type: :int64, json_name: "fixedCpmMicros"
  field :target_cpv_micros, 65, proto3_optional: true, type: :int64, json_name: "targetCpvMicros"
  field :optimized_targeting_enabled, 59, type: :bool, json_name: "optimizedTargetingEnabled"
  field :exclude_demographic_expansion, 67, type: :bool, json_name: "excludeDemographicExpansion"

  field :display_custom_bid_dimension, 23,
    type: Google.Ads.Googleads.V19.Enums.TargetingDimensionEnum.TargetingDimension,
    json_name: "displayCustomBidDimension",
    enum: true

  field :final_url_suffix, 46, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :targeting_setting, 25,
    type: Google.Ads.Googleads.V19.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :audience_setting, 56,
    type: Google.Ads.Googleads.V19.Resources.AdGroup.AudienceSetting,
    json_name: "audienceSetting",
    deprecated: false

  field :effective_target_cpa_micros, 47,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveTargetCpaMicros",
    deprecated: false

  field :effective_target_cpa_source, 29,
    type: Google.Ads.Googleads.V19.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetCpaSource",
    enum: true,
    deprecated: false

  field :effective_target_roas, 48,
    proto3_optional: true,
    type: :double,
    json_name: "effectiveTargetRoas",
    deprecated: false

  field :effective_target_roas_source, 32,
    type: Google.Ads.Googleads.V19.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveTargetRoasSource",
    enum: true,
    deprecated: false

  field :labels, 49, repeated: true, type: :string, deprecated: false

  field :excluded_parent_asset_field_types, 54,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "excludedParentAssetFieldTypes",
    enum: true

  field :excluded_parent_asset_set_types, 58,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.AssetSetTypeEnum.AssetSetType,
    json_name: "excludedParentAssetSetTypes",
    enum: true

  field :primary_status, 62,
    type: Google.Ads.Googleads.V19.Enums.AdGroupPrimaryStatusEnum.AdGroupPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_reasons, 63,
    repeated: true,
    type:
      Google.Ads.Googleads.V19.Enums.AdGroupPrimaryStatusReasonEnum.AdGroupPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false

  field :demand_gen_ad_group_settings, 91,
    type: Google.Ads.Googleads.V19.Resources.AdGroup.DemandGenAdGroupSettings,
    json_name: "demandGenAdGroupSettings"
end
