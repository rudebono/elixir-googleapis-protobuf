defmodule Google.Ads.Googleads.V17.Resources.SharedCriterion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :shared_set, 10,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSet",
    deprecated: false

  field :criterion_id, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V17.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :keyword, 3,
    type: Google.Ads.Googleads.V17.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :youtube_video, 5,
    type: Google.Ads.Googleads.V17.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0,
    deprecated: false

  field :youtube_channel, 6,
    type: Google.Ads.Googleads.V17.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0,
    deprecated: false

  field :placement, 7,
    type: Google.Ads.Googleads.V17.Common.PlacementInfo,
    oneof: 0,
    deprecated: false

  field :mobile_app_category, 8,
    type: Google.Ads.Googleads.V17.Common.MobileAppCategoryInfo,
    json_name: "mobileAppCategory",
    oneof: 0,
    deprecated: false

  field :mobile_application, 9,
    type: Google.Ads.Googleads.V17.Common.MobileApplicationInfo,
    json_name: "mobileApplication",
    oneof: 0,
    deprecated: false

  field :brand, 12, type: Google.Ads.Googleads.V17.Common.BrandInfo, oneof: 0, deprecated: false
end