defmodule Google.Actions.Sdk.V2.Conversation.Card do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          text: String.t(),
          image: Google.Actions.Sdk.V2.Conversation.Image.t() | nil,
          image_fill: Google.Actions.Sdk.V2.Conversation.Image.ImageFill.t(),
          button: Google.Actions.Sdk.V2.Conversation.Link.t() | nil
        }

  defstruct title: "",
            subtitle: "",
            text: "",
            image: nil,
            image_fill: :UNSPECIFIED,
            button: nil

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
