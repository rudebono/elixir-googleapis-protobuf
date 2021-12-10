defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticCardPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          text: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil,
          image_fill:
            Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill.t(),
          button: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt.t() | nil
        }

  defstruct title: "",
            subtitle: "",
            text: "",
            image: nil,
            image_fill: :UNSPECIFIED,
            button: nil

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
