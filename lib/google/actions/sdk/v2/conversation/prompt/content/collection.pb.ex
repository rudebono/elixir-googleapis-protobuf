defmodule Google.Actions.Sdk.V2.Conversation.Collection.CollectionItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct [:key]

  field :key, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.Collection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          items: [Google.Actions.Sdk.V2.Conversation.Collection.CollectionItem.t()],
          image_fill: Google.Actions.Sdk.V2.Conversation.Image.ImageFill.t()
        }

  defstruct [:title, :subtitle, :items, :image_fill]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string

  field :items, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Collection.CollectionItem

  field :image_fill, 4,
    type: Google.Actions.Sdk.V2.Conversation.Image.ImageFill,
    enum: true,
    json_name: "imageFill"

  def transform_module(), do: nil
end
