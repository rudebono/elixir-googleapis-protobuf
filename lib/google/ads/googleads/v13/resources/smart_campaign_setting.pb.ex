defmodule Google.Ads.Googleads.V13.Resources.SmartCampaignSetting.PhoneNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phone_number, 1, proto3_optional: true, type: :string, json_name: "phoneNumber"
  field :country_code, 2, proto3_optional: true, type: :string, json_name: "countryCode"
end

defmodule Google.Ads.Googleads.V13.Resources.SmartCampaignSetting.AdOptimizedBusinessProfileSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :include_lead_form, 1, proto3_optional: true, type: :bool, json_name: "includeLeadForm"
end

defmodule Google.Ads.Googleads.V13.Resources.SmartCampaignSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :landing_page, 0

  oneof :business_setting, 1

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :phone_number, 3,
    type: Google.Ads.Googleads.V13.Resources.SmartCampaignSetting.PhoneNumber,
    json_name: "phoneNumber"

  field :advertising_language_code, 7, type: :string, json_name: "advertisingLanguageCode"
  field :final_url, 8, type: :string, json_name: "finalUrl", oneof: 0

  field :ad_optimized_business_profile_setting, 9,
    type:
      Google.Ads.Googleads.V13.Resources.SmartCampaignSetting.AdOptimizedBusinessProfileSetting,
    json_name: "adOptimizedBusinessProfileSetting",
    oneof: 0

  field :business_name, 5, type: :string, json_name: "businessName", oneof: 1

  field :business_profile_location, 10,
    type: :string,
    json_name: "businessProfileLocation",
    oneof: 1
end