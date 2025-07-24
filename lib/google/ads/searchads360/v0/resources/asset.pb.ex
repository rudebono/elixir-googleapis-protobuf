defmodule Google.Ads.Searchads360.V0.Resources.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :asset_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, proto3_optional: true, type: :int64, deprecated: false
  field :name, 12, proto3_optional: true, type: :string

  field :type, 4,
    type: Google.Ads.Searchads360.V0.Enums.AssetTypeEnum.AssetType,
    enum: true,
    deprecated: false

  field :final_urls, 14, repeated: true, type: :string, json_name: "finalUrls"

  field :tracking_url_template, 17,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :status, 42,
    type: Google.Ads.Searchads360.V0.Enums.AssetStatusEnum.AssetStatus,
    enum: true,
    deprecated: false

  field :creation_time, 43, type: :string, json_name: "creationTime", deprecated: false
  field :last_modified_time, 44, type: :string, json_name: "lastModifiedTime", deprecated: false

  field :engine_status, 61,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.AssetEngineStatusEnum.AssetEngineStatus,
    json_name: "engineStatus",
    enum: true,
    deprecated: false

  field :youtube_video_asset, 5,
    type: Google.Ads.Searchads360.V0.Common.YoutubeVideoAsset,
    json_name: "youtubeVideoAsset",
    oneof: 0,
    deprecated: false

  field :image_asset, 7,
    type: Google.Ads.Searchads360.V0.Common.ImageAsset,
    json_name: "imageAsset",
    oneof: 0,
    deprecated: false

  field :text_asset, 8,
    type: Google.Ads.Searchads360.V0.Common.TextAsset,
    json_name: "textAsset",
    oneof: 0,
    deprecated: false

  field :callout_asset, 48,
    type: Google.Ads.Searchads360.V0.Common.UnifiedCalloutAsset,
    json_name: "calloutAsset",
    oneof: 0,
    deprecated: false

  field :sitelink_asset, 45,
    type: Google.Ads.Searchads360.V0.Common.UnifiedSitelinkAsset,
    json_name: "sitelinkAsset",
    oneof: 0,
    deprecated: false

  field :page_feed_asset, 46,
    type: Google.Ads.Searchads360.V0.Common.UnifiedPageFeedAsset,
    json_name: "pageFeedAsset",
    oneof: 0,
    deprecated: false

  field :mobile_app_asset, 25,
    type: Google.Ads.Searchads360.V0.Common.MobileAppAsset,
    json_name: "mobileAppAsset",
    oneof: 0

  field :call_asset, 47,
    type: Google.Ads.Searchads360.V0.Common.UnifiedCallAsset,
    json_name: "callAsset",
    oneof: 0,
    deprecated: false

  field :call_to_action_asset, 29,
    type: Google.Ads.Searchads360.V0.Common.CallToActionAsset,
    json_name: "callToActionAsset",
    oneof: 0,
    deprecated: false

  field :location_asset, 49,
    type: Google.Ads.Searchads360.V0.Common.UnifiedLocationAsset,
    json_name: "locationAsset",
    oneof: 0,
    deprecated: false
end
