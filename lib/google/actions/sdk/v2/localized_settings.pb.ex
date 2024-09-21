defmodule Google.Actions.Sdk.V2.LocalizedSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :pronunciation, 2, type: :string, deprecated: false
  field :short_description, 3, type: :string, json_name: "shortDescription", deprecated: false
  field :full_description, 4, type: :string, json_name: "fullDescription", deprecated: false
  field :small_logo_image, 5, type: :string, json_name: "smallLogoImage", deprecated: false
  field :large_banner_image, 6, type: :string, json_name: "largeBannerImage", deprecated: false
  field :developer_name, 7, type: :string, json_name: "developerName", deprecated: false
  field :developer_email, 8, type: :string, json_name: "developerEmail", deprecated: false
  field :terms_of_service_url, 9, type: :string, json_name: "termsOfServiceUrl", deprecated: false
  field :voice, 10, type: :string, deprecated: false
  field :voice_locale, 14, type: :string, json_name: "voiceLocale", deprecated: false
  field :privacy_policy_url, 11, type: :string, json_name: "privacyPolicyUrl", deprecated: false

  field :sample_invocations, 12,
    repeated: true,
    type: :string,
    json_name: "sampleInvocations",
    deprecated: false

  field :theme_customization, 13,
    type: Google.Actions.Sdk.V2.ThemeCustomization,
    json_name: "themeCustomization",
    deprecated: false
end