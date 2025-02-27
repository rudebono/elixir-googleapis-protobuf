defmodule Google.Ads.Googleads.V19.Resources.AndroidPrivacySharedKeyGoogleNetworkType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign_id, 2, type: :int64, json_name: "campaignId", deprecated: false

  field :android_privacy_interaction_type, 3,
    type:
      Google.Ads.Googleads.V19.Enums.AndroidPrivacyInteractionTypeEnum.AndroidPrivacyInteractionType,
    json_name: "androidPrivacyInteractionType",
    enum: true,
    deprecated: false

  field :android_privacy_interaction_date, 4,
    type: :string,
    json_name: "androidPrivacyInteractionDate",
    deprecated: false

  field :android_privacy_network_type, 5,
    type: Google.Ads.Googleads.V19.Enums.AndroidPrivacyNetworkTypeEnum.AndroidPrivacyNetworkType,
    json_name: "androidPrivacyNetworkType",
    enum: true,
    deprecated: false

  field :shared_network_type_key, 6,
    type: :string,
    json_name: "sharedNetworkTypeKey",
    deprecated: false
end
