defmodule Google.Ads.Googleads.V21.Resources.AndroidPrivacySharedKeyGoogleAdGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign_id, 2, type: :int64, json_name: "campaignId", deprecated: false

  field :android_privacy_interaction_type, 3,
    type:
      Google.Ads.Googleads.V21.Enums.AndroidPrivacyInteractionTypeEnum.AndroidPrivacyInteractionType,
    json_name: "androidPrivacyInteractionType",
    enum: true,
    deprecated: false

  field :android_privacy_interaction_date, 4,
    type: :string,
    json_name: "androidPrivacyInteractionDate",
    deprecated: false

  field :android_privacy_network_type, 5,
    type: Google.Ads.Googleads.V21.Enums.AndroidPrivacyNetworkTypeEnum.AndroidPrivacyNetworkType,
    json_name: "androidPrivacyNetworkType",
    enum: true,
    deprecated: false

  field :ad_group_id, 6, type: :int64, json_name: "adGroupId", deprecated: false
  field :shared_ad_group_key, 7, type: :string, json_name: "sharedAdGroupKey", deprecated: false
end
