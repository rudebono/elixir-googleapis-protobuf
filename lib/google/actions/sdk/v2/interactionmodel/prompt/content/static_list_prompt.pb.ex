defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.ListItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          title: String.t(),
          description: String.t(),
          image: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt.t() | nil
        }

  defstruct [:key, :title, :description, :image]

  field :key, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :image, 4, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          items: [Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.ListItem.t()]
        }

  defstruct [:title, :subtitle, :items]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string

  field :items, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.ListItem

  def transform_module(), do: nil
end
