defmodule Google.Ads.Googleads.V19.Resources.CampaignCriterion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 37, proto3_optional: true, type: :string, deprecated: false

  field :criterion_id, 38,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :display_name, 43, type: :string, json_name: "displayName", deprecated: false
  field :bid_modifier, 39, proto3_optional: true, type: :float, json_name: "bidModifier"
  field :negative, 40, proto3_optional: true, type: :bool, deprecated: false

  field :type, 6,
    type: Google.Ads.Googleads.V19.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :status, 35,
    type: Google.Ads.Googleads.V19.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus,
    enum: true

  field :keyword, 8,
    type: Google.Ads.Googleads.V19.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :placement, 9,
    type: Google.Ads.Googleads.V19.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 10,
    type: Google.Ads.Googleads.V19.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 11,
    type: Google.Ads.Googleads.V19.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :location, 12,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    oneof: 0,
    deprecated: false

  field :device, 13, type: Google.Ads.Googleads.V19.Common.DeviceInfo, oneof: 0, deprecated: false

  field :ad_schedule, 15,
    type: Google.Ads.Googleads.V19.Common.AdScheduleInfo,
    json_name: "adSchedule",
    oneof: 0,
    deprecated: false

  field :age_range, 16,
    type: Google.Ads.Googleads.V19.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0,
    deprecated: false

  field :gender, 17, type: Google.Ads.Googleads.V19.Common.GenderInfo, oneof: 0, deprecated: false

  field :income_range, 18,
    type: Google.Ads.Googleads.V19.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0,
    deprecated: false

  field :parental_status, 19,
    type: Google.Ads.Googleads.V19.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0,
    deprecated: false

  field :user_list, 22,
    type: Google.Ads.Googleads.V19.Common.UserListInfo,
    json_name: "userList",
    oneof: 0,
    deprecated: false

  field :youtube_video, 20,
    type: Google.Ads.Googleads.V19.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 21,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :proximity, 23,
    type: Google.Ads.Googleads.V19.Common.ProximityInfo,
    oneof: 0,
    deprecated: false

  field :topic, 24, type: Google.Ads.Googleads.V19.Common.TopicInfo, oneof: 0, deprecated: false

  field :listing_scope, 25,
    type: Google.Ads.Googleads.V19.Common.ListingScopeInfo,
    json_name: "listingScope",
    oneof: 0,
    deprecated: false

  field :language, 26,
    type: Google.Ads.Googleads.V19.Common.LanguageInfo,
    oneof: 0,
    deprecated: false

  field :ip_block, 27,
    type: Google.Ads.Googleads.V19.Common.IpBlockInfo,
    json_name: "ipBlock",
    oneof: 0,
    deprecated: false

  field :content_label, 28,
    type: Google.Ads.Googleads.V19.Common.ContentLabelInfo,
    json_name: "contentLabel",
    oneof: 0,
    deprecated: false

  field :carrier, 29,
    type: Google.Ads.Googleads.V19.Common.CarrierInfo,
    oneof: 0,
    deprecated: false

  field :user_interest, 30,
    type: Google.Ads.Googleads.V19.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0,
    deprecated: false

  field :webpage, 31,
    type: Google.Ads.Googleads.V19.Common.WebpageInfo,
    oneof: 0,
    deprecated: false

  field :operating_system_version, 32,
    type: Google.Ads.Googleads.V19.Common.OperatingSystemVersionInfo,
    json_name: "operatingSystemVersion",
    oneof: 0,
    deprecated: false

  field :mobile_device, 33,
    type: Google.Ads.Googleads.V19.Common.MobileDeviceInfo,
    json_name: "mobileDevice",
    oneof: 0,
    deprecated: false

  field :location_group, 34,
    type: Google.Ads.Googleads.V19.Common.LocationGroupInfo,
    json_name: "locationGroup",
    oneof: 0,
    deprecated: false

  field :custom_affinity, 36,
    type: Google.Ads.Googleads.V19.Common.CustomAffinityInfo,
    json_name: "customAffinity",
    oneof: 0,
    deprecated: false

  field :custom_audience, 41,
    type: Google.Ads.Googleads.V19.Common.CustomAudienceInfo,
    json_name: "customAudience",
    oneof: 0,
    deprecated: false

  field :combined_audience, 42,
    type: Google.Ads.Googleads.V19.Common.CombinedAudienceInfo,
    json_name: "combinedAudience",
    oneof: 0,
    deprecated: false

  field :keyword_theme, 45,
    type: Google.Ads.Googleads.V19.Common.KeywordThemeInfo,
    json_name: "keywordTheme",
    oneof: 0,
    deprecated: false

  field :local_service_id, 46,
    type: Google.Ads.Googleads.V19.Common.LocalServiceIdInfo,
    json_name: "localServiceId",
    oneof: 0,
    deprecated: false

  field :brand_list, 47,
    type: Google.Ads.Googleads.V19.Common.BrandListInfo,
    json_name: "brandList",
    oneof: 0,
    deprecated: false
end
