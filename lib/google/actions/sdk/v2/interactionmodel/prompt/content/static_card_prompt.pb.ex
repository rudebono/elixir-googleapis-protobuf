defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCardPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false
  field :text, 3, type: :string, deprecated: false

  field :image, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt,
    deprecated: false

  field :image_fill, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill,
    json_name: "imageFill",
    enum: true,
    deprecated: false

  field :button, 6,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt,
    deprecated: false
end