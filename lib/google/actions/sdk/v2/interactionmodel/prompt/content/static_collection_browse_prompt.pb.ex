defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.CollectionBrowseItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :footer, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt

  field :open_uri_action, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl,
    json_name: "openUriAction",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionBrowsePrompt.CollectionBrowseItem

  field :image_fill, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill,
    json_name: "imageFill",
    enum: true
end