defmodule Google.Chat.V1.ContextualAddOnMarkup.Card.CardHeader.ImageStyle do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :IMAGE_STYLE_UNSPECIFIED, 0
  field :IMAGE, 1
  field :AVATAR, 2
end

defmodule Google.Chat.V1.ContextualAddOnMarkup.Card.CardHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string

  field :image_style, 3,
    type: Google.Chat.V1.ContextualAddOnMarkup.Card.CardHeader.ImageStyle,
    json_name: "imageStyle",
    enum: true

  field :image_url, 4, type: :string, json_name: "imageUrl"
end

defmodule Google.Chat.V1.ContextualAddOnMarkup.Card.Section do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :header, 1, type: :string
  field :widgets, 2, repeated: true, type: Google.Chat.V1.WidgetMarkup
end

defmodule Google.Chat.V1.ContextualAddOnMarkup.Card.CardAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_label, 1, type: :string, json_name: "actionLabel"
  field :on_click, 2, type: Google.Chat.V1.WidgetMarkup.OnClick, json_name: "onClick"
end

defmodule Google.Chat.V1.ContextualAddOnMarkup.Card do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :header, 1, type: Google.Chat.V1.ContextualAddOnMarkup.Card.CardHeader
  field :sections, 2, repeated: true, type: Google.Chat.V1.ContextualAddOnMarkup.Card.Section

  field :card_actions, 3,
    repeated: true,
    type: Google.Chat.V1.ContextualAddOnMarkup.Card.CardAction,
    json_name: "cardActions"

  field :name, 4, type: :string
end

defmodule Google.Chat.V1.ContextualAddOnMarkup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end