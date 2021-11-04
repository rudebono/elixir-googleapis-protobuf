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

  defstruct [:title, :subtitle, :text, :image, :image_fill, :button]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :text, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt

  field :image_fill, 5,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.ImageFill,
    enum: true,
    json_name: "imageFill"

  field :button, 6, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt

  def transform_module(), do: nil
end
