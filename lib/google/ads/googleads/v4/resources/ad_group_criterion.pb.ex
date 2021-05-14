defmodule Google.Ads.Googleads.V4.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          quality_score: Google.Protobuf.Int32Value.t() | nil,
          creative_quality_score:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          post_click_quality_score:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t(),
          search_predicted_ctr:
            Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket.t()
        }

  defstruct [
    :quality_score,
    :creative_quality_score,
    :post_click_quality_score,
    :search_predicted_ctr
  ]

  field :quality_score, 1, type: Google.Protobuf.Int32Value

  field :creative_quality_score, 2,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :post_click_quality_score, 3,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true

  field :search_predicted_ctr, 4,
    type: Google.Ads.Googleads.V4.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_page_cpc_micros: Google.Protobuf.Int64Value.t() | nil,
          first_position_cpc_micros: Google.Protobuf.Int64Value.t() | nil,
          top_of_page_cpc_micros: Google.Protobuf.Int64Value.t() | nil,
          estimated_add_clicks_at_first_position_cpc: Google.Protobuf.Int64Value.t() | nil,
          estimated_add_cost_at_first_position_cpc: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :first_page_cpc_micros,
    :first_position_cpc_micros,
    :top_of_page_cpc_micros,
    :estimated_add_clicks_at_first_position_cpc,
    :estimated_add_cost_at_first_position_cpc
  ]

  field :first_page_cpc_micros, 1, type: Google.Protobuf.Int64Value
  field :first_position_cpc_micros, 2, type: Google.Protobuf.Int64Value
  field :top_of_page_cpc_micros, 3, type: Google.Protobuf.Int64Value
  field :estimated_add_clicks_at_first_position_cpc, 4, type: Google.Protobuf.Int64Value
  field :estimated_add_cost_at_first_position_cpc, 5, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.AdGroupCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          status:
            Google.Ads.Googleads.V4.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus.t(),
          quality_info: Google.Ads.Googleads.V4.Resources.AdGroupCriterion.QualityInfo.t() | nil,
          ad_group: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType.t(),
          negative: Google.Protobuf.BoolValue.t() | nil,
          system_serving_status:
            Google.Ads.Googleads.V4.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus.t(),
          approval_status:
            Google.Ads.Googleads.V4.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus.t(),
          disapproval_reasons: [Google.Protobuf.StringValue.t()],
          bid_modifier: Google.Protobuf.DoubleValue.t() | nil,
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          cpm_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          cpv_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          percent_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_cpm_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_cpv_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_percent_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          effective_cpc_bid_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpm_bid_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_cpv_bid_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          effective_percent_cpc_bid_source:
            Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource.t(),
          position_estimates:
            Google.Ads.Googleads.V4.Resources.AdGroupCriterion.PositionEstimates.t() | nil,
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V4.Common.CustomParameter.t()]
        }

  defstruct [
    :criterion,
    :resource_name,
    :criterion_id,
    :status,
    :quality_info,
    :ad_group,
    :type,
    :negative,
    :system_serving_status,
    :approval_status,
    :disapproval_reasons,
    :bid_modifier,
    :cpc_bid_micros,
    :cpm_bid_micros,
    :cpv_bid_micros,
    :percent_cpc_bid_micros,
    :effective_cpc_bid_micros,
    :effective_cpm_bid_micros,
    :effective_cpv_bid_micros,
    :effective_percent_cpc_bid_micros,
    :effective_cpc_bid_source,
    :effective_cpm_bid_source,
    :effective_cpv_bid_source,
    :effective_percent_cpc_bid_source,
    :position_estimates,
    :final_urls,
    :final_mobile_urls,
    :final_url_suffix,
    :tracking_url_template,
    :url_custom_parameters
  ]

  oneof :criterion, 0
  field :resource_name, 1, type: :string
  field :criterion_id, 26, type: Google.Protobuf.Int64Value

  field :status, 3,
    type: Google.Ads.Googleads.V4.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4, type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion.QualityInfo
  field :ad_group, 5, type: Google.Protobuf.StringValue
  field :type, 25, type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType, enum: true
  field :negative, 31, type: Google.Protobuf.BoolValue

  field :system_serving_status, 52,
    type:
      Google.Ads.Googleads.V4.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus,
    enum: true

  field :approval_status, 53,
    type:
      Google.Ads.Googleads.V4.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus,
    enum: true

  field :disapproval_reasons, 55, repeated: true, type: Google.Protobuf.StringValue
  field :bid_modifier, 44, type: Google.Protobuf.DoubleValue
  field :cpc_bid_micros, 16, type: Google.Protobuf.Int64Value
  field :cpm_bid_micros, 17, type: Google.Protobuf.Int64Value
  field :cpv_bid_micros, 24, type: Google.Protobuf.Int64Value
  field :percent_cpc_bid_micros, 33, type: Google.Protobuf.Int64Value
  field :effective_cpc_bid_micros, 18, type: Google.Protobuf.Int64Value
  field :effective_cpm_bid_micros, 19, type: Google.Protobuf.Int64Value
  field :effective_cpv_bid_micros, 20, type: Google.Protobuf.Int64Value
  field :effective_percent_cpc_bid_micros, 34, type: Google.Protobuf.Int64Value

  field :effective_cpc_bid_source, 21,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpm_bid_source, 22,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_cpv_bid_source, 23,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :effective_percent_cpc_bid_source, 35,
    type: Google.Ads.Googleads.V4.Enums.BiddingSourceEnum.BiddingSource,
    enum: true

  field :position_estimates, 10,
    type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion.PositionEstimates

  field :final_urls, 11, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 51, repeated: true, type: Google.Protobuf.StringValue
  field :final_url_suffix, 50, type: Google.Protobuf.StringValue
  field :tracking_url_template, 13, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 14,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CustomParameter

  field :keyword, 27, type: Google.Ads.Googleads.V4.Common.KeywordInfo, oneof: 0
  field :placement, 28, type: Google.Ads.Googleads.V4.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 29,
    type: Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 30,
    type: Google.Ads.Googleads.V4.Common.MobileApplicationInfo,
    oneof: 0

  field :listing_group, 32, type: Google.Ads.Googleads.V4.Common.ListingGroupInfo, oneof: 0
  field :age_range, 36, type: Google.Ads.Googleads.V4.Common.AgeRangeInfo, oneof: 0
  field :gender, 37, type: Google.Ads.Googleads.V4.Common.GenderInfo, oneof: 0
  field :income_range, 38, type: Google.Ads.Googleads.V4.Common.IncomeRangeInfo, oneof: 0
  field :parental_status, 39, type: Google.Ads.Googleads.V4.Common.ParentalStatusInfo, oneof: 0
  field :user_list, 42, type: Google.Ads.Googleads.V4.Common.UserListInfo, oneof: 0
  field :youtube_video, 40, type: Google.Ads.Googleads.V4.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 41, type: Google.Ads.Googleads.V4.Common.YouTubeChannelInfo, oneof: 0
  field :topic, 43, type: Google.Ads.Googleads.V4.Common.TopicInfo, oneof: 0
  field :user_interest, 45, type: Google.Ads.Googleads.V4.Common.UserInterestInfo, oneof: 0
  field :webpage, 46, type: Google.Ads.Googleads.V4.Common.WebpageInfo, oneof: 0
  field :app_payment_model, 47, type: Google.Ads.Googleads.V4.Common.AppPaymentModelInfo, oneof: 0
  field :custom_affinity, 48, type: Google.Ads.Googleads.V4.Common.CustomAffinityInfo, oneof: 0
  field :custom_intent, 49, type: Google.Ads.Googleads.V4.Common.CustomIntentInfo, oneof: 0
end
