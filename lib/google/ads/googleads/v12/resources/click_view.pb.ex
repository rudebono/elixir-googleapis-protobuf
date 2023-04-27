defmodule Google.Ads.Googleads.V12.Resources.ClickView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :gclid, 8, proto3_optional: true, type: :string, deprecated: false

  field :area_of_interest, 3,
    type: Google.Ads.Googleads.V12.Common.ClickLocation,
    json_name: "areaOfInterest",
    deprecated: false

  field :location_of_presence, 4,
    type: Google.Ads.Googleads.V12.Common.ClickLocation,
    json_name: "locationOfPresence",
    deprecated: false

  field :page_number, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "pageNumber",
    deprecated: false

  field :ad_group_ad, 10,
    proto3_optional: true,
    type: :string,
    json_name: "adGroupAd",
    deprecated: false

  field :campaign_location_target, 11,
    proto3_optional: true,
    type: :string,
    json_name: "campaignLocationTarget",
    deprecated: false

  field :user_list, 12,
    proto3_optional: true,
    type: :string,
    json_name: "userList",
    deprecated: false

  field :keyword, 13, type: :string, deprecated: false

  field :keyword_info, 14,
    type: Google.Ads.Googleads.V12.Common.KeywordInfo,
    json_name: "keywordInfo",
    deprecated: false
end