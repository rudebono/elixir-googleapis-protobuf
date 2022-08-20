defmodule Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.PhoneNumber do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :phone_number, 1, proto3_optional: true, type: :string, json_name: "phoneNumber"
  field :country_code, 2, proto3_optional: true, type: :string, json_name: "countryCode"
end

defmodule Google.Ads.Googleads.V10.Resources.SmartCampaignSetting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :business_setting, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :phone_number, 3,
    type: Google.Ads.Googleads.V10.Resources.SmartCampaignSetting.PhoneNumber,
    json_name: "phoneNumber"

  field :final_url, 4, type: :string, json_name: "finalUrl"
  field :advertising_language_code, 7, type: :string, json_name: "advertisingLanguageCode"
  field :business_name, 5, type: :string, json_name: "businessName", oneof: 0
  field :business_location_id, 6, type: :int64, json_name: "businessLocationId", oneof: 0
end