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

  defstruct [
    :display_name,
    :pronunciation,
    :short_description,
    :full_description,
    :small_logo_image,
    :large_banner_image,
    :developer_name,
    :developer_email,
    :terms_of_service_url,
    :voice,
    :voice_locale,
    :privacy_policy_url,
    :sample_invocations,
    :theme_customization
  ]

  field :display_name, 1, type: :string
  field :pronunciation, 2, type: :string
  field :short_description, 3, type: :string
  field :full_description, 4, type: :string
  field :small_logo_image, 5, type: :string
  field :large_banner_image, 6, type: :string
  field :developer_name, 7, type: :string
  field :developer_email, 8, type: :string
  field :terms_of_service_url, 9, type: :string
  field :voice, 10, type: :string
  field :voice_locale, 14, type: :string
  field :privacy_policy_url, 11, type: :string
  field :sample_invocations, 12, repeated: true, type: :string
  field :theme_customization, 13, type: Google.Actions.Sdk.V2.ThemeCustomization
end
