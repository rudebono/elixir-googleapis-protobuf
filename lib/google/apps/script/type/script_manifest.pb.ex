defmodule Google.Apps.Script.Type.HttpAuthorizationHeader do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HTTP_AUTHORIZATION_HEADER_UNSPECIFIED
          | :SYSTEM_ID_TOKEN
          | :USER_ID_TOKEN
          | :NONE

  field :HTTP_AUTHORIZATION_HEADER_UNSPECIFIED, 0
  field :SYSTEM_ID_TOKEN, 1
  field :USER_ID_TOKEN, 2
  field :NONE, 3
end
defmodule Google.Apps.Script.Type.CommonAddOnManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          logo_url: String.t(),
          layout_properties: Google.Apps.Script.Type.LayoutProperties.t() | nil,
          add_on_widget_set: Google.Apps.Script.Type.AddOnWidgetSet.t() | nil,
          use_locale_from_app: boolean,
          homepage_trigger: Google.Apps.Script.Type.HomepageExtensionPoint.t() | nil,
          universal_actions: [Google.Apps.Script.Type.UniversalActionExtensionPoint.t()],
          open_link_url_prefixes: Google.Protobuf.ListValue.t() | nil
        }

  defstruct name: "",
            logo_url: "",
            layout_properties: nil,
            add_on_widget_set: nil,
            use_locale_from_app: false,
            homepage_trigger: nil,
            universal_actions: [],
            open_link_url_prefixes: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_color: String.t(),
          secondary_color: String.t()
        }

  defstruct primary_color: "",
            secondary_color: ""

  field :primary_color, 1, type: :string, json_name: "primaryColor"
  field :secondary_color, 2, type: :string, json_name: "secondaryColor"
end
defmodule Google.Apps.Script.Type.HttpOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_header: Google.Apps.Script.Type.HttpAuthorizationHeader.t()
        }

  defstruct authorization_header: :HTTP_AUTHORIZATION_HEADER_UNSPECIFIED

  field :authorization_header, 1,
    type: Google.Apps.Script.Type.HttpAuthorizationHeader,
    json_name: "authorizationHeader",
    enum: true
end
