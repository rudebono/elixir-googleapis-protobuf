defmodule Google.Ads.Searchads360.V0.Resources.Ad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ad_data, 0

  field :resource_name, 37, type: :string, json_name: "resourceName", deprecated: false
  field :id, 40, proto3_optional: true, type: :int64, deprecated: false
  field :final_urls, 41, repeated: true, type: :string, json_name: "finalUrls"

  field :final_app_urls, 35,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.FinalAppUrl,
    json_name: "finalAppUrls"

  field :final_mobile_urls, 42, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :tracking_url_template, 43,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :final_url_suffix, 44, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"
  field :display_url, 45, proto3_optional: true, type: :string, json_name: "displayUrl"

  field :type, 5,
    type: Google.Ads.Searchads360.V0.Enums.AdTypeEnum.AdType,
    enum: true,
    deprecated: false

  field :name, 47, proto3_optional: true, type: :string, deprecated: false

  field :text_ad, 55,
    type: Google.Ads.Searchads360.V0.Common.SearchAds360TextAdInfo,
    json_name: "textAd",
    oneof: 0,
    deprecated: false

  field :expanded_text_ad, 56,
    type: Google.Ads.Searchads360.V0.Common.SearchAds360ExpandedTextAdInfo,
    json_name: "expandedTextAd",
    oneof: 0,
    deprecated: false

  field :responsive_search_ad, 57,
    type: Google.Ads.Searchads360.V0.Common.SearchAds360ResponsiveSearchAdInfo,
    json_name: "responsiveSearchAd",
    oneof: 0,
    deprecated: false

  field :product_ad, 58,
    type: Google.Ads.Searchads360.V0.Common.SearchAds360ProductAdInfo,
    json_name: "productAd",
    oneof: 0,
    deprecated: false

  field :expanded_dynamic_search_ad, 59,
    type: Google.Ads.Searchads360.V0.Common.SearchAds360ExpandedDynamicSearchAdInfo,
    json_name: "expandedDynamicSearchAd",
    oneof: 0,
    deprecated: false
end
