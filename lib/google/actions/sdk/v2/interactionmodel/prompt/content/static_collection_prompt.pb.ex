defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt.CollectionItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          title: String.t(),
          description: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil
        }

  defstruct key: "",
            title: "",
            description: "",
            image: nil

  field :key, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :image, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt,
    deprecated: false
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          items: [
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt.CollectionItem.t()
          ],
          image_fill:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill.t()
        }

  defstruct title: "",
            subtitle: "",
            items: [],
            image_fill: :UNSPECIFIED

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false

  field :items, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCollectionPrompt.CollectionItem,
    deprecated: false

  field :image_fill, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill,
    json_name: "imageFill",
    enum: true,
    deprecated: false
end
