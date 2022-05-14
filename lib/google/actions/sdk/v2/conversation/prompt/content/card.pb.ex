defmodule Google.Actions.Sdk.V2.Conversation.Card do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :text, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Conversation.Image

  field :image_fill, 5,
    type: Google.Actions.Sdk.V2.Conversation.Image.ImageFill,
    json_name: "imageFill",
    enum: true

  field :button, 6, type: Google.Actions.Sdk.V2.Conversation.Link
end
