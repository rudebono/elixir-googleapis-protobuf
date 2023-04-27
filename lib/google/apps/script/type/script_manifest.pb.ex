defmodule Google.Apps.Script.Type.HttpAuthorizationHeader do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HTTP_AUTHORIZATION_HEADER_UNSPECIFIED, 0
  field :SYSTEM_ID_TOKEN, 1
  field :USER_ID_TOKEN, 2
  field :NONE, 3
end

defmodule Google.Apps.Script.Type.CommonAddOnManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :logo_url, 2, type: :string, json_name: "logoUrl"

  field :layout_properties, 3,
    type: Google.Apps.Script.Type.LayoutProperties,
    json_name: "layoutProperties"

  field :add_on_widget_set, 4,
    type: Google.Apps.Script.Type.AddOnWidgetSet,
    json_name: "addOnWidgetSet"

  field :use_locale_from_app, 5, type: :bool, json_name: "useLocaleFromApp"

  field :homepage_trigger, 6,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :universal_actions, 7,
    repeated: true,
    type: Google.Apps.Script.Type.UniversalActionExtensionPoint,
    json_name: "universalActions"

  field :open_link_url_prefixes, 8,
    type: Google.Protobuf.ListValue,
    json_name: "openLinkUrlPrefixes"
end

defmodule Google.Apps.Script.Type.LayoutProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :primary_color, 1, type: :string, json_name: "primaryColor"
  field :secondary_color, 2, type: :string, json_name: "secondaryColor"
end

defmodule Google.Apps.Script.Type.HttpOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :authorization_header, 1,
    type: Google.Apps.Script.Type.HttpAuthorizationHeader,
    json_name: "authorizationHeader",
    enum: true
end