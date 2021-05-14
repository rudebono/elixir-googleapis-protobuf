defmodule Google.Ads.Googleads.V4.Resources.CampaignCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          bid_modifier: Google.Protobuf.FloatValue.t() | nil,
          negative: Google.Protobuf.BoolValue.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType.t(),
          status:
            Google.Ads.Googleads.V4.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus.t()
        }

  defstruct [
    :criterion,
    :resource_name,
    :campaign,
    :criterion_id,
    :bid_modifier,
    :negative,
    :type,
    :status
  ]

  oneof :criterion, 0
  field :resource_name, 1, type: :string
  field :campaign, 4, type: Google.Protobuf.StringValue
  field :criterion_id, 5, type: Google.Protobuf.Int64Value
  field :bid_modifier, 14, type: Google.Protobuf.FloatValue
  field :negative, 7, type: Google.Protobuf.BoolValue
  field :type, 6, type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType, enum: true

  field :status, 35,
    type: Google.Ads.Googleads.V4.Enums.CampaignCriterionStatusEnum.CampaignCriterionStatus,
    enum: true

  field :keyword, 8, type: Google.Ads.Googleads.V4.Common.KeywordInfo, oneof: 0
  field :placement, 9, type: Google.Ads.Googleads.V4.Common.PlacementInfo, oneof: 0

  field :mobile_app_category, 10,
    type: Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo,
    oneof: 0

  field :mobile_application, 11,
    type: Google.Ads.Googleads.V4.Common.MobileApplicationInfo,
    oneof: 0

  field :location, 12, type: Google.Ads.Googleads.V4.Common.LocationInfo, oneof: 0
  field :device, 13, type: Google.Ads.Googleads.V4.Common.DeviceInfo, oneof: 0
  field :ad_schedule, 15, type: Google.Ads.Googleads.V4.Common.AdScheduleInfo, oneof: 0
  field :age_range, 16, type: Google.Ads.Googleads.V4.Common.AgeRangeInfo, oneof: 0
  field :gender, 17, type: Google.Ads.Googleads.V4.Common.GenderInfo, oneof: 0
  field :income_range, 18, type: Google.Ads.Googleads.V4.Common.IncomeRangeInfo, oneof: 0
  field :parental_status, 19, type: Google.Ads.Googleads.V4.Common.ParentalStatusInfo, oneof: 0
  field :user_list, 22, type: Google.Ads.Googleads.V4.Common.UserListInfo, oneof: 0
  field :youtube_video, 20, type: Google.Ads.Googleads.V4.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 21, type: Google.Ads.Googleads.V4.Common.YouTubeChannelInfo, oneof: 0
  field :proximity, 23, type: Google.Ads.Googleads.V4.Common.ProximityInfo, oneof: 0
  field :topic, 24, type: Google.Ads.Googleads.V4.Common.TopicInfo, oneof: 0
  field :listing_scope, 25, type: Google.Ads.Googleads.V4.Common.ListingScopeInfo, oneof: 0
  field :language, 26, type: Google.Ads.Googleads.V4.Common.LanguageInfo, oneof: 0
  field :ip_block, 27, type: Google.Ads.Googleads.V4.Common.IpBlockInfo, oneof: 0
  field :content_label, 28, type: Google.Ads.Googleads.V4.Common.ContentLabelInfo, oneof: 0
  field :carrier, 29, type: Google.Ads.Googleads.V4.Common.CarrierInfo, oneof: 0
  field :user_interest, 30, type: Google.Ads.Googleads.V4.Common.UserInterestInfo, oneof: 0
  field :webpage, 31, type: Google.Ads.Googleads.V4.Common.WebpageInfo, oneof: 0

  field :operating_system_version, 32,
    type: Google.Ads.Googleads.V4.Common.OperatingSystemVersionInfo,
    oneof: 0

  field :mobile_device, 33, type: Google.Ads.Googleads.V4.Common.MobileDeviceInfo, oneof: 0
  field :location_group, 34, type: Google.Ads.Googleads.V4.Common.LocationGroupInfo, oneof: 0
  field :custom_affinity, 36, type: Google.Ads.Googleads.V4.Common.CustomAffinityInfo, oneof: 0
end
