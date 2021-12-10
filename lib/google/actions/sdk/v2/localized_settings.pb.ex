defmodule Google.Actions.Sdk.V2.LocalizedSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          pronunciation: String.t(),
          short_description: String.t(),
          full_description: String.t(),
          small_logo_image: String.t(),
          large_banner_image: String.t(),
          developer_name: String.t(),
          developer_email: String.t(),
          terms_of_service_url: String.t(),
          voice: String.t(),
          voice_locale: String.t(),
          privacy_policy_url: String.t(),
          sample_invocations: [String.t()],
          theme_customization: Google.Actions.Sdk.V2.ThemeCustomization.t() | nil
        }

  defstruct display_name: "",
            pronunciation: "",
            short_description: "",
            full_description: "",
            small_logo_image: "",
            large_banner_image: "",
            developer_name: "",
            developer_email: "",
            terms_of_service_url: "",
            voice: "",
            voice_locale: "",
            privacy_policy_url: "",
            sample_invocations: [],
            theme_customization: nil

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
