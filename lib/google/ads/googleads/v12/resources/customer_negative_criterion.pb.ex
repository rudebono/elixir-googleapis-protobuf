defmodule Google.Ads.Googleads.V12.Resources.CustomerNegativeCriterion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, proto3_optional: true, type: :int64, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V12.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :content_label, 4,
    type: Google.Ads.Googleads.V12.Common.ContentLabelInfo,
    json_name: "contentLabel",
    oneof: 0,
    deprecated: false

  field :mobile_application, 5,
    type: Google.Ads.Googleads.V12.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 6,
    type: Google.Ads.Googleads.V12.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :placement, 7,
    type: Google.Ads.Googleads.V12.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :youtube_video, 8,
    type: Google.Ads.Googleads.V12.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 9,
    type: Google.Ads.Googleads.V12.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false
end