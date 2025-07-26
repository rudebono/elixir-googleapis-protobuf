defmodule Google.Actions.Sdk.V2.ThemeCustomization.ImageCornerStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :IMAGE_CORNER_STYLE_UNSPECIFIED, 0
  field :CURVED, 1
  field :ANGLED, 2
end

defmodule Google.Actions.Sdk.V2.ThemeCustomization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :background_color, 1, type: :string, json_name: "backgroundColor"
  field :primary_color, 2, type: :string, json_name: "primaryColor"
  field :font_family, 3, type: :string, json_name: "fontFamily"

  field :image_corner_style, 4,
    type: Google.Actions.Sdk.V2.ThemeCustomization.ImageCornerStyle,
    json_name: "imageCornerStyle",
    enum: true

  field :landscape_background_image, 5, type: :string, json_name: "landscapeBackgroundImage"
  field :portrait_background_image, 6, type: :string, json_name: "portraitBackgroundImage"
end
