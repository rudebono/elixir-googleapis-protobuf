defmodule Google.Ads.Googleads.V16.Resources.KeywordThemeConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :country_code, 2,
    proto3_optional: true,
    type: :string,
    json_name: "countryCode",
    deprecated: false

  field :language_code, 3,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false

  field :display_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false
end