defmodule Google.Chat.V1.WidgetMarkup.Icon do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ICON_UNSPECIFIED, 0
  field :AIRPLANE, 1
  field :BOOKMARK, 26
  field :BUS, 25
  field :CAR, 9
  field :CLOCK, 2
  field :CONFIRMATION_NUMBER_ICON, 12
  field :DOLLAR, 14
  field :DESCRIPTION, 27
  field :EMAIL, 10
  field :EVENT_PERFORMER, 20
  field :EVENT_SEAT, 21
  field :FLIGHT_ARRIVAL, 16
  field :FLIGHT_DEPARTURE, 15
  field :HOTEL, 6
  field :HOTEL_ROOM_TYPE, 17
  field :INVITE, 19
  field :MAP_PIN, 3
  field :MEMBERSHIP, 24
  field :MULTIPLE_PEOPLE, 18
  field :OFFER, 30
  field :PERSON, 11
  field :PHONE, 13
  field :RESTAURANT_ICON, 7
  field :SHOPPING_CART, 8
  field :STAR, 5
  field :STORE, 22
  field :TICKET, 4
  field :TRAIN, 23
  field :VIDEO_CAMERA, 28
  field :VIDEO_PLAY, 29
end

defmodule Google.Chat.V1.WidgetMarkup.TextParagraph do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, type: :string
end

defmodule Google.Chat.V1.WidgetMarkup.Button do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :type, 0

  field :text_button, 1,
    type: Google.Chat.V1.WidgetMarkup.TextButton,
    json_name: "textButton",
    oneof: 0

  field :image_button, 2,
    type: Google.Chat.V1.WidgetMarkup.ImageButton,
    json_name: "imageButton",
    oneof: 0
end

defmodule Google.Chat.V1.WidgetMarkup.TextButton do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, type: :string
  field :on_click, 2, type: Google.Chat.V1.WidgetMarkup.OnClick, json_name: "onClick"
end

defmodule Google.Chat.V1.WidgetMarkup.KeyValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :icons, 0

  oneof :control, 1

  field :icon, 1, type: Google.Chat.V1.WidgetMarkup.Icon, enum: true, oneof: 0
  field :icon_url, 2, type: :string, json_name: "iconUrl", oneof: 0
  field :top_label, 3, type: :string, json_name: "topLabel"
  field :content, 4, type: :string
  field :content_multiline, 9, type: :bool, json_name: "contentMultiline"
  field :bottom_label, 5, type: :string, json_name: "bottomLabel"
  field :on_click, 6, type: Google.Chat.V1.WidgetMarkup.OnClick, json_name: "onClick"
  field :button, 7, type: Google.Chat.V1.WidgetMarkup.Button, oneof: 1
end

defmodule Google.Chat.V1.WidgetMarkup.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :image_url, 1, type: :string, json_name: "imageUrl"
  field :on_click, 2, type: Google.Chat.V1.WidgetMarkup.OnClick, json_name: "onClick"
  field :aspect_ratio, 3, type: :double, json_name: "aspectRatio"
end

defmodule Google.Chat.V1.WidgetMarkup.ImageButton do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :icons, 0

  field :icon, 1, type: Google.Chat.V1.WidgetMarkup.Icon, enum: true, oneof: 0
  field :icon_url, 3, type: :string, json_name: "iconUrl", oneof: 0
  field :on_click, 2, type: Google.Chat.V1.WidgetMarkup.OnClick, json_name: "onClick"
  field :name, 4, type: :string
end

defmodule Google.Chat.V1.WidgetMarkup.OnClick do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data, 0

  field :action, 1, type: Google.Chat.V1.WidgetMarkup.FormAction, oneof: 0
  field :open_link, 2, type: Google.Chat.V1.WidgetMarkup.OpenLink, json_name: "openLink", oneof: 0
end

defmodule Google.Chat.V1.WidgetMarkup.OpenLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :url, 1, type: :string
end

defmodule Google.Chat.V1.WidgetMarkup.FormAction.ActionParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Chat.V1.WidgetMarkup.FormAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action_method_name, 1, type: :string, json_name: "actionMethodName"

  field :parameters, 2,
    repeated: true,
    type: Google.Chat.V1.WidgetMarkup.FormAction.ActionParameter
end

defmodule Google.Chat.V1.WidgetMarkup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data, 0

  field :text_paragraph, 1,
    type: Google.Chat.V1.WidgetMarkup.TextParagraph,
    json_name: "textParagraph",
    oneof: 0

  field :image, 2, type: Google.Chat.V1.WidgetMarkup.Image, oneof: 0
  field :key_value, 3, type: Google.Chat.V1.WidgetMarkup.KeyValue, json_name: "keyValue", oneof: 0
  field :buttons, 6, repeated: true, type: Google.Chat.V1.WidgetMarkup.Button
end