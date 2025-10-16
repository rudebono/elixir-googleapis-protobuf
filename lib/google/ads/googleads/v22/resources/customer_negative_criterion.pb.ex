defmodule Google.Ads.Googleads.V22.Resources.CustomerNegativeCriterion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, proto3_optional: true, type: :int64, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V22.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :content_label, 4,
    type: Google.Ads.Googleads.V22.Common.ContentLabelInfo,
    json_name: "contentLabel",
    oneof: 0,
    deprecated: false

  field :mobile_application, 5,
    type: Google.Ads.Googleads.V22.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 6,
    type: Google.Ads.Googleads.V22.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :placement, 7,
    type: Google.Ads.Googleads.V22.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :youtube_video, 8,
    type: Google.Ads.Googleads.V22.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 9,
    type: Google.Ads.Googleads.V22.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :negative_keyword_list, 11,
    type: Google.Ads.Googleads.V22.Common.NegativeKeywordListInfo,
    json_name: "negativeKeywordList",
    oneof: 0,
    deprecated: false

  field :ip_block, 12,
    type: Google.Ads.Googleads.V22.Common.IpBlockInfo,
    json_name: "ipBlock",
    oneof: 0,
    deprecated: false

  field :placement_list, 13,
    type: Google.Ads.Googleads.V22.Common.PlacementListInfo,
    json_name: "placementList",
    oneof: 0,
    deprecated: false
end
