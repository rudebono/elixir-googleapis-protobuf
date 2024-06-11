defmodule Google.Ads.Googleads.V17.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quality_score, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "qualityScore",
    deprecated: false

  field :creative_quality_score, 2,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "creativeQualityScore",
    enum: true,
    deprecated: false

  field :post_click_quality_score, 3,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "postClickQualityScore",
    enum: true,
    deprecated: false

  field :search_predicted_ctr, 4,
    type: Google.Ads.Googleads.V17.Enums.QualityScoreBucketEnum.QualityScoreBucket,
    json_name: "searchPredictedCtr",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :first_page_cpc_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "firstPageCpcMicros",
    deprecated: false

  field :first_position_cpc_micros, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "firstPositionCpcMicros",
    deprecated: false

  field :top_of_page_cpc_micros, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "topOfPageCpcMicros",
    deprecated: false

  field :estimated_add_clicks_at_first_position_cpc, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "estimatedAddClicksAtFirstPositionCpc",
    deprecated: false

  field :estimated_add_cost_at_first_position_cpc, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "estimatedAddCostAtFirstPositionCpc",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.AdGroupCriterion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :criterion_id, 56,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :display_name, 77, type: :string, json_name: "displayName", deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V17.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4,
    type: Google.Ads.Googleads.V17.Resources.AdGroupCriterion.QualityInfo,
    json_name: "qualityInfo",
    deprecated: false

  field :ad_group, 57,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :type, 25,
    type: Google.Ads.Googleads.V17.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :negative, 58, proto3_optional: true, type: :bool, deprecated: false

  field :system_serving_status, 52,
    type:
      Google.Ads.Googleads.V17.Enums.CriterionSystemServingStatusEnum.CriterionSystemServingStatus,
    json_name: "systemServingStatus",
    enum: true,
    deprecated: false

  field :approval_status, 53,
    type:
      Google.Ads.Googleads.V17.Enums.AdGroupCriterionApprovalStatusEnum.AdGroupCriterionApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false

  field :disapproval_reasons, 59,
    repeated: true,
    type: :string,
    json_name: "disapprovalReasons",
    deprecated: false

  field :labels, 60, repeated: true, type: :string, deprecated: false
  field :bid_modifier, 61, proto3_optional: true, type: :double, json_name: "bidModifier"
  field :cpc_bid_micros, 62, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
  field :cpm_bid_micros, 63, proto3_optional: true, type: :int64, json_name: "cpmBidMicros"
  field :cpv_bid_micros, 64, proto3_optional: true, type: :int64, json_name: "cpvBidMicros"

  field :percent_cpc_bid_micros, 65,
    proto3_optional: true,
    type: :int64,
    json_name: "percentCpcBidMicros"

  field :effective_cpc_bid_micros, 66,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCpcBidMicros",
    deprecated: false

  field :effective_cpm_bid_micros, 67,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCpmBidMicros",
    deprecated: false

  field :effective_cpv_bid_micros, 68,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCpvBidMicros",
    deprecated: false

  field :effective_percent_cpc_bid_micros, 69,
    proto3_optional: true,
    type: :int64,
    json_name: "effectivePercentCpcBidMicros",
    deprecated: false

  field :effective_cpc_bid_source, 21,
    type: Google.Ads.Googleads.V17.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpcBidSource",
    enum: true,
    deprecated: false

  field :effective_cpm_bid_source, 22,
    type: Google.Ads.Googleads.V17.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpmBidSource",
    enum: true,
    deprecated: false

  field :effective_cpv_bid_source, 23,
    type: Google.Ads.Googleads.V17.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectiveCpvBidSource",
    enum: true,
    deprecated: false

  field :effective_percent_cpc_bid_source, 35,
    type: Google.Ads.Googleads.V17.Enums.BiddingSourceEnum.BiddingSource,
    json_name: "effectivePercentCpcBidSource",
    enum: true,
    deprecated: false

  field :position_estimates, 10,
    type: Google.Ads.Googleads.V17.Resources.AdGroupCriterion.PositionEstimates,
    json_name: "positionEstimates",
    deprecated: false

  field :final_urls, 70, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 71, repeated: true, type: :string, json_name: "finalMobileUrls"
  field :final_url_suffix, 72, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :tracking_url_template, 73,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 14,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :primary_status, 85,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V17.Enums.AdGroupCriterionPrimaryStatusEnum.AdGroupCriterionPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_reasons, 86,
    repeated: true,
    type:
      Google.Ads.Googleads.V17.Enums.AdGroupCriterionPrimaryStatusReasonEnum.AdGroupCriterionPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false

  field :keyword, 27,
    type: Google.Ads.Googleads.V17.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :placement, 28,
    type: Google.Ads.Googleads.V17.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 29,
    type: Google.Ads.Googleads.V17.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 30,
    type: Google.Ads.Googleads.V17.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :listing_group, 32,
    type: Google.Ads.Googleads.V17.Common.ListingGroupInfo,
    json_name: "listingGroup",
    oneof: 0,
    deprecated: false

  field :age_range, 36,
    type: Google.Ads.Googleads.V17.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0,
    deprecated: false

  field :gender, 37, type: Google.Ads.Googleads.V17.Common.GenderInfo, oneof: 0, deprecated: false

  field :income_range, 38,
    type: Google.Ads.Googleads.V17.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0,
    deprecated: false

  field :parental_status, 39,
    type: Google.Ads.Googleads.V17.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0,
    deprecated: false

  field :user_list, 42,
    type: Google.Ads.Googleads.V17.Common.UserListInfo,
    json_name: "userList",
    oneof: 0,
    deprecated: false

  field :youtube_video, 40,
    type: Google.Ads.Googleads.V17.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 41,
    type: Google.Ads.Googleads.V17.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :topic, 43, type: Google.Ads.Googleads.V17.Common.TopicInfo, oneof: 0, deprecated: false

  field :user_interest, 45,
    type: Google.Ads.Googleads.V17.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0,
    deprecated: false

  field :webpage, 46,
    type: Google.Ads.Googleads.V17.Common.WebpageInfo,
    oneof: 0,
    deprecated: false

  field :app_payment_model, 47,
    type: Google.Ads.Googleads.V17.Common.AppPaymentModelInfo,
    json_name: "appPaymentModel",
    oneof: 0,
    deprecated: false

  field :custom_affinity, 48,
    type: Google.Ads.Googleads.V17.Common.CustomAffinityInfo,
    json_name: "customAffinity",
    oneof: 0,
    deprecated: false

  field :custom_intent, 49,
    type: Google.Ads.Googleads.V17.Common.CustomIntentInfo,
    json_name: "customIntent",
    oneof: 0,
    deprecated: false

  field :custom_audience, 74,
    type: Google.Ads.Googleads.V17.Common.CustomAudienceInfo,
    json_name: "customAudience",
    oneof: 0,
    deprecated: false

  field :combined_audience, 75,
    type: Google.Ads.Googleads.V17.Common.CombinedAudienceInfo,
    json_name: "combinedAudience",
    oneof: 0,
    deprecated: false

  field :audience, 79,
    type: Google.Ads.Googleads.V17.Common.AudienceInfo,
    oneof: 0,
    deprecated: false

  field :location, 82,
    type: Google.Ads.Googleads.V17.Common.LocationInfo,
    oneof: 0,
    deprecated: false

  field :language, 83,
    type: Google.Ads.Googleads.V17.Common.LanguageInfo,
    oneof: 0,
    deprecated: false
end