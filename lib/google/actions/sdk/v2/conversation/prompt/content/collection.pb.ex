defmodule Google.Actions.Sdk.V2.Conversation.Collection.CollectionItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Conversation.Collection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string

  field :items, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Collection.CollectionItem

  field :image_fill, 4,
    type: Google.Actions.Sdk.V2.Conversation.Image.ImageFill,
    json_name: "imageFill",
    enum: true
end
