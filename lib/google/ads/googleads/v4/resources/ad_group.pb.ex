defmodule Google.Ads.Googleads.V4.Resources.AdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.AdGroupStatusEnum.AdGroupStatus.t(),
          type: Google.Ads.Googleads.V4.Enums.AdGroupTypeEnum.AdGroupType.t(),
          ad_rotation_mode:
            Google.Ads.Googleads.V4.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode.t(),
          base_ad_group: Google.Protobuf.StringValue.t() | nil,
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V4.Common.CustomParameter.t()],
          campaign: Google.Protobuf.StringValue.t() | nil,
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          cpm_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          target_cpa_micros: Google.Protobuf.Int64Value.t() | nil,
          cpv_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          target_cpm_micros: Google.Protobuf.Int64Value.t() | nil,
          target_roas: Google.Protobuf.DoubleValue.t() | nil,
          percent_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          explorer_auto_optimizer_setting:
            Google.Ads.Googleads.V4.Common.ExplorerAutoOptimizerSetting.t() | nil,
          display_custom_bid_dimension:
            Google.Ads.Googleads.V4.Enums.TargetingDimensionEnum.TargetingDimension.t(),
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          targeting_setting: Google.Ads.Googleads.V4.Common.TargetingSetting.t() | nil,
          effective_target_cpa_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_target_cpa_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_target_roas: Google.Protobuf.DoubleValue.t() | nil,
          effective_target_roas_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          labels: [Google.Protobuf.StringValue.t()]
        }

  defstruct [
    :resource_name,
    :id,
    :name,
    :status,
    :type,
    :ad_rotation_mode,
    :base_ad_group,
    :tracking_url_template,
    :url_custom_parameters,
    :campaign,
    :cpc_bid_micros,
    :cpm_bid_micros,
    :target_cpa_micros,
    :cpv_bid_micros,
    :target_cpm_micros,
    :target_roas,
    :percent_cpc_bid_micros,
    :explorer_auto_optimizer_setting,
    :display_custom_bid_dimension,
    :final_url_suffix,
    :targeting_setting,
    :effective_target_cpa_micros,
    :effective_target_cpa_source,
    :effective_target_roas,
    :effective_target_roas_source,
    :labels
  ]

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue

  field :status, 5,
    type: Google.Ads.Googleads.V4.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12, type: Google.Ads.Googleads.V4.Enums.AdGroupTypeEnum.AdGroupType, enum: true

  field :ad_rotation_mode, 22,
    type: Google.Ads.Googleads.V4.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    enum: true

  field :base_ad_group, 18, type: Google.Protobuf.StringValue
  field :tracking_url_template, 13, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 6,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :campaign, 10, type: Google.Protobuf.StringValue
  field :cpc_bid_micros, 14, type: Google.Protobuf.Int64Value
  field :cpm_bid_micros, 15, type: Google.Protobuf.Int64Value
  field :target_cpa_micros, 27, type: Google.Protobuf.Int64Value
  field :cpv_bid_micros, 17, type: Google.Protobuf.Int64Value
  field :target_cpm_micros, 26, type: Google.Protobuf.Int64Value
  field :target_roas, 30, type: Google.Protobuf.DoubleValue
  field :percent_cpc_bid_micros, 20, type: Google.Protobuf.Int64Value

  field :explorer_auto_optimizer_setting, 21,
    type: Google.Ads.Googleads.V4.Common.ExplorerAutoOptimizerSetting

  field :display_custom_bid_dimension, 23,
    type: Google.Ads.Googleads.V4.Enums.TargetingDimensionEnum.TargetingDimension,
    enum: true

  field :final_url_suffix, 24, type: Google.Protobuf.StringValue
  field :targeting_setting, 25, type: Google.Ads.Googleads.V4.Common.TargetingSetting
  field :effective_target_cpa_micros, 28, type: Google.Protobuf.Int64Value

  field :effective_target_cpa_source, 29,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_target_roas, 31, type: Google.Protobuf.DoubleValue

  field :effective_target_roas_source, 32,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :labels, 33, repeated: true, type: Google.Protobuf.StringValue
end
